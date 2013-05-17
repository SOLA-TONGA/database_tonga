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

-- Create a migration transaction record if one does not already exist
INSERT INTO transaction.transaction(id, status_code, approval_datetime, change_user) 
SELECT 'migration', 'approved', now(), 'migration' WHERE NOT EXISTS 
(SELECT id FROM transaction.transaction WHERE id = 'migration');

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



-- Remove all Mortgage RRRs first
DELETE FROM administrative.party_for_rrr WHERE EXISTS (SELECT r.id FROM administrative.rrr r WHERE type_code = 'mortgage');  
DELETE FROM administrative.notation WHERE EXISTS (SELECT r.id FROM administrative.rrr r WHERE type_code = 'mortgage');  
DELETE FROM administrative.rrr WHERE type_code = 'mortgage';

-- Clean the mortgage term, mortgage amount and interest rate
UPDATE mortgage.mortgage 
SET term = safe_cast(mortgage_period, NULL::NUMERIC(18,2))::INT, 
    mort_amount = safe_cast(mortgage_amt, NULL::NUMERIC(29,2)),
    int_rate = CASE WHEN mortgage_interest_percent > 50 THEN NULL ELSE mortgage_interest_percent::NUMERIC(5,2) END;

-- Flag mortgages with duplicate mortgage numbers	
UPDATE mortgage.mortgage SET dup = TRUE
WHERE mortgage_number in (
SELECT mortgage_number from mortgage.mortgage GROUP BY mortgage_number having count(*) > 1);

-- Clean term, mortgage amont and interest rate
UPDATE mortgage.mortgage_variation 
SET term = period::INT, 
    mort_amount = safe_cast(mortgage_total_amt, NULL::NUMERIC(29,2)),
    int_rate = CASE WHEN interest > 50 THEN NULL ELSE interest::NUMERIC(5,2) END;
	
-- Flag duplicate mortgage_variation records
UPDATE mortgage.mortgage_variation SET dup = TRUE
WHERE mortgage_variation_num in (
SELECT mortgage_variation_num from mortgage.mortgage_variation GROUP BY mortgage_variation_num having count(*) > 1);



-- *** Create the Mortgage RRRs for the leases
INSERT INTO administrative.rrr (id, ba_unit_id, nr, type_code, status_code,
transaction_id, registration_date, amount, mortgage_interest_rate, change_user, expiration_date)
SELECT m.sola_rrr_id, l.sola_ba_unit_id, m.mortgage_number, 'mortgage', 
CASE WHEN m.mortgage_dateof_discharge > '01 JAN 1900' THEN 'historic' ELSE 'current' END, 
'migration', m.mortgage_reg_date, mort_amount, int_rate, 'migration',
CASE WHEN m.mortgage_dateof_discharge > '01 JAN 1900' THEN m.mortgage_dateof_discharge ELSE NULL END,
FROM mortgage.mortgage m, lease.lease_detail l
WHERE m.deed_number = l.lease_number
AND l.dup = FALSE
AND m.dup = FALSE
AND m.deed_type = 'lease'
AND mortgagee_bank IN ('TDB', 'ANZ', 'GOV', 'WBOT', 'MBF', 'NRB'); 

-- Create notations to record the purpose of the mortgage
INSERT INTO administrative.notation (id, rrr_id, transaction_id, reference_nr, notation_text, notation_date, 
status_code, change_user)
SELECT m.sola_notation_id, m.sola_rrr_id, 'migration', m.mortgage_number, m.mortgage_purpose, m.mortgage_reg_date,
'current', 'migration'
FROM mortgage.mortgage m, administrative.rrr r
WHERE m.sola_rrr_id = r.id; 

-- Link the mortgages to the appropriate bank
INSERT INTO administrative.party_for_rrr(rrr_id, party_id)
SELECT m.sola_rrr_id, mortgagee_bank
FROM mortgage.mortgage m, administrative.rrr r
WHERE m.sola_rrr_id = r.id; 


-- *** Create Mortgage Variation Records
INSERT INTO administrative.rrr (id, ba_unit_id, nr, type_code, status_code,
transaction_id, registration_date, amount, mortgage_interest_rate, change_user, expiration_date)
SELECT mv.sola_rrr_id, l.sola_ba_unit_id, mv.mortgage_variation_num, 'mortgage', 
CASE WHEN mv.dateof_discharge > '01 JAN 1900' THEN 'historic' ELSE 'current' END, 
'migration', mv.mortgage_variation_date, mv.mort_amount, mv.int_rate, 'migration',
CASE WHEN mv.dateof_discharge > '01 JAN 1900' THEN mv.dateof_discharge ELSE NULL END,
FROM mortgage.mortgage_variation mv, mortgage.mortgage m, lease.lease_detail l
WHERE m.deed_number = l.lease_number
AND mv.mortgage_number = m.mortgage_number
AND l.dup = FALSE
AND m.dup = FALSE
AND mv.dup = FALSE
AND m.deed_type = 'lease'
AND mortgage_bank IN ('TDB', 'ANZ', 'GOV', 'WBOT', 'MBF', 'NRB'); 

-- Create notations to record the purpose of the mortgage variations
INSERT INTO administrative.notation (id, rrr_id, transaction_id, reference_nr, notation_text, notation_date, 
status_code, change_user)
SELECT mv.sola_notation_id, mv.sola_rrr_id, 'migration', mv.mortgage_variation_num, 
mv.mortgage_remarks,  mv.mortgage_variation_date,
'current', 'migration'
FROM mortgage.mortgage_variation mv, administrative.rrr r
WHERE mv.sola_rrr_id = r.id; 

-- Link the mortgage variations  to the appropriate bank
INSERT INTO administrative.party_for_rrr(rrr_id, party_id)
SELECT mv.sola_rrr_id, mv.mortgage_bank
FROM mortgage.mortgage_variation mv, administrative.rrr r
WHERE mv.sola_rrr_id = r.id; 












