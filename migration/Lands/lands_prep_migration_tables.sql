-- Run time 1 seconds

ALTER TABLE lands.nobles
DROP COLUMN IF EXISTS sola_party_id; 

ALTER TABLE lands.nobles
ADD sola_party_id VARCHAR(40) DEFAULT uuid_generate_v1(); 


ALTER TABLE lands.island_township 
DROP COLUMN IF EXISTS sola_town,
DROP COLUMN IF EXISTS sola_town_id, 
DROP COLUMN IF EXISTS sola_island_id; 

ALTER TABLE lands.island_township 
ADD sola_town VARCHAR(255),
ADD sola_town_id VARCHAR(40) DEFAULT uuid_generate_v1(), 
ADD sola_island_id VARCHAR(40);


DROP TABLE IF EXISTS lands.deed; 

CREATE TABLE lands.deed (
sola_ba_unit_id VARCHAR(40) DEFAULT uuid_generate_v1(),
id INTEGER, 
deed_num VARCHAR(40),
part1 VARCHAR(50),
part2 VARCHAR(50), 
town VARCHAR(255), 
area_orig VARCHAR(255), 
sola_area NUMERIC(19,2),
acre INT,
rood INT,
perch NUMERIC(19,2),
tax_lot BOOLEAN DEFAULT FALSE, 
sola_reg_rrr_id VARCHAR(40),
sola_heir_rrr_id VARCHAR(40), 
sola_life_estate_rrr_id VARCHAR(40)); 

DROP TABLE IF EXISTS lands.holder;

CREATE TABLE lands.holder (
sola_party_id VARCHAR(40) DEFAULT uuid_generate_v1(),
id INTEGER, 
deed_num VARCHAR(40),
fname VARCHAR(255),
lname VARCHAR(50), 
holder_type VARCHAR(20)); 


ALTER TABLE lands.reg_deed_grant
DROP COLUMN IF EXISTS dup;

ALTER TABLE lands.reg_deed_grant
ADD dup BOOLEAN DEFAULT FALSE;
