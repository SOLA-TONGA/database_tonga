-- Remove columns if already exist on the lrs.title estate table. 
ALTER TABLE lease.lease_detail 
DROP COLUMN IF EXISTS sola_rrr_id,
DROP COLUMN IF EXISTS sola_town,
DROP COLUMN IF EXISTS sola_island,
DROP COLUMN IF EXISTS sola_ba_unit_id,
DROP COLUMN IF EXISTS sola_lessee_id,
DROP COLUMN IF EXISTS sola_lessor_id,
DROP COLUMN IF EXISTS sola_owner_rrr_id;

ALTER TABLE lease.lease_location 
DROP COLUMN IF EXISTS sola_area,
DROP COLUMN IF EXISTS dup,
DROP COLUMN IF EXISTS sola_co_id;


-- Add the sequence number on the title estate table to use for the primary rrrs
ALTER TABLE lease.lease_detail
ADD sola_rrr_id VARCHAR(40) DEFAULT uuid_generate_v1(),
ADD sola_ba_unit_id VARCHAR(40) DEFAULT  uuid_generate_v1(),
ADD sola_town VARCHAR(255),
ADD sola_island VARCHAR(255),
ADD sola_lessee_id VARCHAR (40) DEFAULT uuid_generate_v1(),
ADD sola_lessor_id VARCHAR(40) DEFAULT uuid_generate_v1(),
ADD sola_owner_rrr_id VARCHAR(40) DEFAULT uuid_generate_v1();

ALTER TABLE lease.lease_location
ADD sola_area NUMERIC(19,2),
ADD dup BOOLEAN DEFAULT FALSE, 
ADD sola_co_id VARCHAR(40) DEFAULT uuid_generate_v1();