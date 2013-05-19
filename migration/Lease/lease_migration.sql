-- Script run time: 150 seconds approx.


-- Function that can be used to return a default value (e.g. null) if it cannot
-- be cast to the anyelement type.
-- Example Usage; safe_cast (<column>, null::date)
create or replace function safe_cast(text,anyelement) 
returns anyelement 
language plpgsql as $$ 
begin 
    $0 := $1; 
    return $0; 
    exception when others then 
        return $2; 
end; $$;

-- Clean the Island Names
UPDATE lease.lease_detail SET sola_island = TRIM(lease_island); 
UPDATE lease.lease_detail SET sola_island = 'Tongatapu' WHERE lease_island = 'tongatapu'; 
UPDATE lease.lease_detail SET sola_island = 'Niuafo''ou' WHERE lease_island = 'NiuaFo''ou'; 

-- Load Islands as BA Units
DROP TABLE IF EXISTS lease.island;
CREATE TABLE lease.island
(
  id character varying(40) DEFAULT uuid_generate_v1(),
  name character varying(255)
 );

INSERT INTO lease.island (name) SELECT DISTINCT sola_island FROM lease.lease_detail;
DELETE FROM administrative.ba_unit WHERE name_lastpart = 'Island';
INSERT INTO administrative.ba_unit (id, name, name_firstpart, name_lastpart, type_code, status_code, change_user)
SELECT id, null, name , 'Island', 'administrativeUnit', 'current', 'migration'
FROM lease.island;

