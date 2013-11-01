-- Run time 2 seconds.

-- Run the migration scripts in the following order...
-- 1) lands_prep_migration_tables.sql
-- 2) lands_migration.sql
-- 3) lands_validate_migration.sql
-- 4) lease_prep_migration_tables.sql
-- 5) lease_migration.sql
-- 6) lease_validate_migration.sql
-- 7) sublease_backup.sql
-- 8) sublease_prep_migration_tables.sql
-- 9) sublease_migration.sql
-- 10) mortgage_prep_migration_tables.sql
-- 11) mortgage_migration.sql
-- 12) mortgage_validate_migration.sql


-- Remove columns if already exist on the sl_clean table. 
ALTER TABLE lease.sl_clean 
DROP COLUMN IF EXISTS sola_rrr_id,
DROP COLUMN IF EXISTS sola_town_id,
DROP COLUMN IF EXISTS sola_ba_unit_id,
DROP COLUMN IF EXISTS sola_head_ba_unit_id,
DROP COLUMN IF EXISTS sola_sublessee_id,
DROP COLUMN IF EXISTS sola_co_id,
DROP COLUMN IF EXISTS sola_sublesse_id2,
DROP COLUMN IF EXISTS sublesse_name2;



-- Add the sequence number on the sl_clean table to use for the primary rrrs
ALTER TABLE lease.sl_clean
ADD sola_rrr_id VARCHAR(40) DEFAULT uuid_generate_v1(),
ADD sola_ba_unit_id VARCHAR(40) DEFAULT  uuid_generate_v1(),
ADD sola_head_ba_unit_id VARCHAR(40),
ADD sola_town_id VARCHAR(40),
ADD sola_sublessee_id VARCHAR (40) DEFAULT uuid_generate_v1(),
ADD sola_co_id VARCHAR(40),
ADD sola_sublessee_id2 VARCHAR(40),
ADD sublessee_name2 VARCHAR(255);

