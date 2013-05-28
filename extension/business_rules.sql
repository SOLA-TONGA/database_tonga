-- Recreate the Sequences used for numbering applications
DROP SEQUENCE IF EXISTS administrative.rrr_nr_seq;


INSERT INTO system.br (id, display_name, technical_type_code, feedback, description, technical_description)
SELECT 'calculate-survey-fee', 'Calculate Survey Fee', 'sql', null, 
  'Calculates the fee appliciable for the survey service based on the area of the parcel(s) to be surveyed', 
  '#{area} Area to calculate fee is required'
WHERE NOT EXISTS (SELECT id FROM system.br WHERE id = 'calculate-survey-fee'); 

-- Create business rule used to calculate the survey fee based on the area to be surveyed. See Schedule IV
-- document for the survey fee details. 
INSERT INTO system.br_definition (br_id, active_from, active_until, body)
SELECT 'calculate-survey-fee', now(), 'infinity', 
  'SELECT CASE
    WHEN #{area} IS NULL OR #{area} <= 0     THEN    0
	WHEN #{area} BETWEEN 0       AND 200     THEN   40
	WHEN #{area} BETWEEN 200     AND 13000   THEN   60
	WHEN #{area} BETWEEN 13000   AND 35000   THEN   70 
	WHEN #{area} BETWEEN 35000   AND 60000   THEN  180
	WHEN #{area} BETWEEN 60000   AND 80000   THEN  200
	WHEN #{area} BETWEEN 80000   AND 400000  THEN  200    + (TRUNC((#{area} -   80000)/10000) * 7.60)
	WHEN #{area} BETWEEN 400000  AND 800000  THEN  443.20 + (TRUNC((#{area} -  400000)/10000) * 5.60)
	WHEN #{area} BETWEEN 800000  AND 2000000 THEN  667.20 + (TRUNC((#{area} -  800000)/10000) * 4.70)
	WHEN #{area} BETWEEN 2000000 AND 4000000 THEN 1231.20 + (TRUNC((#{area} - 2000000)/10000) * 3.70)
	ELSE 1971.20 + (TRUNC((#{area} - 4000000)/10000) * 1.90) END AS vl'
WHERE NOT EXISTS (SELECT br_id FROM system.br_definition WHERE br_id = 'calculate-survey-fee'); 