-- Clean the Town Names
-- Initialize town staging area from lease_town and remove any extra spaces 
UPDATE lease.lease_detail SET sola_town = TRIM(lease_town);
-- Remove any double qoutes and replace with single qoutes
UPDATE lease.lease_detail SET sola_town = TRIM(regexp_replace(sola_town, '"', '''', 'g'))
WHERE TRIM(regexp_replace(sola_town, '"', '''', 'g')) != sola_town;
-- Standardize Island text
UPDATE lease.lease_detail SET sola_town = TRIM(regexp_replace(sola_town, 'Is|Is.', 'Island', 'g'))
WHERE TRIM(regexp_replace(sola_town, 'Is|Is.', 'Island', 'g')) != sola_town;
-- Remove common island prefixes
UPDATE lease.lease_detail SET sola_town = TRIM(regexp_replace(sola_town, ',.*|Vv|/.*|\(.*', '', 'g'))
WHERE TRIM(regexp_replace(sola_town, ',.*|Vv|/.*|\(.*', '', 'g')) != sola_town;
-- Reset case on town name
UPDATE lease.lease_detail SET sola_town = SUBSTRING(UPPER(sola_town), 1, 1) || SUBSTRING(LOWER(sola_town),2, LENGTH(sola_town))   
WHERE (UPPER(sola_town) = sola_town OR  sola_town = LOWER(sola_town));
-- Fix invalid names
UPDATE lease.lease_detail SET sola_town = '''Utulau' WHERE sola_town = '''utulau';
UPDATE lease.lease_detail SET sola_town = 'Haveluloto' WHERE sola_town = 'Havelulloto';
UPDATE lease.lease_detail SET sola_town = 'Neiafu' WHERE sola_town = 'Neiafu tt';
UPDATE lease.lease_detail SET sola_town = 'Nga''unoho' WHERE sola_town = 'NGa''unoho';
UPDATE lease.lease_detail SET sola_town = 'Nualei Kolofo''ou' WHERE sola_town = 'Nualei - Kolofo''ou';
 
-- Load Towns as BA Units
DROP TABLE IF EXISTS lease.town;
CREATE TABLE lease.town
(
	id character varying(40) DEFAULT uuid_generate_v1(),
	name character varying(255)
);

INSERT INTO lease.town (name) SELECT DISTINCT sola_town FROM lease.lease_detail;
DELETE FROM administrative.ba_unit WHERE name_lastpart = 'Town';
INSERT INTO administrative.ba_unit (id, name, name_firstpart, name_lastpart, type_code, status_code, change_user)
SELECT id, null, name, 'Town', 'administrativeUnit', 'current', 'migration'
FROM lease.town;

-- Create relationship between islands and towns
INSERT INTO administrative.ba_unit_rel_type(code, display_value, description, status)
VALUES ('island','island','island','c');

INSERT INTO administrative.required_relationship_baunit(from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
SELECT DISTINCT i.id, t.id, 'island', 'migration' FROM lease.island i, lease.town t, lease.lease_detail d
WHERE i.name = d.sola_island AND t.name = d.sola_town;

-- Load lease
--UPDATE lease.lease_detail SET lease_exp_date = NULL WHERE lease_exp_date = 'dd/mm/yyyy';
--UPDATE lease.lease_detail SET lease_exp_date = '1/03/2058' WHERE lease_exp_date = '29/02/2058';
--UPDATE lease.lease_detail SET lease_exp_date = '20/05/2042' WHERE lease_exp_date = '205/2042';
--UPDATE lease.lease_detail SET lease_exp_date = '16/09/2052' WHERE lease_exp_date = '16/019/2052';
--UPDATE lease.lease_detail SET lease_exp_date = '3/01/2024' WHERE lease_exp_date = '31/4/2024';
--UPDATE lease.lease_detail SET lease_exp_date = '13/10/2031' WHERE lease_exp_date = '13/10/13/1'; --Check with Sione Lease 7656
--UPDATE lease.lease_detail SET lease_exp_date = '30/11/2029' WHERE lease_exp_date = '31/11/2029';


-- Mark all duplicate lease numbers
UPDATE lease.lease_detail SET dup = TRUE
WHERE lease_number in (
SELECT lease_number from lease.lease_detail GROUP BY lease_number having count(*) > 1)

-- Compare dates to determine current and expire lease.
DELETE FROM administrative.ba_unit WHERE type_code = 'leasedUnit';
INSERT INTO administrative.ba_unit (id, name, name_firstpart, name_lastpart, type_code, status_code, change_user)
SELECT sola_ba_unit_id, lease_for, lease_number, '', 'leasedUnit', 
	(SELECT (CASE WHEN safe_cast(lease_exp_date, null::date) IS NULL OR now() > safe_cast(lease_exp_date, null::date) THEN 'historic' ELSE 'current' END)), 'migration'
FROM lease.lease_detail
WHERE dup = FALSE;

-- Create relationship between towns and lease
INSERT INTO administrative.ba_unit_rel_type(code, display_value, description, status)
VALUES ('town','town','town','c');

INSERT INTO administrative.required_relationship_baunit(from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
SELECT t.id, d.sola_ba_unit_id, 'town', 'migration' FROM lease.town t, lease.lease_detail d
WHERE t.name = d.sola_town
AND EXISTS (SELECT id FROM administrative.ba_unit WHERE id = d.sola_ba_unit_id);

-- Create lessee and lessor parties

-- Add kings and nobles party type
-- party type: natural = Other, non-natural = Government
DELETE FROM party.party WHERE NOT EXISTS (SELECT id FROM application.application WHERE agent_id = party.party.id OR contact_person_id = party.party.id);
INSERT INTO party.party_type (code, display_value, status)
SELECT 'noble', 'Noble', 'c' WHERE NOT EXISTS (SELECT code FROM party.party_type where code = 'noble');
INSERT INTO party.party_type (code, display_value, status)
SELECT 'king', 'King', 'c' WHERE NOT EXISTS (SELECT code FROM party.party_type where code = 'king');


UPDATE lease.lease_detail SET lessor_estate = 'Other' WHERE lessor_estate = 'other';
UPDATE lease.lease_detail SET lessor_estate = 'Noble' WHERE lessor_estate = 'Nobles';

INSERT INTO party.party (id, type_code, name)
SELECT sola_lessee_id, 'naturalPerson',lessee_name FROM lease.lease_detail
WHERE EXISTS (SELECT id FROM administrative.ba_unit WHERE id = sola_ba_unit_id);

INSERT INTO party.party (id, type_code, name)
SELECT d.sola_lessor_id, 
(CASE d.lessor_estate WHEN 'Government' THEN 'nonNaturalPerson' WHEN 'Other' THEN 'naturalPerson' WHEN 'Noble' THEN 'noble' WHEN 'King' THEN 'king' ELSE d.lessor_estate END), 
d.lessor_name FROM lease.lease_detail d
WHERE EXISTS (SELECT id FROM administrative.ba_unit WHERE id = d.sola_ba_unit_id);



INSERT INTO transaction.transaction(id, status_code, approval_datetime, change_user) 
SELECT 'migration', 'approved', now(), 'migration' WHERE NOT EXISTS 
(SELECT id FROM transaction.transaction WHERE id = 'migration');

DELETE FROM administrative.rrr; 
DELETE FROM administrative.rrr_share;
DELETE FROM administrative.party_for_rrr;

-- Create the RRR for the lease and link this RRR to the lessor
INSERT INTO administrative.rrr (id, ba_unit_id, nr, type_code, status_code, is_primary,
transaction_id, registration_date, expiration_date, amount, due_date, change_user)
SELECT sola_rrr_id, sola_ba_unit_id, lease_number, 'lease', 
CASE WHEN safe_cast(lease_exp_date, null::date) IS NULL OR now() > safe_cast(lease_exp_date, null::date) THEN 'historic' ELSE 'current' END, 
't', 'migration', safe_cast(lease_reg_date, null::date), safe_cast(lease_exp_date, null::date), 
safe_cast(lease_rental, null::numeric(29,2)), safe_cast(lease_payment_date, null::date), 'migration'
FROM lease.lease_detail
WHERE EXISTS (SELECT id FROM administrative.ba_unit WHERE id = sola_ba_unit_id);

-- Link the Lessee to the lease RRR
INSERT INTO administrative.party_for_rrr(rrr_id, party_id)
SELECT sola_rrr_id, sola_lessee_id
FROM lease.lease_detail 
WHERE EXISTS (SELECT id FROM administrative.ba_unit WHERE id = sola_ba_unit_id);

-- Create the RRR for the owner of the land (i.e. leasee)
INSERT INTO administrative.rrr (id, ba_unit_id, nr, type_code, status_code, is_primary,
transaction_id, registration_date, expiration_date, change_user)
SELECT sola_owner_rrr_id, sola_ba_unit_id, lease_number, 'ownership', 
CASE WHEN lease_exp_date IS NULL OR now() > CAST(lease_exp_date AS DATE) THEN 'historic' ELSE 'current' END, 
't', 'migration', safe_cast(lease_reg_date, null::date), safe_cast(lease_exp_date, null::date), 'migration'
FROM lease.lease_detail
WHERE EXISTS (SELECT id FROM administrative.ba_unit WHERE id = sola_ba_unit_id);

-- Nearly all ownership shares in Tonga are 1/1. 
INSERT INTO administrative.rrr_share (rrr_id, id, nominator, denominator)
SELECT sola_owner_rrr_id, uuid_generate_v1(), 1, 1
FROM lease.lease_detail
WHERE EXISTS (SELECT id FROM administrative.ba_unit WHERE id = sola_ba_unit_id);

INSERT INTO administrative.party_for_rrr(rrr_id, party_id, share_id)
SELECT sola_owner_rrr_id, sola_lessor_id, s.id
FROM lease.lease_detail, administrative.rrr_share s
WHERE s.rrr_id = sola_owner_rrr_id
AND EXISTS (SELECT id FROM administrative.ba_unit WHERE id = sola_ba_unit_id);


-- Cast the msq to metres
UPDATE lease.lease_location 
SET sola_area = safe_cast(TRIM(regexp_replace(lease_area, 'msq', '', 'g')), null::NUMERIC(19,2))
WHERE lease_area LIKE '%msq'; 

-- Cast ha to metres
UPDATE lease.lease_location 
SET sola_area = safe_cast(TRIM(regexp_replace(lease_area, 'ha', '', 'g')), null::NUMERIC(19,2))*10000
WHERE lease_area LIKE '%ha'; 



-- *** Cast Imperial Area to metres
UPDATE lease.lease_location
SET imperial = lower(lease_area)
WHERE lease_area NOT LIKE '%msq' AND lease_area NOT LIKE '%ha';

-- Replace all pa and pp with p to indicate perches
UPDATE lease.lease_location SET imperial = TRIM(regexp_replace(imperial, 'pa|pp', 'p', 'g'))
WHERE TRIM(regexp_replace(imperial, 'pa|pp', 'p', 'g')) != imperial;

-- Extract the acreage - make those fields with invalid imperial measure with -1
UPDATE lease.lease_location
SET acre = safe_cast(TRIM(substring(imperial from '#"%#"a%' for '#')), -1::INT)
WHERE imperial IS NOT NULL AND imperial LIKE '%a%'; 

-- Extract the roods where an acre measure is given
UPDATE lease.lease_location
SET rood = safe_cast(TRIM(substring(imperial from '%a ?#"%#"r%' for '#')), -1::INT)
WHERE imperial IS NOT NULL AND imperial LIKE '%a%r%'; 

-- Extract the roods where no acre measure is given
UPDATE lease.lease_location
SET rood = safe_cast(TRIM(substring(imperial from '#"%#"r%' for '#')), -1::INT)
WHERE imperial IS NOT NULL AND imperial LIKE '%r%' AND imperial NOT LIKE '%a%'; 

-- Extract the perches where roods is specified
UPDATE lease.lease_location
SET perch = safe_cast(TRIM(substring(imperial from '%r ?#"%#"p' for '#')), -1::NUMERIC(19,2))
WHERE imperial IS NOT NULL AND imperial LIKE '%r%p%';

-- Extract the perches where acres are specified
UPDATE lease.lease_location
SET perch = safe_cast(TRIM(substring(imperial from '%a ?#"%#"p' for '#')), -1::NUMERIC(19,2))
WHERE imperial IS NOT NULL AND imperial LIKE '%a%p%' AND imperial NOT LIKE '%r%';

-- Extract the perches where no roods or acres are specified
UPDATE lease.lease_location
SET perch = safe_cast(TRIM(substring(imperial from '#"%#"p' for '#')), -1::NUMERIC(19,2))
WHERE imperial IS NOT NULL AND imperial LIKE '%p%' 
AND imperial NOT LIKE '%r%' AND imperial NOT LIKE '%a%'; 

-- Blank out any invalid imperial areas
UPDATE lease.lease_location
SET acre = NULL, 
rood = NULL,
perch = NULL
WHERE acre = -1 OR rood = -1 OR perch = -1
OR rood >= 4 OR perch >= 40;  

-- Set the new lease area
-- Set the new lease area
UPDATE lease.lease_location
SET sola_area = ROUND((COALESCE(acre, 0) * 4046.8564) -- 1 arce = 4046.8564 square metres
                   + (COALESCE(rood, 0) * 1011.7141) -- 4 roods in an acre
				   + (COALESCE(perch, 0) * 25.2929), 2) -- 40 perches in a rood
WHERE imperial IS NOT NULL; 

-- Remove any 0 areas
UPDATE lease.lease_location
SET sola_area = NULL
WHERE sola_area = 0; 


-- Upload the areas for each BA Unit
DELETE FROM administrative.ba_unit_area; 
INSERT INTO administrative.ba_unit_area (id, ba_unit_id, type_code, size, change_user)
SELECT uuid_generate_v1(), d.sola_ba_unit_id, 'officialArea', l.sola_area, 'migration'
FROM lease.lease_detail d, lease.lease_location l
WHERE d."ID" = l.lease_id
AND sola_area IS NOT NULL;



DELETE FROM cadastre.cadastre_object;
DELETE FROM cadastre.spatial_unit;
DELETE FROM administrative.ba_unit_contains_spatial_unit;

-- Mark the duplicate plan locations
UPDATE lease.lease_location 
SET dup = true
WHERE EXISTS (SELECT l.lease_id
FROM lease.lease_location l
WHERE l.lease_lot = lease.lease_location.lease_lot
AND l.lease_plan = lease.lease_location.lease_plan
AND l.lease_id != lease.lease_location.lease_id);

INSERT INTO cadastre.spatial_unit (id, level_id)
SELECT sola_co_id, 'lease' FROM lease.lease_location
WHERE dup = false;  

INSERT INTO cadastre.cadastre_object (id, name_firstpart, name_lastpart, status_code, transaction_id)
SELECT sola_co_id, lease_lot, lease_plan, CASE lease_status WHEN 'current' THEN 'current' ELSE 'historic' END, 'migration' 
FROM lease.lease_location
WHERE dup = false; 

INSERT INTO administrative.ba_unit_contains_spatial_unit (ba_unit_id, spatial_unit_id)
SELECT d.sola_ba_unit_id, l.sola_co_id
FROM lease.lease_detail d, lease.lease_location l
WHERE d."ID" = l.lease_id and l.dup = false;


