-- Survey Fee Calculation Business Rules
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
	WHEN #{area} BETWEEN 0       AND 2000    THEN   40
	WHEN #{area} BETWEEN 2000    AND 13000   THEN   60
	WHEN #{area} BETWEEN 13000   AND 35000   THEN   70 
	WHEN #{area} BETWEEN 35000   AND 60000   THEN  180
	WHEN #{area} BETWEEN 60000   AND 80000   THEN  200
	WHEN #{area} BETWEEN 80000   AND 400000  THEN  200    + (TRUNC((#{area} -   80000)/10000) * 7.60)
	WHEN #{area} BETWEEN 400000  AND 800000  THEN  443.20 + (TRUNC((#{area} -  400000)/10000) * 5.60)
	WHEN #{area} BETWEEN 800000  AND 2000000 THEN  667.20 + (TRUNC((#{area} -  800000)/10000) * 4.70)
	WHEN #{area} BETWEEN 2000000 AND 4000000 THEN 1231.20 + (TRUNC((#{area} - 2000000)/10000) * 3.70)
	ELSE 1971.20 + (TRUNC((#{area} - 4000000)/10000) * 1.90) END AS vl'
WHERE NOT EXISTS (SELECT br_id FROM system.br_definition WHERE br_id = 'calculate-survey-fee'); 


-- Number generation Sequences and business rules
-- *** Application Number
DROP SEQUENCE IF EXISTS application.application_nr_seq;
CREATE SEQUENCE application.application_nr_seq
  INCREMENT 1
  MINVALUE 10000
  MAXVALUE 99999
  START 10000
  CACHE 3
  CYCLE;
COMMENT ON SEQUENCE application.application_nr_seq
  IS 'Allocates a 5 digit sequence number for application numbers';
  
UPDATE system.br_definition SET "body" = 
    'SELECT trim(to_char(nextval(''application.application_nr_seq''), ''00000'')) AS vl'
WHERE br_id = 'generate-application-nr';


-- *** Source Numbering 
-- Reconfigure Source numbering so that it is based on the application number 
DROP SEQUENCE IF EXISTS source.source_la_nr_seq;  
CREATE SEQUENCE source.source_la_nr_seq
  INCREMENT 1
  MINVALUE 100000
  MAXVALUE 999999
  START 100000
  CACHE 1;
  
UPDATE system.br_definition SET "body" = '
WITH app AS  (
    SELECT a.id AS app_id
    FROM application.application a 
    WHERE CAST(#{refId} AS VARCHAR(40)) IS NOT NULL 
    AND a.id =  #{refId}
    UNION 
    SELECT ser.application_id AS app_id
    FROM   application.service ser,
           transaction.transaction t 
    WHERE  CAST(#{transactionId} AS VARCHAR(40)) IS NOT NULL
    AND    t.id = #{transactionId}
    AND    ser.id = t.from_service_id),
sources AS (
    SELECT aus.source_id AS source_id
    FROM   application.application_uses_source aus,
           app 
    WHERE  aus.application_id = app.app_id
    UNION
    SELECT rs.source_id as source_id
    FROM   app,
           application.service ser, 
           transaction.transaction t,
           administrative.rrr r,
           administrative.source_describes_rrr rs
    WHERE  ser.application_id = app.app_id
    AND    t.from_service_id = ser.id
    AND    r.transaction_id = t.id
    AND    rs.rrr_id = r.id)
SELECT CASE 
    WHEN (SELECT COUNT(app_id) FROM app) > 0 THEN 
     (SELECT a.nr || ''-'' || trim(to_char((SELECT COUNT(*) + 1 FROM sources), ''00''))
      FROM app, application.application a WHERE a.id = app.app_id)
	WHEN EXISTS (SELECT ba.id FROM administrative.ba_unit ba WHERE ba.id = #{refId} AND (SELECT COUNT(app_id) FROM app) = 0) THEN 
	 (SELECT ba.name_firstpart || ''/'' || ba.name_lastpart FROM administrative.ba_unit ba WHERE ba.id = #{refId})
	WHEN EXISTS (SELECT r.id FROM administrative.rrr r WHERE r.id = #{refId} AND (SELECT COUNT(app_id) FROM app) = 0) THEN 
	 (SELECT r.nr FROM administrative.rrr r WHERE r.id = #{refId})  || ''-''  || 
		trim(to_char((SELECT COUNT(*) + 1 FROM administrative.source_describes_rrr s WHERE s.rrr_id = #{refId}), ''00''))
	ELSE trim(to_char(nextval(''source.source_la_nr_seq''), ''000000'')) END AS vl'
WHERE br_id = 'generate-source-nr';
  

-- *** RRR Numbering  - RRR Numbers usually aren't displayed to the user so
-- just use a default numbering scheme
DROP SEQUENCE IF EXISTS administrative.rrr_nr_seq;
CREATE SEQUENCE administrative.rrr_nr_seq
  INCREMENT 1
  MINVALUE 100000
  MAXVALUE 999999
  START 100000
  CACHE 3
  CYCLE;
COMMENT ON SEQUENCE administrative.rrr_nr_seq
  IS 'Allocates a 6 digit sequence number for RRRR numbers';
  
UPDATE system.br_definition SET "body" = 
    'SELECT trim(to_char(nextval(''administrative.rrr_nr_seq''), ''000000'')) AS vl'
WHERE br_id = 'generate-rrr-nr';

--- *** Notation Numbering. The notation number should be set to the application number. 
-- The user can update if necessary through SOLA. 
DROP SEQUENCE IF EXISTS administrative.notation_reference_nr_seq; 
CREATE SEQUENCE  administrative.notation_reference_nr_seq
  INCREMENT 1
  MINVALUE 200000
  MAXVALUE 999999
  START 200000
  CACHE 3;
COMMENT ON SEQUENCE administrative.notation_reference_nr_seq
  IS 'Allocates a 6 digit sequence number in the 200000 range for any Notations not linked to an application';
  
UPDATE system.br_definition SET "body" = '
SELECT CASE WHEN CAST(#{transactionId} AS VARCHAR(40)) IS NOT NULL THEN (
                 SELECT 	split_part(app.nr, ''/'', 1)
				 FROM 	application.application app
				 WHERE	app.id IN  (	SELECT 	ser.application_id
						FROM 	application.service ser,
							transaction.transaction t
						WHERE 	t.id = #{transactionId}	
						AND   	ser.id = t.from_service_id))
            ELSE (SELECT trim(to_char(nextval(''administrative.notation_reference_nr_seq''), ''000000''))) END AS vl'
WHERE br_id = 'generate-notation-reference-nr'; 