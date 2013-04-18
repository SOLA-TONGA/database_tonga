DROP TABLE IF EXISTS administrative.ba_unit_island, administrative.ba_unit_town;

-- Create new column for receipt number, payement date and (payment_upto_date) renewal date				
-- Insert lease registration and lease expiration date and rrr.mortgage_amount as lease_retal.
ALTER TABLE administrative.rrr ADD receipt_number character varying(255), ADD payment_date character varying(255), ADD renewal_date character varying(255);

-- Create new ba_unit for lease_detail.lease_island where lease_island is equal ba_unit(name_firstpart)
CREATE TABLE lease.island(id character varying(40) NOT NULL, name character varying(255), name_firstpart character varying(20) NOT NULL, name_lastpart character varying(50) NOT NULL, CONSTRAINT ba_unit_island_pkey PRIMARY KEY (id));
CREATE TABLE lease.town(id character varying(40) NOT NULL, name character varying(255), name_firstpart character varying(20) NOT NULL, name_lastpart character varying(50) NOT NULL, CONSTRAINT ba_unit_town_pkey PRIMARY KEY (id));