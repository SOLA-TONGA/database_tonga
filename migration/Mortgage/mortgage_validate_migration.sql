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
DROP TABLE IF EXISTS mortgage.validation;
CREATE TABLE mortgage.validation
(
	code character varying(40),
	message character varying(500),
	item_num character varying(1000),
	id character varying(1000)
);


-- Check if there is a lease for this mortgage. 
INSERT INTO mortgage.validation (code, message, item_num, id)
SELECT 'NO LEASE FOR MORTGAGE', 'Lease ' || COALESCE(m.deed_number, '-') || ' is missing for mortgage', m.mortgage_number, m.mortgage_id
FROM mortgage.mortgage m
WHERE m.dup = FALSE
AND m.deed_type = 'lease'
AND NOT EXISTS (SELECT lease_number FROM lease.lease_detail WHERE lease_number = m.deed_number); 

-- Check if there is a Deed for this mortgage
INSERT INTO mortgage.validation (code, message, item_num, id)
SELECT 'NO DEED FOR MORTGAGE', 'Deed ' || COALESCE(m.deed_number, '-') || ' is missing for mortgage', m.mortgage_number, m.mortgage_id
FROM mortgage.mortgage m
WHERE m.dup = FALSE
AND m.deed_type = 'deed'
AND NOT EXISTS (SELECT d_num FROM lands.reg_deed_grant WHERE d_num = m.deed_number); 

-- Check if the mortgage term is < 0 or > 100
INSERT INTO mortgage.validation (code, message, item_num, id)
SELECT 'INVALID MORTGAGE TERM', 'Mortgage term is missing or invalid. Term: ' || COALESCE(m.term, -1)::VARCHAR(20), m.mortgage_number, m.mortgage_id
FROM mortgage.mortgage m
WHERE m.dup = FALSE
AND (m.term IS NULL OR m.term <=0 OR m.term > 100);

INSERT INTO mortgage.validation (code, message, item_num, id)
SELECT 'INVALID MORTGAGE VAR TERM', 'Mortgage Variation term is missing or invalid. Term: ' || COALESCE(mv.term, -1)::VARCHAR(20), mv.mortgage_variation_num, mv.mort_variation_id
FROM mortgage.mortgage_variation mv
WHERE mv.dup = FALSE
AND (mv.term IS NULL OR mv.term <=0 OR mv.term > 100);

-- Check the bank for the mortgage is valid
INSERT INTO mortgage.validation (code, message, item_num, id)
SELECT 'INVALID BANK FOR MORTGAGE', 'Invalid or missing bank ' || COALESCE(m.mortgagee_bank, '-'), m.mortgage_number, m.mortgage_id
FROM mortgage.mortgage m
WHERE m.dup = FALSE
AND COALESCE(m.mortgagee_bank, 'XXX') NOT IN ('TDB', 'ANZ', 'GOV', 'WBOT', 'MBF', 'NRB');

-- Check the bank for the mortgage variation is valid
INSERT INTO mortgage.validation (code, message, item_num, id)
SELECT 'INVALID BANK FOR MORTGAGE VARIATION', 'Invalid or missing bank ' || COALESCE(mv.mortgage_bank, '-'), mv.mortgage_variation_num, mv.mort_variation_id
FROM mortgage.mortgage_variation mv
WHERE mv.dup = FALSE
AND COALESCE(mv.mortgage_bank, 'XXX') NOT IN ('TDB', 'ANZ', 'GOV', 'WBOT', 'MBF', 'NRB');




-- Mortgages on Leases that do not reference a valid lease
INSERT INTO mortgage.validation (code, message, item_num)
SELECT 'NO LEASE FOR MORTGAGE', 'No lease for the mortgage: ' || deed_number, mortgage_id
FROM mortgage.mortgage 
WHERE deed_type = 'lease'
AND NOT EXISTS (SELECT lease_number FROM lease.lease_detail WHERE lease_number = deed_number); 


-- Mortgage duplicated
INSERT INTO mortgage.validation (code, message, item_num)
SELECT 'DUPLICATE MORTGAGE', 'Mortgage has duplicate mortgage number. Check the mortgages to ensure the details are correct. Mortgage "' || 
mortgage_number || '" duplicated on mortgage records "' || string_agg(mortgage_id::VARCHAR(40), ', ') || '"', null
FROM mortgage.mortgage
WHERE dup = true
GROUP BY mortgage_number;

-- Mortgage Variation duplicated 
INSERT INTO mortgage.validation (code, message, item_num)
SELECT 'DUPLICATE MORTGAGE VARIATION', 'Mortgage variation has duplicate mortgage variation number. Check the mortgage variation details to ensure they are correct. Mortgage Variation "' || 
mortgage_variation_num || '" duplicated on mortgage variation records "' || string_agg(mort_variation_id::VARCHAR(40), ', ') || '"', null
FROM mortgage.mortgage_variation
WHERE dup = true
GROUP BY mortgage_variation_num;

