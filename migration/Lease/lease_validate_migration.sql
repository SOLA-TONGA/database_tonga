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
DROP TABLE IF EXISTS lease.validation;
CREATE TABLE lease.validation
(
	code character varying(40),
	message character varying(4000),
	item_num character varying(40)
);


-- Check the number of islands is valid
INSERT INTO lease.validation (code, message)
SELECT 'INVALID ISLAND COUNT', 'Should be 6 islands - check all islands are valid and none are missing.'
WHERE (SELECT COUNT(*) FROM lease.island) != 6;

-- Check for towns that are not correctly specified
INSERT INTO lease.validation (code, message, item_num)
SELECT 'INVALID TOWN', 'Town name ' || sola_town || ' is not a valid town name and must be fixed', "ID"
FROM lease.lease_detail WHERE sola_town in ('Expire', 'Invalid', 'Residential', 'Resort', 'Valid', '');

-- Check of leases with invalid or missing lease registration dates
INSERT INTO lease.validation (code, message, item_num)
SELECT 'INVALID LEASE REGISTRATION DATE', 'Lease ' || l.lease_number || ' has an invalid or missing lease registration date of "' || l.lease_reg_date || '"', l."ID"
FROM lease.lease_detail l, administrative.rrr r
WHERE l.sola_rrr_id = r.id AND r.registration_date IS NULL;

-- Check of leases with invalid or missing lease expiry dates
INSERT INTO lease.validation (code, message, item_num)
SELECT 'INVALID LEASE EXPIRE DATE', 'Lease ' || l.lease_number || ' has an invalid or missing lease expiry date', l."ID"
FROM lease.lease_detail l, administrative.rrr r
WHERE l.sola_rrr_id = r.id AND r.expiration_date IS NULL;

-- Verify the rental amounts are valid numbers
INSERT INTO lease.validation (code, message, item_num)
SELECT 'INVALID LEASE RENTAL AMOUNT', 'Lease ' || l.lease_number || ' has an invalid or missing rental amount of "' || l.lease_rental || '"', l."ID"
FROM lease.lease_detail l, administrative.rrr r
WHERE l.sola_rrr_id = r.id AND r.amount IS NULL;

-- Verify the next payment date for rental is valid and not significantly in the past
INSERT INTO lease.validation (code, message, item_num)
SELECT 'INVALID DUE DATE', 'Lease ' || l.lease_number || ' has an invalid or missing lease payment date of "' || l.lease_payment_date || '"', l."ID"
FROM lease.lease_detail l, administrative.rrr r
WHERE l.sola_rrr_id = r.id AND (r.due_date IS NULL OR r.due_date < '1990-01-01');

-- Checks if the area for the lot is valid
INSERT INTO lease.validation (code, message, item_num)
SELECT 'INVALID LEASE AREA', 'Lease ' || l.lease_number || ' has an invalid or missing area. "' || l.lease_area || '"', l.lease_id
FROM lease.lease_location l
WHERE sola_area IS NULL;

-- Identifies duplicate leases
INSERT INTO lease.validation (code, message, item_num)
SELECT 'DUPLICATE LEASE', 'The lease number is duplicated. Check the leases and remove any duplicates. Lease Number "' || 
l.lease_number || '" duplicated on lease records "' || string_agg(l."ID"::VARCHAR(40), ', ') || '"', null
FROM lease.lease_detail l
WHERE dup = true
GROUP BY l.lease_number;

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

-- Identifies the duplicate lot/plans for the leases
INSERT INTO lease.validation (code, message, item_num)
SELECT 'DUPLICATE LOT/PLAN LEASE', 'The same lot and plan is used for multiple leases and/or allotments. Check the leases to ensure the lot and plan reference is correct. "' || 
co.name_firstpart || ' ' || co.name_lastpart || '" duplicated on allotments "' || string_agg(b.name_firstpart, ', ') || '"', null
FROM administrative.ba_unit_contains_spatial_unit bas, 
     administrative.ba_unit b, 
	 cadastre.cadastre_object co
WHERE bas.spatial_unit_id = co.id
AND   b.id = bas.ba_unit_id
AND   b.type_code = 'leasedUnit'
AND   (SELECT count(bas2.ba_unit_id)
       FROM administrative.ba_unit_contains_spatial_unit bas2
	   WHERE bas2.spatial_unit_id = co.id) > 1
GROUP BY co.name_firstpart, co.name_lastpart;


