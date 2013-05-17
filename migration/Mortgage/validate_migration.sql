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















-- Check for towns that are not correctly specified
INSERT INTO lease.validation (code, message, item_num)
SELECT 'INVALID TOWN', 'Town name ' || sola_town || ' is not a valid town name and must be fixed', "ID"
FROM lease.lease_detail WHERE sola_town in ('Expire', 'Invalid', 'Residential', 'Resort', 'Valid', '');

-- Check of leases with invalid or missing lease registration dates
INSERT INTO lease.validation (code, message, item_num)
SELECT 'INVALID LEASE REGISTRATION DATE', 'Lease ' || l.lease_number || ' has an invalid or missing lease registration date of "' || l.lease_reg_date || '"', l."ID"
FROM lease.lease_detail l, administrative.rrr r
WHERE l.sola_rrr_id = r.id AND r.registration_date IS NULL;

-- Check of leases with invalid or missing lease expiry dates
INSERT INTO lease.validation (code, message, item_num)
SELECT 'INVALID LEASE EXPIRE DATE', 'Lease ' || l.lease_number || ' has an invalid or missing lease expiry date', l."ID"
FROM lease.lease_detail l, administrative.rrr r
WHERE l.sola_rrr_id = r.id AND r.expiration_date IS NULL;

-- Verify the rental amounts are valid numbers
INSERT INTO lease.validation (code, message, item_num)
SELECT 'INVALID LEASE RENTAL AMOUNT', 'Lease ' || l.lease_number || ' has an invalid or missing rental amount of "' || l.lease_rental || '"', l."ID"
FROM lease.lease_detail l, administrative.rrr r
WHERE l.sola_rrr_id = r.id AND r.amount IS NULL;

-- Verify the next payment date for rental is valid and not significantly in the past
INSERT INTO lease.validation (code, message, item_num)
SELECT 'INVALID DUE DATE', 'Lease ' || l.lease_number || ' has an invalid or missing lease payment date of "' || l.lease_payment_date || '"', l."ID"
FROM lease.lease_detail l, administrative.rrr r
WHERE l.sola_rrr_id = r.id AND (r.due_date IS NULL OR r.due_date < '1990-01-01');

-- Checks if the area for the lot is valid
INSERT INTO lease.validation (code, message, item_num)
SELECT 'INVALID LEASE AREA', 'Lease ' || l.lease_number || ' has an invalid or missing area. "' || l.lease_area || '"', l.lease_id
FROM lease.lease_location l
WHERE sola_area IS NULL;

-- Identifies duplicate lot/plans
INSERT INTO lease.validation (code, message, item_num)
SELECT 'DUPLICATE LOT/PLAN', 'The same lot and plan is used for multiple leases. Check the leases to ensure the lot and plan reference is correct. "' || 
l.lease_lot || '/' || l.lease_plan || '" duplicated on leases "' || string_agg(l.lease_id::VARCHAR(40), ', ') || '"', null
FROM lease.lease_location l
WHERE dup = true
GROUP BY l.lease_lot, l.lease_plan;

