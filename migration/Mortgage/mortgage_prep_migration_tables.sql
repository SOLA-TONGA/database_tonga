-- Run time 45 seconds

ALTER TABLE mortgage.mortgage
DROP COLUMN IF EXISTS sola_rrr_id,
DROP COLUMN IF EXISTS sola_notation_id, 
DROP COLUMN IF EXISTS term, 
DROP COLUMN IF EXISTS mort_amount, 
DROP COLUMN IF EXISTS int_rate,
DROP COLUMN IF EXISTS dup; 

ALTER TABLE mortgage.mortgage_variation
DROP COLUMN IF EXISTS sola_rrr_id,
DROP COLUMN IF EXISTS sola_notation_id, 
DROP COLUMN IF EXISTS dup,
DROP COLUMN IF EXISTS term, 
DROP COLUMN IF EXISTS mort_amount, 
DROP COLUMN IF EXISTS int_rate;



ALTER TABLE mortgage.mortgage
ADD sola_rrr_id VARCHAR(40) DEFAULT uuid_generate_v1(),
ADD sola_notation_id VARCHAR(40) DEFAULT uuid_generate_v1(),
ADD term INT,
ADD mort_amount NUMERIC(29,2),
ADD int_rate NUMERIC(5,2),
ADD dup BOOLEAN DEFAULT FALSE; 


ALTER TABLE mortgage.mortgage_variation
ADD sola_rrr_id VARCHAR(40) DEFAULT uuid_generate_v1(),
ADD sola_notation_id VARCHAR(40) DEFAULT uuid_generate_v1(),
ADD dup BOOLEAN DEFAULT FALSE,
ADD term INT,
ADD mort_amount NUMERIC(29,2),
ADD int_rate NUMERIC(5,2); 