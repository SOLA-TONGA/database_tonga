-- Script run time <1s
-- Create table to hold validation messages
DROP TABLE IF EXISTS lands.validation;
CREATE TABLE lands.validation
(
	code character varying(40),
	message character varying(255),
	item_num character varying(40)
);



-- Mortgage duplicated
INSERT INTO mortgage.validation (code, message, item_num)
SELECT 'DUPLICATE DEED', 'Deed has duplicate deed number. Check the deeds to ensure the details are correct. Deed "' || 
d_num || '" duplicated by reg_deed_grant records "' || string_agg(id::VARCHAR(40), ', ') || '"', null
FROM lands.reg_deed_grant
WHERE dup = true
GROUP BY d_num;


