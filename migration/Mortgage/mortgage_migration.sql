-- Script run time: 60 seconds approx.

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

-- Create the banks for that can be registered for Mortgages
INSERT INTO party.party (id, type_code, name, change_user)
SELECT 'ANZ', 'nonNaturalPerson', 'ANZ Bank (Tonga) Limited', 'migration'
WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 'ANZ');
INSERT INTO party.party_role (party_id, type_code, change_user)
SELECT 'ANZ', 'bank', 'migration'
WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 'ANZ' AND type_code = 'bank');  

INSERT INTO party.party (id, type_code, name, change_user)
SELECT 'GOV', 'nonNaturalPerson', 'Government of Tonga', 'migration'
WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 'GOV');
INSERT INTO party.party_role (party_id, type_code, change_user)
SELECT 'GOV', 'bank', 'migration'
WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 'GOV' AND type_code = 'bank');

INSERT INTO party.party (id, type_code, name, change_user)
SELECT 'MBF', 'nonNaturalPerson', 'MBf Bank Limited', 'migration'
WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 'MBF');
INSERT INTO party.party_role (party_id, type_code, change_user)
SELECT 'MBF', 'bank', 'migration'
WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 'MBF' AND type_code = 'bank');

INSERT INTO party.party (id, type_code, name, change_user)
SELECT 'NRB', 'nonNaturalPerson', 'National Reserve Bank of Tonga', 'migration'
WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 'NRB');
INSERT INTO party.party_role (party_id, type_code, change_user)
SELECT 'NRB', 'bank', 'migration'
WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 'NRB' AND type_code = 'bank');

INSERT INTO party.party (id, type_code, name, change_user)
SELECT 'TDB', 'nonNaturalPerson', 'Tonga Development Bank', 'migration'
WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 'TDB');
INSERT INTO party.party_role (party_id, type_code, change_user)
SELECT 'TDB', 'bank', 'migration'
WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 'TDB' AND type_code = 'bank');

INSERT INTO party.party (id, type_code, name, change_user)
SELECT 'WBOT', 'nonNaturalPerson', 'Westpac Bank of Tonga', 'migration'
WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 'WBOT');
INSERT INTO party.party_role (party_id, type_code, change_user)
SELECT 'WBOT', 'bank', 'migration'
WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 'WBOT' AND type_code = 'bank');



-- Clean the mortgage term, mortgage amount and interest rate
UPDATE mortgage.mortgage 
SET term = safe_cast(mortgage_period, NULL::NUMERIC(18,2))::INT, 
    mort_amount = safe_cast(mortgage_amt, NULL::NUMERIC(29,2)),
    int_rate = CASE WHEN mortgage_interest_percent > 50 THEN NULL ELSE mortgage_interest_percent::NUMERIC(5,2) END;

-- Flag mortgages with duplicate mortgage numbers	
UPDATE mortgage.mortgage SET dup = TRUE
WHERE mortgage_number in (
SELECT mortgage_number from mortgage.mortgage GROUP BY mortgage_number having count(*) > 1);

-- Determine the status of the mortgages
UPDATE mortgage.mortgage 
SET status = CASE WHEN mortgage_dateof_discharge > '01 JAN 1900' THEN 'h'
                  WHEN (SELECT count(*) FROM  mortgage.mortgage_variation mv
				        WHERE mv.mortgage_number = mortgage.mortgage.mortgage_number) > 0 THEN 'p'
				  ELSE 'c' END; 

-- Clean term, mortgage amount and interest rate
UPDATE mortgage.mortgage_variation 
SET term = period::INT, 
    mort_amount = safe_cast(mortgage_total_amt, NULL::NUMERIC(29,2)),
    int_rate = CASE WHEN interest > 50 THEN NULL ELSE interest::NUMERIC(5,2) END;
	
-- Flag duplicate mortgage_variation records
UPDATE mortgage.mortgage_variation SET dup = TRUE
WHERE mortgage_variation_num in (
SELECT mortgage_variation_num from mortgage.mortgage_variation GROUP BY mortgage_variation_num having count(*) > 1);

-- Determine the status of the mortgage variations. The latest mortgage variation indicates whether the
-- mortgage is current or discharged. Previous versions of the mortgage are marked with the previous status. 
UPDATE mortgage.mortgage_variation 
SET status = CASE WHEN dateof_discharge > '01 JAN 1900' THEN 'h'
                  WHEN (SELECT MAX(mv.mortgage_variation_num) 
				        FROM  mortgage.mortgage_variation mv
				        WHERE mv.mortgage_number = mortgage.mortgage_variation.mortgage_number) = mortgage_variation_num THEN 'c'
				  ELSE 'p' END; 


-- *** Create the Mortgage RRRs for the leases
INSERT INTO administrative.rrr (id, ba_unit_id, nr, type_code, status_code,
transaction_id, registration_date, amount, mortgage_interest_rate, change_user, expiration_date)
SELECT m.sola_rrr_id, l.sola_ba_unit_id, m.mortgage_number, 'mortgage', 
CASE WHEN status = 'h' THEN 'historic' WHEN status = 'p' THEN 'previous' ELSE 'current' END, 
'migration', m.mortgage_reg_date, mort_amount, int_rate, 'migration',
CASE WHEN status = 'h' THEN m.mortgage_dateof_discharge ELSE NULL END
FROM mortgage.mortgage m, lease.lease_detail l
WHERE m.deed_number = l.lease_number
AND l.dup = FALSE
AND m.dup = FALSE
AND m.deed_type = 'lease'
AND mortgagee_bank IN ('TDB', 'ANZ', 'GOV', 'WBOT', 'MBF', 'NRB')
AND NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = m.sola_rrr_id);  


