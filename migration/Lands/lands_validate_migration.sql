-- Script run time <1s

-- Run the migration scripts in the following order...
-- 1) lands_prep_migration_tables.sql
-- 2) lands_migration.sql
-- 3) lands_validate_migration.sql
-- 4) lease_prep_migration_tables.sql
-- 5) lease_migration.sql
-- 6) lease_validate_migration.sql
-- 7) mortgage_prep_migration_tables.sql
-- 8) mortgage_migration.sql
-- 9) mortgage_validate_migration.sql

-- Create table to hold validation messages
DROP TABLE IF EXISTS lands.validation;
CREATE TABLE lands.validation
(
	code character varying(40),
	message character varying(255),
	item_num character varying(40)
);



-- Deed duplicated
INSERT INTO lands.validation (code, message, item_num)
SELECT 'DUPLICATE DEED', 'Deed has duplicate deed number. Check the deeds to ensure the details are correct. Deed "' || 
d_num || '" duplicated by reg_deed_grant records "' || string_agg(id::VARCHAR(40), ', ') || '"', null
FROM lands.reg_deed_grant
WHERE dup = true
GROUP BY d_num;

-- Allotements with an invalid deed number
INSERT INTO lands.validation (code, message, item_num)
SELECT 'INVALID DEED NUM', 'Deed number is not of the form <book>/<page>. Deed "' || 
d_num || '", reg_deed_grant id: "' || id::VARCHAR(40) || '"', null
FROM lands.reg_deed_grant
WHERE array_length(regexp_split_to_array (d_num, '/'), 1) != 2;

-- Allotments with no registration date
INSERT INTO lands.validation (code, message, item_num)
SELECT 'NO REG DATE', 'Registration date for deed "' || 
deed_num || '" could not be determined. reg_deed_grant id: "' || id::VARCHAR(40) || '"', null
FROM lands.deed
WHERE reg_date IS NULL;

-- Allotments with no town
INSERT INTO lands.validation (code, message, item_num)
SELECT 'NO TOWN', 'Town for deed "' || 
deed_num || '" could not be determined. reg_deed_grant id: "' || id::VARCHAR(40) || '"', null
FROM lands.deed d
WHERE NOT EXISTS (SELECT from_ba_unit_id FROM administrative.required_relationship_baunit
				  WHERE to_ba_unit_id = d.sola_ba_unit_id
				  AND relation_code = 'town');
				  
				  
-- Deed with more than one registered land holder
INSERT INTO lands.validation (code, message, item_num)
SELECT 'MULTIPLE REG LANDHOLDER', 'Deed "' || 
deed_num || '" has multiple registered landholders. reg_landholder ids: "' || string_agg(id::VARCHAR(40), ', ') || '"', null
FROM lands.holder
WHERE dup AND holder_type = 'REG'
GROUP BY deed_num;

-- Deed with more than one widower
INSERT INTO lands.validation (code, message, item_num)
SELECT 'MULTIPLE WIDOWERS', 'Deed "' || 
deed_num || '" has multiple WIDOWERS. reg_landholder ids: "' || string_agg(id::VARCHAR(40), ', ') || '"', null
FROM lands.holder
WHERE dup AND holder_type = 'WIDOWER'
GROUP BY deed_num;

-- No date for when the land holder was registered. 
INSERT INTO lands.validation (code, message, item_num)
SELECT 'NO REG DATE FOR HOLDER', 'Deed "' || 
deed_num || '" has no date to indicate when the land holder(s) were registered . reg_landholder ids: "' || string_agg(id::VARCHAR(40), ', ') || '"', null
FROM lands.holder
WHERE dup = FALSE AND reg_date IS NULL
GROUP BY deed_num;

-- Checks if the deed area is valid
INSERT INTO lands.validation (code, message, item_num)
SELECT 'NO DEED AREA', 'Deed "' || 
deed_num || '" does not have a valid area . reg_landholder id: "' || id::VARCHAR(40) || '"', null
FROM lands.deed
WHERE sola_area IS NULL;

-- Deeds with no survey plan details
INSERT INTO lands.validation (code, message, item_num)
SELECT 'NO SURVEY DETAILS', 'Deed "' || 
deed_num || '" does not have any survey plan and/or lot information . reg_deed_grant id: "' || id::VARCHAR(40) || '"', null
FROM lands.deed
WHERE plan_type IS NULL;

-- Deed with survey plan details that appear invalid. All Township plans are reported as it is not clear what should be used
-- as the township name. 
INSERT INTO lands.validation (code, message, item_num)
SELECT 'INVALID SURVEY DETAILS', 'Deed "' || 
deed_num || '" does not have valid survey plan and/or lot information . reg_deed_grant id: "' || id::VARCHAR(40) || '"', null
FROM lands.deed
WHERE plan_type IN ('-', 'TOWNSHIP');

-- Identifies duplicate lot/plans for the allotments
INSERT INTO lease.validation (code, message, item_num)
SELECT 'DUPLICATE LOT/PLAN DEED', 'The same lot and plan is used for multiple leases and/or allotments. Check the allotments to ensure the lot and plan reference is correct. "' || 
co.name_firstpart || ' ' || co.name_lastpart || '" duplicated on allotments "' || string_agg(b.name, ', ') || '"', null
FROM administrative.ba_unit_contains_spatial_unit bas, 
     administrative.ba_unit b, 
	 cadastre.cadastre_object co
WHERE bas.spatial_unit_id = co.id
AND   b.id = bas.ba_unit_id
AND   b.type_code != 'leasedUnit'
AND   (SELECT count(bas2.ba_unit_id)
       FROM administrative.ba_unit_contains_spatial_unit bas2
	   WHERE bas2.spatial_unit_id = co.id) > 1
GROUP BY co.name_firstpart, co.name_lastpart;
