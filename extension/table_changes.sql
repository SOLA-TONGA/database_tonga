-- Increase the size of the name_firstpart for village names
DROP VIEW IF EXISTS  application.systematic_registration_certificates;
DROP VIEW IF EXISTS administrative.sys_reg_owner_name;
DROP VIEW IF EXISTS administrative.systematic_registration_listing;
DROP VIEW IF EXISTS administrative.sys_reg_state_land;
ALTER TABLE administrative.ba_unit ALTER COLUMN name_firstpart TYPE VARCHAR(50);
ALTER TABLE administrative.ba_unit_historic ALTER COLUMN name_firstpart TYPE VARCHAR(50);


--- *** Checklist tables
DROP TABLE IF EXISTS application.checklist_item_in_group;
DROP TABLE IF EXISTS application.checklist_item;
DROP TABLE IF EXISTS application.checklist_group;


-- Checklist Group Table
CREATE TABLE application.checklist_group
(
  code character varying(20) NOT NULL,
  display_value character varying(250) NOT NULL,
  description character varying(555),
  status character(1) NOT NULL,
  CONSTRAINT checklist_group_pkey PRIMARY KEY (code),
  CONSTRAINT checklist_group_display_value_unique UNIQUE (display_value)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE application.checklist_group
  OWNER TO postgres;
COMMENT ON TABLE application.checklist_group
  IS 'Indicates a group of checklist items that should be applied to various transaction types.';
  

-- Checklist Item Table

CREATE TABLE application.checklist_item
(
  code character varying(20) NOT NULL,
  display_value character varying(250) NOT NULL,
  description character varying(555),
  status character(1) NOT NULL,
  CONSTRAINT checklist_item_pkey PRIMARY KEY (code),
  CONSTRAINT checklist_item_display_value_unique UNIQUE (display_value)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE application.checklist_item
  OWNER TO postgres;
COMMENT ON TABLE application.checklist_item
  IS 'An item that must be checked and confirmed before the application can proceed';
 

-- Checklist Item In Group Table 
CREATE TABLE application.checklist_item_in_group
(
  checklist_group_code character varying(20) NOT NULL,
  checklist_item_code character varying(20) NOT NULL,
  CONSTRAINT checklist_item_in_group_pkey PRIMARY KEY (checklist_group_code, checklist_item_code),  
  CONSTRAINT checklist_item_in_group_group_code_fk FOREIGN KEY (checklist_group_code)
      REFERENCES application.checklist_group (code) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT checklist_item_in_group_item_code_fk FOREIGN KEY (checklist_item_code)
      REFERENCES application.checklist_item (code) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
);
ALTER TABLE application.checklist_item_in_group
  OWNER TO postgres;
COMMENT ON TABLE application.checklist_item_in_group
  IS 'Identifies the checklist items for each checklist group';

  
-- Service Checklist Item Table
DROP TABLE IF EXISTS application.service_checklist_item;
CREATE TABLE application.service_checklist_item
(
  service_id character varying(40) NOT NULL,
  checklist_item_code character varying(20) NOT NULL,
  result character(1),
  comment character varying(1000),
  rowidentifier character varying(40) NOT NULL DEFAULT uuid_generate_v1(),
  rowversion integer NOT NULL DEFAULT 0,
  change_action character(1) NOT NULL DEFAULT 'i'::bpchar,
  change_user character varying(50),
  change_time timestamp without time zone NOT NULL DEFAULT now(),
  CONSTRAINT service_checklist_item_pkey PRIMARY KEY (service_id, checklist_item_code),
  CONSTRAINT service_checklist_item_item_code_fk FOREIGN KEY (checklist_item_code)
      REFERENCES application.checklist_item (code) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT service_checklist_item_service_id_fk FOREIGN KEY (service_id)
      REFERENCES application.service (id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
);
ALTER TABLE application.service_checklist_item
  OWNER TO postgres;
COMMENT ON TABLE application.service_checklist_item
  IS 'Indicates if the checklist items applicable to a service are satisified as well as any comments from the user.';
  
-- Index: application.service_checklist_item_index_on_rowidentifier

-- DROP INDEX application.service_checklist_item_index_on_rowidentifier;

CREATE INDEX service_checklist_item_index_on_rowidentifier
  ON application.service_checklist_item
  USING btree
  (rowidentifier COLLATE pg_catalog."default" );

-- Trigger: __track_changes on application.service_checklist_item

-- DROP TRIGGER __track_changes ON application.service_checklist_item;

CREATE TRIGGER __track_changes
  BEFORE INSERT OR UPDATE
  ON application.service_checklist_item
  FOR EACH ROW
  EXECUTE PROCEDURE f_for_trg_track_changes();

-- Trigger: __track_history on application.service_checklist_item

-- DROP TRIGGER __track_history ON application.service_checklist_item;

CREATE TRIGGER __track_history
  AFTER UPDATE OR DELETE
  ON application.service_checklist_item
  FOR EACH ROW
  EXECUTE PROCEDURE f_for_trg_track_history();
  
-- Service Checklist Item Historic Table
DROP TABLE IF EXISTS application.service_checklist_item_historic;
CREATE TABLE application.service_checklist_item_historic
(
  service_id character varying(40) NOT NULL,
  checklist_item_code character varying(20) NOT NULL,
  result character(1),
  comment character varying(1000),
  rowidentifier character varying(40) NOT NULL DEFAULT uuid_generate_v1(),
  rowversion integer NOT NULL DEFAULT 0,
  change_action character(1) NOT NULL DEFAULT 'i'::bpchar,
  change_user character varying(50),
  change_time timestamp without time zone NOT NULL DEFAULT now(),
  change_time_valid_until timestamp without time zone NOT NULL DEFAULT now()
)
WITH (
  OIDS=FALSE
);
ALTER TABLE application.service_checklist_item_historic
  OWNER TO postgres;
COMMENT ON TABLE application.service_checklist_item_historic
  IS 'History table for the application.servie_checklist_item table';
  
-- Index: application.service_checklist_item_historic

-- DROP INDEX service_checklist_item_historic_index_on_rowidentifier;

CREATE INDEX service_checklist_item_historic_index_on_rowidentifier
  ON application.service_checklist_item_historic
  USING btree
  (rowidentifier COLLATE pg_catalog."default");

  
  
-- Add new fields to the service table to support the workflow services for SOLA Tonga. 
-- action_date indicates the date the service is scheduled for such as the date the
-- Site Inspection will be conducted, the or date the Survey will be conducted, etc. 
-- The action_completed field allows a user to explicitly indicate the service
-- has been performed (e.g. Site Inspection is complete, Survey is done, Deed Drafting is
-- complete, etc). Extend the size of action_notes so that it can contain user
-- entered data. 
ALTER TABLE application.service
DROP COLUMN IF EXISTS action_date, 
DROP COLUMN IF EXISTS action_completed;

ALTER TABLE application.service
ADD action_date timestamp without time zone, 
ADD action_completed boolean NOT NULL DEFAULT FALSE,
ALTER COLUMN action_notes TYPE VARCHAR(4000);

ALTER TABLE application.service_historic
DROP COLUMN IF EXISTS action_date, 
DROP COLUMN IF EXISTS action_completed;

ALTER TABLE application.service_historic
ADD action_date timestamp without time zone, 
ADD action_completed boolean NOT NULL DEFAULT FALSE,
ALTER COLUMN action_notes TYPE VARCHAR(4000);

-- Replace the application.get_concatenated_name function as this does not work properly. It lists the
-- application properties but should list the properites the service is associated with instead. 
CREATE OR REPLACE FUNCTION application.get_concatenated_name(service_id character varying)
  RETURNS character varying AS
$BODY$
declare
  rec record;
  category varchar; 
  name character varying; 
  status_desc character varying; 
  plan varchar; 
  
BEGIN
	name = '';
	status_desc = '';
	
	IF service_id IS NULL THEN
	 RETURN NULL; 
	END IF;
      
    SELECT  rt.request_category_code,
	CASE WHEN ser.status_code = 'completed' OR ser.action_completed 
			THEN 'Completed on ' || TO_CHAR(ser.change_time, 'dd Mon YYYY')
		WHEN ser.action_date IS NOT NULL AND now() > ser.action_date
			THEN 'Overdue by ' || age(ser.action_date)
		WHEN ser.action_date IS NOT NULL AND ser.action_date >= now()
			THEN 'Scheduled for ' || TO_CHAR(ser.action_date, 'dd Mon YYYY')
		WHEN ser.expected_completion_date IS NOT NULL AND now() > ser.expected_completion_date 
			THEN 'Overdue by ' || age(ser.expected_completion_date)
		WHEN ser.expected_completion_date IS NOT NULL AND ser.expected_completion_date >= now()
			THEN 'Required by ' || TO_CHAR(ser.expected_completion_date, 'dd Mon YYYY')		
		ELSE 'Not scheduled' END
	INTO    category, status_desc
	FROM 	application.service ser,
			application.request_type rt
	WHERE	ser.id = service_id
	AND		rt.code = ser.request_type_code; 
	
	CASE category WHEN 'cadastralServices' THEN
	    -- Cadastral Service - list the parcels created/affected
		-- by this service
		FOR rec IN 
			SELECT co.name_firstpart as parcel_num,
				   co.name_lastpart  as plan
			FROM   transaction.transaction t,
				   cadastre.cadastre_object co
			WHERE  t.from_service_id = service_id
			AND	   co.transaction_id = t.id
			ORDER BY co.name_firstpart, co.name_lastpart
		
		LOOP
			name = name || ', ' || rec.parcel_num;
			IF plan IS NULL THEN plan = rec.plan; END IF; 
			IF plan != rec.plan THEN
				name = name || ' PLAN ' || plan; 
				plan = rec.plan; 
			END IF; 
		END LOOP;
		
		IF name != '' THEN  
			name = TRIM(SUBSTR(name,2)) || ' PLAN ' || plan;
		END IF;		
	WHEN 'registrationServices' THEN	
	    -- Registration Services - list the properties affected
		-- by this service
		FOR rec IN 
			SELECT bu.name_firstpart || '/' || bu.name_lastpart  as prop
			FROM   transaction.transaction t,
				  administrative.ba_unit bu
			WHERE  t.from_service_id = service_id
			AND	  bu.transaction_id = t.id
			UNION
			SELECT bu.name_firstpart || '/' || bu.name_lastpart  as prop
			FROM   transaction.transaction t,
				  administrative.ba_unit bu,
				  administrative.rrr r
			WHERE  t.from_service_id = service_id
			AND	  r.transaction_id = t.id
			AND    bu.id = r.ba_unit_id
			UNION
			SELECT bu.name_firstpart || '/' || bu.name_lastpart  as prop
			FROM   transaction.transaction t,
				  administrative.ba_unit bu,
				  administrative.notation n
			WHERE  t.from_service_id = service_id
			AND	  n.transaction_id = t.id
			AND    n.rrr_id IS NULL
			AND    bu.id = n.ba_unit_id
			UNION
			SELECT bu.name_firstpart || '/' || bu.name_lastpart  as prop
			FROM   transaction.transaction t,
				  administrative.ba_unit bu,
				  administrative.ba_unit_target tar
			WHERE  t.from_service_id = service_id
			AND	  tar.transaction_id = t.id
			AND    bu.id = tar.ba_unit_id

		LOOP
		   name = name || ', ' || rec.prop;
		END LOOP;
		
		IF name != '' THEN  
			name = TRIM(SUBSTR(name,2));
		END IF;	
	ELSE
		-- do nothing as Information Service or Application Service
	END CASE;

    IF name = '' THEN
	  RETURN  status_desc;
	END IF;
	
RETURN name || ' - ' || status_desc;
END;

$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION application.get_concatenated_name(character varying)
  OWNER TO postgres;
COMMENT ON FUNCTION application.get_concatenated_name(character varying) IS 'Returns the list properties that have been changed due to the service and/or summary details about the service.';

-- Add new field to the application table to support item number
ALTER TABLE application.application
DROP COLUMN IF EXISTS item_number;

ALTER TABLE application.application
ADD item_number character varying(40);

ALTER TABLE application.application_historic
DROP COLUMN IF EXISTS item_number;

ALTER TABLE application.application_historic
ADD item_number character varying(40);