-- *** Create the Mortgage RRRs for the deeds
INSERT INTO administrative.rrr (id, ba_unit_id, nr, type_code, status_code,
transaction_id, registration_date, amount, mortgage_interest_rate, change_user, expiration_date)
SELECT m.sola_rrr_id, d.sola_ba_unit_id, m.mortgage_number, 'mortgage', 
CASE WHEN m.status = 'h' THEN 'historic' WHEN m.status = 'p' THEN 'previous' ELSE 'current' END,  
'migration', m.mortgage_reg_date, mort_amount, int_rate, 'migration',
CASE WHEN m.status = 'h' THEN m.mortgage_dateof_discharge ELSE NULL END
FROM mortgage.mortgage m, lands.deed d
WHERE m.deed_number = d.deed_num
AND m.dup = FALSE
AND m.deed_type = 'deed'
AND mortgagee_bank IN ('TDB', 'ANZ', 'GOV', 'WBOT', 'MBF', 'NRB')
AND NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = m.sola_rrr_id); 


-- Create notations to record the purpose of the mortgage
INSERT INTO administrative.notation (id, rrr_id, transaction_id, reference_nr, notation_text, notation_date, 
status_code, change_user)
SELECT m.sola_notation_id, m.sola_rrr_id, 'migration', 
      -- Add mortgage book and mortgage page to the start of the mortgage number
      m.mortgage_number || COALESCE(' (' || m.mortgage_book || '/', '') || COALESCE(m.mortgage_page || ')', '') , 
	  m.mortgage_purpose, m.mortgage_reg_date, 'current', 'migration'
FROM mortgage.mortgage m, administrative.rrr r
WHERE m.sola_rrr_id = r.id; 

-- Link the mortgages to the appropriate bank
INSERT INTO administrative.party_for_rrr(rrr_id, party_id)
SELECT m.sola_rrr_id, mortgagee_bank
FROM mortgage.mortgage m, administrative.rrr r
WHERE m.sola_rrr_id = r.id; 


-- *** Create Mortgage Variation Records (lease)
INSERT INTO administrative.rrr (id, ba_unit_id, nr, type_code, status_code,
transaction_id, registration_date, amount, mortgage_interest_rate, change_user, expiration_date)
SELECT mv.sola_rrr_id, l.sola_ba_unit_id, mv.mortgage_variation_num, 'mortgage', 
CASE WHEN mv.status = 'h' THEN 'historic' WHEN mv.status = 'p' THEN 'previous' ELSE 'current' END,  
'migration', mv.mortgage_variation_date, mv.mort_amount, mv.int_rate, 'migration',
CASE WHEN mv.status = 'h' THEN mv.dateof_discharge ELSE NULL END
FROM mortgage.mortgage_variation mv, mortgage.mortgage m, lease.lease_detail l
WHERE m.deed_number = l.lease_number
AND mv.mortgage_number = m.mortgage_number
AND l.dup = FALSE
AND m.dup = FALSE
AND mv.dup = FALSE
AND m.deed_type = 'lease'
AND mortgage_bank IN ('TDB', 'ANZ', 'GOV', 'WBOT', 'MBF', 'NRB'); 

-- Mortgage Variation for Deed
INSERT INTO administrative.rrr (id, ba_unit_id, nr, type_code, status_code,
transaction_id, registration_date, amount, mortgage_interest_rate, change_user, expiration_date)
SELECT mv.sola_rrr_id, d.sola_ba_unit_id, mv.mortgage_variation_num, 'mortgage', 
CASE WHEN mv.status = 'h' THEN 'historic' WHEN mv.status = 'p' THEN 'previous' ELSE 'current' END,  
'migration', mv.mortgage_variation_date, mv.mort_amount, mv.int_rate, 'migration',
CASE WHEN mv.status = 'h' THEN mv.dateof_discharge ELSE NULL END
FROM mortgage.mortgage_variation mv, mortgage.mortgage m, lands.deed d
WHERE m.deed_number = d.deed_num
AND mv.mortgage_number = m.mortgage_number
AND m.dup = FALSE
AND mv.dup = FALSE
AND m.deed_type = 'deed'
AND mortgage_bank IN ('TDB', 'ANZ', 'GOV', 'WBOT', 'MBF', 'NRB'); 



-- Create notations to record the purpose of the mortgage variations
INSERT INTO administrative.notation (id, rrr_id, transaction_id, reference_nr, notation_text, notation_date, 
status_code, change_user)
SELECT mv.sola_notation_id, mv.sola_rrr_id, 'migration', 
      -- Add mortgage book and mortgage page to the start of the mortgage number
      mv.mortgage_variation_num || COALESCE(' (' || mv.bk_num || '/', '') || COALESCE(mv.bk_page || ')', ''), 
      mv.mortgage_remarks,  mv.mortgage_variation_date, 'current', 'migration'
FROM mortgage.mortgage_variation mv, administrative.rrr r
WHERE mv.sola_rrr_id = r.id; 

-- Link the mortgage variations  to the appropriate bank
INSERT INTO administrative.party_for_rrr(rrr_id, party_id)
SELECT mv.sola_rrr_id, mv.mortgage_bank
FROM mortgage.mortgage_variation mv, administrative.rrr r
WHERE mv.sola_rrr_id = r.id; 












