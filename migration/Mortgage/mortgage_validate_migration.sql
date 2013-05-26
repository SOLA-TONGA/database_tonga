-- Script run time <1s
-- Create table to hold validation messages
DROP TABLE IF EXISTS mortgage.validation;
CREATE TABLE mortgage.validation
(
	code character varying(40),
	message character varying(255),
	item_num character varying(40)
);


-- Mortgages that do not reference a lease
INSERT INTO mortgage.validation (code, message, item_num)
SELECT 'NO LEASE FOR MORTGAGE', 'No lease matching the lease number recorded for the mortgage: ' || deed_number, mortgage_id
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

