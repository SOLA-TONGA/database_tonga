
-- Remove columns if already exist on the lrs.title estate table. 
ALTER TABLE lease.lease_detail 
DROP COLUMN IF EXISTS sola_rrr_id,
DROP COLUMN IF EXISTS sola_town,
DROP COLUMN IF EXISTS sola_island,
DROP COLUMN IF EXISTS sola_ba_unit_id,
DROP COLUMN IF EXISTS sola_lessee_id,
DROP COLUMN IF EXISTS sola_lessor_id;

-- Add the sequence number on the title estate table to use for the primary rrrs
ALTER TABLE lease.lease_detail
ADD sola_rrr_id VARCHAR(40) DEFAULT uuid_generate_v1(),
ADD sola_ba_unit_id VARCHAR(40) DEFAULT  uuid_generate_v1(),
ADD sola_town VARCHAR(255),
ADD sola_island VARCHAR(255);
ADD sola_lessee_id VARCHAR (40) DEFAULT uuid_generate_v1(),
ADD sola_lessor_id VARCHAR(40) DEFAULT uuid_generate_v1();

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
SELECT id, name || '/' || 'Island', name , 'Island', 'administrativeUnit', 'current', 'migration'
FROM lease.island;

-- Clean the Town Names
UPDATE lease.lease_detail SET sola_town = TRIM(lease_town); 
UPDATE lease.lease_detail SET sola_town = TRIM(regexp_replace(lease_town, '"', '''', 'g'));
UPDATE lease.lease_detail SET sola_town = TRIM(regexp_replace(lease_town, 'Is|Is.|Island', 'Island', 'g'));
UPDATE lease.lease_detail SET sola_town = TRIM(regexp_replace(lease_town, ',.*|Vv|/.*|\(.*', '', 'g'));

SELECT lease_town, SUBSTRING(UPPER(lease_town), 1, 1) || SUBSTRING(LOWER(lease_town),2, LENGTH(lease_town)) from lease.lease_detail   
WHERE (UPPER(lease_town) = lease_town OR lease_town = LOWER(lease_town));
 
-- Alter firstpart of town name
DROP VIEW IF EXISTS  application.systematic_registration_certificates;
DROP VIEW IF EXISTS administrative.sys_reg_owner_name;
DROP VIEW IF EXISTS administrative.systematic_registration_listing;
DROP VIEW IF EXISTS administrative.sys_reg_state_land;
ALTER TABLE administrative.ba_unit ALTER COLUMN name_firstpart TYPE VARCHAR(50);

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
SELECT id, name || '/' || 'Town', name, 'Town', 'administrativeUnit', 'current', 'migration'
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
SELECT sola_ba_unit_id, lease_number, lease_number, '', 'leasedUnit', 
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
DELETE FROM party.party_type WHERE code = 'noble';
DELETE FROM party.party_type WHERE code = 'king';
DELETE FROM party.party WHERE type_code = 'naturalPerson';
INSERT INTO party.party_type (code, display_value, status)
VALUES('noble', 'Noble', 'c');
INSERT INTO party.party_type (code, display_value, status)
VALUES('king', 'King', 'c');

UPDATE lease.lease_detail SET lessor_estate = 'Other' WHERE lessor_estate = 'other';
UPDATE lease.lease_detail SET lessor_estate = 'Noble' WHERE lessor_estate = 'Nobles';
INSERT INTO party.party (id, type_code, name)
SELECT sola_lessor_id, 'naturalPerson',lessee_name, lessor_estate FROM lease.lease_detail;

INSERT INTO party.party (id, type_code, name)
SELECT d.sola_lessee_id, 
(CASE d.lessor_estate WHEN 'Government' THEN 'nonNaturalPerson' WHEN 'Other' THEN 'naturalPerson' WHEN 'Noble' THEN 'noble' WHEN 'King' THEN 'king' ELSE d.lessor_estate END), 
d.lessee_name FROM lease.lease_detail d;



