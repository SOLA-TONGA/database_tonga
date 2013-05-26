-- Script run time: 540 seconds (9 mins) approx.

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

-- *** Create migration support records
INSERT INTO transaction.transaction(id, status_code, approval_datetime, change_user) 
SELECT 'migration', 'approved', now(), 'migration' WHERE NOT EXISTS 
(SELECT id FROM transaction.transaction WHERE id = 'migration');

UPDATE lands.nobles SET sola_party_id = LOWER(noble_name); 

-- *** Process Nobles and the King *** 
INSERT INTO party.party (id, type_code, name, change_user)
SELECT sola_party_id, 'naturalPerson', noble_name, 'migration'
FROM lands.nobles
WHERE NOT EXISTS (SELECT id FROM party.party WHERE sola_party_id = id); 

INSERT INTO party.party_role (party_id, type_code, change_user)
SELECT sola_party_id, 'noble', 'migration'
FROM lands.nobles
WHERE NOT EXISTS (SELECT id FROM party.party_role WHERE sola_party_id = party_id AND type_code = 'noble'); 

INSERT INTO party.party (id, type_code, name, change_user)
SELECT 'king', 'naturalPerson', 'King', 'migration'
WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 'king');
INSERT INTO party.party_role (party_id, type_code, change_user)
SELECT 'king', 'king', 'migration'
WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 'king' AND type_code = 'king');


