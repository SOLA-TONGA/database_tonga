
-- Create table to hold validation messages
DROP TABLE IF EXISTS lease.validation;
CREATE TABLE lease.validation
(
	code character varying(40),
	message character varying(255),
	item_num character varying(40)
);


-- Check the number of islands is valid
INSERT INTO lease.validation (code, message)
SELECT 'INVALID ISLAND COUNT', 'Should be 6 islands - check all islands are valid and none are missing.'
WHERE (SELECT COUNT(*) FROM lease.island) != 6;

INSERT INTO lease.validation (code, message, item_num)
SELECT 'INVALID TOWN', 'Town name ' || sola_town || ' is not a valid town name and must be fixed', "ID"
FROM lease.lease_detail WHERE sola_town in ('Expire', 'Invalid', 'Residential', 'Resort', 'Valid');


