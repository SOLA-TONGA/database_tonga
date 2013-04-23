-- Script run time: 90 seconds approx.


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
UPDATE lease.lease_detail SET sola_island = 'NiuaFo''ou' WHERE lease_island = 'Niuafo''ou'; 

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
UPDATE lease.lease_detail SET sola_town = TRIM(lease_town); 
UPDATE lease.lease_detail SET sola_town = TRIM(regexp_replace(lease_town, '"', '''', 'g'));
UPDATE lease.lease_detail SET sola_town = TRIM(regexp_replace(lease_town, 'Is|Is.|Island', 'Island', 'g'));
UPDATE lease.lease_detail SET sola_town = TRIM(regexp_replace(lease_town, ',.*|Vv|/.*|\(.*', '', 'g'));

SELECT lease_town, SUBSTRING(UPPER(lease_town), 1, 1) || SUBSTRING(LOWER(lease_town),2, LENGTH(lease_town)) from lease.lease_detail   
WHERE (UPPER(lease_town) = lease_town OR lease_town = LOWER(lease_town));
 
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
UPDATE lease.lease_detail SET lease_exp_date = NULL WHERE lease_exp_date = 'dd/mm/yyyy';
UPDATE lease.lease_detail SET lease_exp_date = '1/03/2058' WHERE lease_exp_date = '29/02/2058';
UPDATE lease.lease_detail SET lease_exp_date = '20/05/2042' WHERE lease_exp_date = '205/2042';
UPDATE lease.lease_detail SET lease_exp_date = '16/09/2052' WHERE lease_exp_date = '16/019/2052';
UPDATE lease.lease_detail SET lease_exp_date = '3/01/2024' WHERE lease_exp_date = '31/4/2024';
UPDATE lease.lease_detail SET lease_exp_date = '13/10/2031' WHERE lease_exp_date = '13/10/13/1'; --Check with Sione Lease 7656
UPDATE lease.lease_detail SET lease_exp_date = '30/11/2029' WHERE lease_exp_date = '31/11/2029';

-- Compare dates to determine current and expire lease.
DELETE FROM administrative.ba_unit WHERE type_code = 'leasedUnit';
INSERT INTO administrative.ba_unit (id, name, name_firstpart, name_lastpart, type_code, status_code, change_user)
SELECT sola_ba_unit_id, lease_for, lease_number, '', 'leasedUnit', 
	(SELECT (CASE WHEN lease_exp_date IS NULL OR now() > CAST(lease_exp_date AS DATE) THEN 'historic' ELSE 'current' END)), 'migration'
FROM lease.lease_detail;

-- Create relationship between towns and lease
INSERT INTO administrative.ba_unit_rel_type(code, display_value, description, status)
VALUES ('town','town','town','c');

INSERT INTO administrative.required_relationship_baunit(from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
SELECT t.id, d.sola_ba_unit_id, 'town', 'migration' FROM lease.town t, lease.lease_detail d
WHERE t.name = d.sola_town;

-- Create lessee and lessor parties

-- Add kings and nobles party type
-- party type: natural = Other, non-natural = Government
DELETE FROM party.party;
INSERT INTO party.party_type (code, display_value, status)
SELECT 'noble', 'Noble', 'c' WHERE NOT EXISTS (SELECT code FROM party.party_type where code = 'noble');
INSERT INTO party.party_type (code, display_value, status)
SELECT 'king', 'King', 'c' WHERE NOT EXISTS (SELECT code FROM party.party_type where code = 'king');


UPDATE lease.lease_detail SET lessor_estate = 'Other' WHERE lessor_estate = 'other';
UPDATE lease.lease_detail SET lessor_estate = 'Noble' WHERE lessor_estate = 'Nobles';

INSERT INTO party.party (id, type_code, name)
SELECT sola_lessee_id, 'naturalPerson',lessee_name FROM lease.lease_detail;

INSERT INTO party.party (id, type_code, name)
SELECT d.sola_lessor_id, 
(CASE d.lessor_estate WHEN 'Government' THEN 'nonNaturalPerson' WHEN 'Other' THEN 'naturalPerson' WHEN 'Noble' THEN 'noble' WHEN 'King' THEN 'king' ELSE d.lessor_estate END), 
d.lessor_name FROM lease.lease_detail d;



INSERT INTO transaction.transaction(id, status_code, approval_datetime, change_user) 
SELECT 'migration', 'approved', now(), 'migration' WHERE NOT EXISTS 
(SELECT id FROM transaction.transaction WHERE id = 'migration');

DELETE FROM administrative.rrr; 
DELETE FROM administrative.rrr_share;
DELETE FROM administrative.party_for_rrr;
INSERT INTO administrative.rrr (id, ba_unit_id, nr, type_code, status_code, is_primary,
transaction_id, registration_date, expiration_date, amount, due_date, change_user)
SELECT sola_rrr_id, sola_ba_unit_id, lease_number, 'lease', 
CASE WHEN lease_exp_date IS NULL OR now() > CAST(lease_exp_date AS DATE) THEN 'historic' ELSE 'current' END, 
't', 'migration', safe_cast(lease_reg_date, null::date), safe_cast(lease_exp_date, null::date), 
safe_cast(lease_rental, null::numeric(29,2)), safe_cast(lease_payment_date, null::date), 'migration'
FROM lease.lease_detail;

INSERT INTO administrative.party_for_rrr(rrr_id, party_id)
SELECT sola_rrr_id, sola_lessee_id
FROM lease.lease_detail; 



INSERT INTO administrative.rrr (id, ba_unit_id, nr, type_code, status_code, is_primary,
transaction_id, registration_date, expiration_date, change_user)
SELECT sola_owner_rrr_id, sola_ba_unit_id, lease_number, 'ownership', 
CASE WHEN lease_exp_date IS NULL OR now() > CAST(lease_exp_date AS DATE) THEN 'historic' ELSE 'current' END, 
't', 'migration', safe_cast(lease_reg_date, null::date), safe_cast(lease_exp_date, null::date), 'migration'
FROM lease.lease_detail;

INSERT INTO administrative.rrr_share (rrr_id, id, nominator, denominator)
SELECT sola_owner_rrr_id, uuid_generate_v1(), 1, 1
FROM lease.lease_detail; 

INSERT INTO administrative.party_for_rrr(rrr_id, party_id, share_id)
SELECT sola_owner_rrr_id, sola_lessor_id, s.id
FROM lease.lease_detail, administrative.rrr_share s
WHERE s.rrr_id = sola_owner_rrr_id; 


-- Cast the msq to metres
UPDATE lease.lease_location 
SET sola_area = safe_cast(TRIM(regexp_replace(lease_area, 'msq', '', 'g')), null::NUMERIC(19,2))
WHERE lease_area LIKE '%msq'; 

-- Cast ha to metres
UPDATE lease.lease_location 
SET sola_area = safe_cast(TRIM(regexp_replace(lease_area, 'ha', '', 'g')), null::NUMERIC(19,2))*10000
WHERE lease_area LIKE '%ha'; 

-- Cast Imperial Area to metres
--...

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