-- *** Create Islands ***
UPDATE lands.island_township SET sola_island_id = LOWER(TRIM(regexp_replace(island_name, '''', '', 'g'))); 

INSERT INTO administrative.ba_unit (id, name, name_firstpart, name_lastpart, type_code, status_code, change_user)
SELECT DISTINCT sola_island_id, island_name, island_name , 'Island', 'islandUnit', 'current', 'migration'
FROM lands.island_township
WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE id = sola_island_id); 

INSERT INTO administrative.ba_unit (id, name, name_firstpart, name_lastpart, type_code, status_code, change_user)
SELECT 'niuatoputapu', 'Niuatoputapu', 'Niuatoputapu' , 'Island', 'islandUnit', 'current', 'migration'
WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE id = 'niuatoputapu');

INSERT INTO administrative.ba_unit (id, name, name_firstpart, name_lastpart, type_code, status_code, change_user)
SELECT 'niuafoou', 'Niuafo''ou', 'Niuafo''ou' , 'Island', 'islandUnit', 'current', 'migration'
WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE id = 'niuafoou');


-- *** Standardise/clean towns and create ***
UPDATE lands.island_township SET sola_town = township_name; 

UPDATE lands.island_township SET sola_town = SUBSTRING(UPPER(township_name), 1, 1) || SUBSTRING(LOWER(township_name),2, LENGTH(township_name))   
WHERE (UPPER(township_name) = township_name OR  township_name = LOWER(township_name));

UPDATE lands.island_township SET sola_town = SUBSTRING(UPPER(township_name), 1, 2) || SUBSTRING(LOWER(township_name),3, LENGTH(township_name))   
WHERE SUBSTRING(township_name, 1, 1) = '''';

UPDATE lands.island_township SET sola_town = 'Matahau Ha''atoa'
WHERE township_name = 'MATAHAU HA''ATOA';

UPDATE lands.island_township SET sola_town_id = b.id
FROM administrative.ba_unit b
WHERE b.name_firstpart = sola_town
AND b.type_code = 'townUnit'; 

INSERT INTO administrative.ba_unit (id, name, name_firstpart, name_lastpart, type_code, status_code, change_user)
SELECT sola_town_id, sola_town, sola_town, 'Town', 'townUnit', 'current', 'migration'
FROM lands.island_township 
WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE id = sola_town_id);


-- *** Link islands and towns
INSERT INTO administrative.required_relationship_baunit(from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
SELECT sola_island_id, sola_town_id, 'island', 'migration' FROM lands.island_township
WHERE NOT EXISTS (SELECT from_ba_unit_id FROM administrative.required_relationship_baunit
				  WHERE from_ba_unit_id = sola_island_id 
				  AND to_ba_unit_id = sola_town_id
				  AND relation_code = 'island'); 



-- *** Create BA Units for Tax and Town allotments
-- Attempt to de-duplicate the deed grants as much as possible
INSERT INTO lands.deed (id, deed_num, town, tax_lot, area_orig)
SELECT min(id), d_num, Lower(dg_type), CASE WHEN dg_apname ~* 'TAX' THEN TRUE ELSE FALSE END, LOWER(dg_mpref)
FROM lands.reg_deed_grant
GROUP BY d_num, dg_type, dg_apname, dg_mpref;

-- Some records have an area while others don't so remove the duplicates that do not have an area
DELETE FROM lands.deed WHERE area_orig = '' 
AND EXISTS (SELECT id FROM lands.reg_deed_grant WHERE d_num = deed_num AND dg_mpref != '' ); 

-- The remaining duplicates will need to be manually validated. Remove them from the staging table
DELETE FROM lands.deed WHERE deed_num in (SELECT deed_num FROM  lands.deed
GROUP BY deed_num HAVING COUNT(*) > 1); 

-- Mark the duplicate records in the deed_grant table so they can be reported later
UPDATE lands.reg_deed_grant SET dup = TRUE
WHERE d_num IN (SELECT d_num FROM  lands.reg_deed_grant
                GROUP BY d_num HAVING COUNT(*) > 1)
AND d_num NOT IN (SELECT deed_num FROM lands.deed);

-- Clean up the deed numbers. Remove any that do not have 1 / character. 
DELETE FROM lands.deed WHERE array_length(regexp_split_to_array (deed_num, '/'), 1) != 2; 

-- Split the deed number into first and last part
UPDATE lands.deed 
SET part1 = TRIM((regexp_split_to_array (deed_num, '/'))[1]),
    part2 = TRIM((regexp_split_to_array (deed_num, '/'))[2]); 
	
-- Create the tax and town allotment BA Units. 
INSERT INTO administrative.ba_unit (id, name, name_firstpart, name_lastpart, type_code, status_code, change_user)
SELECT sola_ba_unit_id, deed_num, part1, part2, CASE WHEN tax_lot THEN 'taxUnit' ELSE 'townAllotmentUnit' END, 'current', 'migation' 
FROM lands.deed
WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE id = sola_ba_unit_id);


-- *** Link the new BA Units to the appropriate town
INSERT INTO administrative.required_relationship_baunit(from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
SELECT town.id, d.sola_ba_unit_id, 'town', 'migration' 
FROM lands.deed d, administrative.ba_unit town
WHERE town.type_code = 'townUnit'
AND   d.town = LOWER(town.name_firstpart)
AND NOT EXISTS (SELECT from_ba_unit_id FROM administrative.required_relationship_baunit
				  WHERE from_ba_unit_id = town.id 
				  AND to_ba_unit_id = d.sola_ba_unit_id
				  AND relation_code = 'town');
				  


-- *** Create allotment holders as parties	
-- Create a summary of the land holders based on the cleaned up deeds			  
INSERT INTO lands.holder (id, deed_num, fname, lname, holder_type)
SELECT MIN(l.id), l.d_num, l.reg_first_name, l.reg_last_name, 
CASE WHEN reg_island IS NULL THEN reg_township ELSE reg_island END as holder_type
FROM lands.reg_landholder l, lands.deed d
WHERE d.deed_num = l.d_num
GROUP BY d_num, reg_first_name, reg_last_name, 5; 

-- Update the holder_type
UPDATE lands.holder SET holder_type = 'WIDOWER' WHERE holder_type = 'WIDOW';
UPDATE lands.holder SET holder_type = 'REG' WHERE holder_type = '';

-- Create the various land holders
INSERT INTO party.party (id, type_code, name, last_name)
SELECT sola_party_id, 'naturalPerson', fname, lname
FROM lands.holder; 



-- *** Create RRRs for land holders, heirs and life estates (i.e. widows)
-- Set id for the RRR that will represent the person granted the allotment
UPDATE lands.deed
SET sola_reg_rrr_id = uuid_generate_v1()
WHERE EXISTS (SELECT h.id
              FROM lands.holder h
			  WHERE h.holder_type = 'REG'
			  AND h.deed_num = lands.deed.deed_num)
AND sola_reg_rrr_id IS NULL; 
			  
-- Set id for the RRR that will represent a widowers life estate on the allotment
UPDATE lands.deed
SET sola_life_estate_rrr_id = uuid_generate_v1()
WHERE EXISTS (SELECT h.id
              FROM lands.holder h
			  WHERE h.holder_type = 'WIDOWER'
			  AND h.deed_num = lands.deed.deed_num)
AND sola_life_estate_rrr_id IS NULL; 

-- Set the id for the RRR that will represent the heirs of the allotment
UPDATE lands.deed
SET sola_heir_rrr_id = uuid_generate_v1()
WHERE EXISTS (SELECT h.id
              FROM lands.holder h
			  WHERE h.holder_type NOT IN ('REG', 'WIDOWER')
			  AND h.deed_num = lands.deed.deed_num)
AND sola_heir_rrr_id IS NULL; 
			  
-- Create the RRRs for the person granted the allotment. Assume the record is historic if there are heirs 
-- recorded for the allotment  
INSERT INTO administrative.rrr (id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
SELECT sola_reg_rrr_id, sola_ba_unit_id, deed_num, 'ownership', CASE WHEN sola_heir_rrr_id IS NULL THEN 'current' ELSE 'historic' END, 
't', 'migration', 'migration'
FROM lands.deed
WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = sola_reg_rrr_id)
AND sola_reg_rrr_id IS NOT NULL;

-- Create the RRRs for the heirs of the allotment. Assume all heirs are current.  
INSERT INTO administrative.rrr (id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
SELECT sola_heir_rrr_id, sola_ba_unit_id, deed_num || '-heir', 'ownership', 'current', 't', 'migration', 'migration'
FROM lands.deed
WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = sola_heir_rrr_id)
AND sola_heir_rrr_id IS NOT NULL;

-- Create the RRRs for the heirs of the allotment. Assume the record is historic if there are heirs 
-- recorded for the allotment  
INSERT INTO administrative.rrr (id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
SELECT sola_life_estate_rrr_id, sola_ba_unit_id, deed_num || '-wid', 'lifeEstate', 'current', 'f', 'migration', 'migration'
FROM lands.deed
WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = sola_life_estate_rrr_id)
AND sola_life_estate_rrr_id IS NOT NULL;



-- *** Create the Shares for the ownership RRRs
-- Create the shares for the ownership RRRs. Assume all shares are 1/1 
INSERT INTO administrative.rrr_share (rrr_id, id, nominator, denominator)
SELECT sola_reg_rrr_id, uuid_generate_v1(), 1, 1
FROM lands.deed
WHERE NOT EXISTS (SELECT id FROM administrative.rrr_share WHERE rrr_id = sola_reg_rrr_id)
AND sola_reg_rrr_id IS NOT NULL;

INSERT INTO administrative.rrr_share (rrr_id, id, nominator, denominator)
SELECT sola_heir_rrr_id, uuid_generate_v1(), 1, 1
FROM lands.deed
WHERE NOT EXISTS (SELECT id FROM administrative.rrr_share WHERE rrr_id = sola_heir_rrr_id)
AND sola_heir_rrr_id IS NOT NULL;


-- *** Create the party for rrr records
INSERT INTO administrative.party_for_rrr(rrr_id, party_id, share_id)
SELECT d.sola_reg_rrr_id, h.sola_party_id, s.id
FROM lands.deed d, lands.holder h, administrative.rrr_share s
WHERE s.rrr_id = d.sola_reg_rrr_id
AND h.deed_num = d.deed_num
AND h.holder_type = 'REG'
AND d.sola_reg_rrr_id IS NOT NULL
AND NOT EXISTS  (SELECT rrr_id FROM administrative.party_for_rrr 
                WHERE rrr_id = d.sola_reg_rrr_id
				AND   party_id = h.sola_party_id );
				
INSERT INTO administrative.party_for_rrr(rrr_id, party_id, share_id)
SELECT d.sola_heir_rrr_id, h.sola_party_id, s.id
FROM lands.deed d, lands.holder h, administrative.rrr_share s
WHERE s.rrr_id = d.sola_heir_rrr_id
AND h.deed_num = d.deed_num
AND h.holder_type NOT IN ('REG', 'WIDOWER')
AND d.sola_heir_rrr_id IS NOT NULL
AND NOT EXISTS  (SELECT rrr_id FROM administrative.party_for_rrr 
                WHERE rrr_id = d.sola_heir_rrr_id
				AND   party_id = h.sola_party_id );

-- Create the life estate parties.				
INSERT INTO administrative.party_for_rrr(rrr_id, party_id, share_id)
SELECT d.sola_life_estate_rrr_id, h.sola_party_id, null
FROM lands.deed d, lands.holder h
WHERE h.deed_num = d.deed_num
AND h.holder_type = 'WIDOWER'
AND d.sola_life_estate_rrr_id IS NOT NULL
AND NOT EXISTS  (SELECT rrr_id FROM administrative.party_for_rrr 
                WHERE rrr_id = d.sola_life_estate_rrr_id
				AND   party_id = h.sola_party_id );
	
	
	
-- *** Create the Notation records for each RRR
INSERT INTO administrative.notation (id, rrr_id, transaction_id, reference_nr, notation_text, status_code)
SELECT uuid_generate_v1(), d.sola_reg_rrr_id, 'migration', d.deed_num, 'Registered Landholder', 'current'
FROM lands.deed d
WHERE d.sola_reg_rrr_id IS NOT NULL
AND NOT EXISTS  (SELECT id FROM administrative.notation 
                WHERE rrr_id = d.sola_reg_rrr_id);
				
INSERT INTO administrative.notation (id, rrr_id, transaction_id, reference_nr, notation_text, status_code)
SELECT uuid_generate_v1(), d.sola_life_estate_rrr_id, 'migration', SUBSTRING(d.deed_num FROM 1 FOR 10) || '-wid', 'Widower', 'current'
FROM lands.deed d
WHERE d.sola_life_estate_rrr_id IS NOT NULL
AND NOT EXISTS  (SELECT id FROM administrative.notation 
                WHERE rrr_id = d.sola_life_estate_rrr_id);
				
				
INSERT INTO administrative.notation (id, rrr_id, transaction_id, reference_nr, notation_text, status_code)
SELECT uuid_generate_v1(), d.sola_heir_rrr_id, 'migration', SUBSTRING(d.deed_num FROM 1 FOR 10)|| '-heir', 
(SELECT MAX(h.holder_type) FROM lands.holder h 
 WHERE h.deed_num = d.deed_num AND h.holder_type NOT IN ('REG', 'WIDOWER')), 'current'
FROM lands.deed d
WHERE d.sola_heir_rrr_id IS NOT NULL
AND NOT EXISTS  (SELECT id FROM administrative.notation 
                WHERE rrr_id = d.sola_heir_rrr_id);
				


-- *** Obtain official area for allotments
-- Cast the msq to metres
UPDATE lands.deed 
SET sola_area = safe_cast(TRIM(regexp_replace(area_orig, 'm2', '', 'g')), null::NUMERIC(19,2))
WHERE TRIM(area_orig) LIKE '%m2'
AND sola_area IS NULL; 

UPDATE lands.deed 
SET sola_area = safe_cast(TRIM(regexp_replace(area_orig, 'm square', '', 'g')), null::NUMERIC(19,2))
WHERE TRIM(area_orig) LIKE '%m square'
AND sola_area IS NULL; 

-- Cast ha to m2
UPDATE lands.deed 
SET sola_area = safe_cast(TRIM(regexp_replace(area_orig, 'ha', '', 'g')), null::NUMERIC(19,2))*10000
WHERE TRIM(area_orig) LIKE '%ha'
AND sola_area IS NULL; 
 


-- *** Cast Imperial Area to metres
-- Replace all pa and pp with p to indicate perches
--UPDATE lands.deed SET sola_area = TRIM(regexp_replace(sola_area, 'pa|pp', 'p', 'g'))
--WHERE sola_area IS NULL 
--AND TTRIM(regexp_replace(imperial, 'pa|pp', 'p', 'g')) != imperial;

-- Extract the acreage - make those fields with invalid imperial measure with -1
UPDATE lands.deed
SET acre = safe_cast(TRIM(substring(area_orig from '#"%#"a%' for '#')), -1::INT)
WHERE sola_area IS NULL AND acre IS NULL AND area_orig LIKE '%a%'; 

-- Extract the roods where an acre measure is given
UPDATE lands.deed
SET rood = safe_cast(TRIM(substring(area_orig from '%a ?#"%#"r%' for '#')), -1::INT)
WHERE sola_area IS NULL AND rood IS NULL AND area_orig LIKE '%a%r%'; 

-- Extract the roods where no acre measure is given
UPDATE lands.deed
SET rood = safe_cast(TRIM(substring(area_orig from '#"%#"r%' for '#')), -1::INT)
WHERE sola_area IS NULL AND rood IS NULL AND area_orig LIKE '%r%' AND area_orig NOT LIKE '%a%'; 

-- Extract the perches where roods is specified
UPDATE lands.deed
SET perch = safe_cast(TRIM(substring(area_orig from '%r ?#"%#"p' for '#')), -1::NUMERIC(19,2))
WHERE sola_area IS NULL AND perch IS NULL AND area_orig LIKE '%r%p%';

-- Extract the perches where acres are specified
UPDATE lands.deed
SET perch = safe_cast(TRIM(substring(area_orig from '%a ?#"%#"p' for '#')), -1::NUMERIC(19,2))
WHERE sola_area IS NULL AND perch IS NULL AND area_orig LIKE '%a%p%' AND area_orig NOT LIKE '%r%';

-- Extract the perches where no roods or acres are specified
UPDATE lands.deed
SET perch = safe_cast(TRIM(substring(area_orig from '#"%#"p' for '#')), -1::NUMERIC(19,2))
WHERE sola_area IS NULL AND perch IS NULL AND area_orig LIKE '%p%' 
AND area_orig NOT LIKE '%r%' AND area_orig NOT LIKE '%a%';

-- Blank out any invalid imperial areas
UPDATE lands.deed
SET acre = NULL, 
rood = NULL,
perch = NULL
WHERE acre = -1 OR rood = -1 OR perch = -1
OR rood >= 4 OR perch >= 40;  

-- Set the new lease area
-- Set the new lease area
UPDATE lands.deed
SET sola_area = ROUND((COALESCE(acre, 0) * 4046.8564) -- 1 arce = 4046.8564 square metres
                   + (COALESCE(rood, 0) * 1011.7141) -- 4 roods in an acre
				   + (COALESCE(perch, 0) * 25.2929), 2) -- 40 perches in a rood
WHERE sola_area IS NULL 
AND (acre IS NOT NULL OR rood IS NOT NULL OR perch IS NOT NULL); 

-- Remove any 0 areas
UPDATE lease.lease_location
SET sola_area = NULL
WHERE sola_area = 0; 

-- Some areas have no units - assume they are m2
UPDATE lands.deed 
SET sola_area = safe_cast(TRIM(area_orig), null::NUMERIC(19,2))
WHERE sola_area IS NULL; 


-- Upload the areas for each BA Unit
INSERT INTO administrative.ba_unit_area (id, ba_unit_id, type_code, size, change_user)
SELECT uuid_generate_v1(), sola_ba_unit_id, 'officialArea', sola_area, 'migration'
FROM lands.deed
WHERE sola_area IS NOT NULL
AND NOT EXISTS (SELECT id FROM administrative.ba_unit_area WHERE ba_unit_id = sola_ba_unit_id);
				


