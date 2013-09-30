﻿-- Run time 25 seconds

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

ALTER TABLE mortgage.mortgage
DROP COLUMN IF EXISTS sola_rrr_id,
DROP COLUMN IF EXISTS sola_notation_id,
DROP COLUMN IF EXISTS term,
DROP COLUMN IF EXISTS mort_amount, 
DROP COLUMN IF EXISTS int_rate,
DROP COLUMN IF EXISTS status,
DROP COLUMN IF EXISTS dup;

ALTER TABLE mortgage.mortgage_variation 
DROP COLUMN IF EXISTS dup,
DROP COLUMN IF EXISTS term, 
DROP COLUMN IF EXISTS mort_amount, 
DROP COLUMN IF EXISTS status,
DROP COLUMN IF EXISTS int_rate;

ALTER TABLE mortgage.mortgage
ADD sola_rrr_id VARCHAR(40) DEFAULT uuid_generate_v1(),
ADD sola_notation_id VARCHAR(40) DEFAULT uuid_generate_v1(),
ADD term NUMERIC(29,2),
ADD mort_amount NUMERIC(29,2),
ADD int_rate NUMERIC(5,2),
ADD status VARCHAR(1) DEFAULT 'c',
ADD dup BOOLEAN DEFAULT FALSE; 


ALTER TABLE mortgage.mortgage_variation
ADD dup BOOLEAN DEFAULT FALSE,
ADD term NUMERIC(29,2),
ADD mort_amount NUMERIC(29,2),
ADD int_rate NUMERIC(5,2),
ADD status VARCHAR(1) DEFAULT 'c'; 


-- Used to map mortgage variation records to RRRs adn Notations 
-- When the mortgage is referenced by more than one BA Unit. 
DROP TABLE IF EXISTS mortgage.rrr_variation;
CREATE TABLE mortgage.rrr_variation
(
   sola_rrr_id VARCHAR(40) DEFAULT uuid_generate_v1(),
   sola_notation_id VARCHAR(40) DEFAULT uuid_generate_v1(),
   sola_ba_unit_id VARCHAR(40),
   mv_id integer
 );


