-- Increase the size of the name_firstpart for village names
DROP VIEW IF EXISTS  application.systematic_registration_certificates;
DROP VIEW IF EXISTS administrative.sys_reg_owner_name;
DROP VIEW IF EXISTS administrative.systematic_registration_listing;
DROP VIEW IF EXISTS administrative.sys_reg_state_land;
ALTER TABLE administrative.ba_unit ALTER COLUMN name_firstpart TYPE VARCHAR(50);
ALTER TABLE administrative.ba_unit_historic ALTER COLUMN name_firstpart TYPE VARCHAR(50);
ALTER TABLE administrative.notation ALTER COLUMN reference_nr TYPE VARCHAR(50);
ALTER TABLE administrative.notation_historic ALTER COLUMN reference_nr TYPE VARCHAR(50);
ALTER TABLE cadastre.cadastre_object ALTER COLUMN name_firstpart TYPE VARCHAR(50);
ALTER TABLE cadastre.cadastre_object_historic ALTER COLUMN name_firstpart TYPE VARCHAR(50);


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
-- Also Add columns to the service table to capture Date of Approval and
-- Approval Number for the Cabinet Submission service.
ALTER TABLE application.service
DROP COLUMN IF EXISTS action_date, 
DROP COLUMN IF EXISTS action_completed,
DROP COLUMN IF EXISTS approval_date, 
DROP COLUMN IF EXISTS approval_number,
DROP COLUMN IF EXISTS report_text_one,
DROP COLUMN IF EXISTS report_text_two;

ALTER TABLE application.service
ADD action_date timestamp without time zone, 
ADD action_completed boolean NOT NULL DEFAULT FALSE,
ADD approval_date timestamp without time zone, 
ADD approval_number VARCHAR(40),
ADD report_text_one VARCHAR(4000),
ADD report_text_two VARCHAR(4000),
ALTER COLUMN action_notes TYPE VARCHAR(4000);

ALTER TABLE application.service_historic
DROP COLUMN IF EXISTS action_date, 
DROP COLUMN IF EXISTS action_completed,
DROP COLUMN IF EXISTS approval_date, 
DROP COLUMN IF EXISTS approval_number,
DROP COLUMN IF EXISTS report_text_one,
DROP COLUMN IF EXISTS report_text_two;

ALTER TABLE application.service_historic
ADD action_date timestamp without time zone, 
ADD action_completed boolean NOT NULL DEFAULT FALSE,
ADD approval_date timestamp without time zone, 
ADD approval_number VARCHAR(40),
ADD report_text_one VARCHAR(4000),
ADD report_text_two VARCHAR(4000),
ALTER COLUMN action_notes TYPE VARCHAR(4000);

-- Add columns to capture new lease application details
ALTER TABLE application.application_property
DROP COLUMN IF EXISTS lease_number,
DROP COLUMN IF EXISTS lease_area, 
DROP COLUMN IF EXISTS lease_term,
DROP COLUMN IF EXISTS amount,
DROP COLUMN IF EXISTS registration_date,
DROP COLUMN IF EXISTS lessor_name,
DROP COLUMN IF EXISTS island_id,
DROP COLUMN IF EXISTS noble_estate_id,
DROP COLUMN IF EXISTS description,
DROP COLUMN IF EXISTS town_id,
DROP COLUMN IF EXISTS lease_ba_unit_id,
DROP COLUMN IF EXISTS lessee_name,
DROP COLUMN IF EXISTS lease_linked,
DROP COLUMN IF EXISTS sublease_number,
DROP COLUMN IF EXISTS sublease_ba_unit_id,
DROP COLUMN IF EXISTS sublease_linked;

ALTER TABLE application.application_property
ALTER COLUMN name_firstpart  DROP NOT NULL,
ALTER COLUMN name_lastpart DROP NOT NULL,
ALTER COLUMN area DROP NOT NULL;

ALTER TABLE application.application_property
ALTER COLUMN name_firstpart TYPE VARCHAR(50),
ALTER COLUMN name_lastpart TYPE VARCHAR(50),
ADD lease_number VARCHAR(40),
ADD lease_area NUMERIC(20,2), 
ADD lease_term NUMERIC(8,2),
ADD amount NUMERIC(20,2),
ADD registration_date timestamp without time zone,
ADD lessor_name VARCHAR(255),
ADD island_id VARCHAR(40),
ADD noble_estate_id VARCHAR(40),
ADD description VARCHAR(1000),
ADD town_id VARCHAR(40),
ADD lease_ba_unit_id VARCHAR(40),
ADD lessee_name VARCHAR(255),
ADD lease_linked BOOLEAN NOT NULL DEFAULT FALSE,
ADD sublease_number VARCHAR(40),
ADD sublease_ba_unit_id VARCHAR(40),
ADD sublease_linked BOOLEAN NOT NULL DEFAULT FALSE;

ALTER TABLE application.application_property_historic
DROP COLUMN IF EXISTS lease_number,
DROP COLUMN IF EXISTS lease_area, 
DROP COLUMN IF EXISTS lease_term,
DROP COLUMN IF EXISTS amount,
DROP COLUMN IF EXISTS registration_date,
DROP COLUMN IF EXISTS lessor_name,
DROP COLUMN IF EXISTS island_id,
DROP COLUMN IF EXISTS noble_estate_id,
DROP COLUMN IF EXISTS description,
DROP COLUMN IF EXISTS town_id,
DROP COLUMN IF EXISTS lease_ba_unit_id,
DROP COLUMN IF EXISTS lessee_name,
DROP COLUMN IF EXISTS lease_linked,
DROP COLUMN IF EXISTS sublease_number,
DROP COLUMN IF EXISTS sublease_ba_unit_id,
DROP COLUMN IF EXISTS sublease_linked;

ALTER TABLE application.application_property_historic
ALTER COLUMN name_firstpart TYPE VARCHAR(50),
ALTER COLUMN name_lastpart TYPE VARCHAR(50),
ADD lease_number VARCHAR(40),
ADD lease_area NUMERIC(20,2), 
ADD lease_term NUMERIC(8,2) ,
ADD amount NUMERIC(20,2),
ADD registration_date timestamp without time zone,
ADD lessor_name VARCHAR(255),
ADD island_id VARCHAR(40),
ADD noble_estate_id VARCHAR(40),
ADD description VARCHAR(1000),
ADD town_id VARCHAR(40),
ADD lease_ba_unit_id VARCHAR(40),
ADD lessee_name VARCHAR(255),
ADD lease_linked BOOLEAN,
ADD sublease_number VARCHAR(40),
ADD sublease_ba_unit_id VARCHAR(40),
ADD sublease_linked BOOLEAN NOT NULL DEFAULT FALSE;


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
-- and new lease registation details
ALTER TABLE application.application
DROP COLUMN IF EXISTS item_number;

ALTER TABLE application.application
ADD item_number character varying(40);

ALTER TABLE application.application_historic
DROP COLUMN IF EXISTS item_number;

ALTER TABLE application.application_historic
ADD item_number character varying(40);

-- Add new fields to the RRR table to capture receipt and receipt date 
-- details as well as the mortgage book / page information. These
-- details are migrated from the Access Databases. 

-- registered_name = Name provided for the parcel by the allotment holder when
--                   they register thier new allotment (a.k.a. parcel name)
-- land_use_code   = Code indicating the purpose for the land. Added to ba_unit
--                   for Tonga is it is less applicable to the cadastre_object. 
--                   Note that cadastre_object.land_use_code is not used. 
ALTER TABLE administrative.ba_unit
DROP COLUMN IF EXISTS registered_name,
DROP COLUMN IF EXISTS land_use_code;

ALTER TABLE administrative.ba_unit
ADD registered_name character varying(255), 
ADD land_use_code character varying(20);

ALTER TABLE administrative.ba_unit_historic
DROP COLUMN IF EXISTS registered_name,
DROP COLUMN IF EXISTS land_use_code;

ALTER TABLE administrative.ba_unit_historic
ADD registered_name character varying(255),
ADD land_use_code character varying(20);

ALTER TABLE administrative.ba_unit DROP CONSTRAINT IF EXISTS ba_unit_land_use_code_fk;
ALTER TABLE administrative.ba_unit
  ADD CONSTRAINT ba_unit_land_use_code_fk FOREIGN KEY (land_use_code)
      REFERENCES cadastre.land_use_type (code) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE RESTRICT;

-- Constraint to add following improvements to the source property data. 	  
--ALTER TABLE administrative.ba_unit DROP CONSTRAINT IF EXISTS ba_unit_unique_name_parts;	
--ALTER TABLE administrative.ba_unit
--  ADD CONSTRAINT ba_unit_unique_name_parts UNIQUE(name_firstpart, name_lastpart);

ALTER TABLE administrative.rrr
DROP COLUMN IF EXISTS receipt_date,
DROP COLUMN IF EXISTS receipt_reference,
DROP COLUMN IF EXISTS receipt_amount,
DROP COLUMN IF EXISTS registry_book_ref,
DROP COLUMN IF EXISTS start_date,
DROP COLUMN IF EXISTS term,
DROP COLUMN IF EXISTS other_rightholder_name,
DROP COLUMN IF EXISTS cashier_update,
DROP COLUMN IF EXISTS rrr_ref;

ALTER TABLE administrative.rrr
ADD receipt_date timestamp without time zone,
ADD receipt_reference character varying(255),
ADD receipt_amount NUMERIC(20,2),
ADD registry_book_ref character varying(50),
ADD term NUMERIC(8,2),
ADD start_date timestamp without time zone,
ADD other_rightholder_name character varying(255),
ADD cashier_update BOOLEAN NOT NULL DEFAULT FALSE,
ADD rrr_ref character varying(255);

ALTER TABLE administrative.rrr_historic
DROP COLUMN IF EXISTS receipt_date,
DROP COLUMN IF EXISTS receipt_reference,
DROP COLUMN IF EXISTS receipt_amount,
DROP COLUMN IF EXISTS registry_book_ref,
DROP COLUMN IF EXISTS start_date,
DROP COLUMN IF EXISTS term,
DROP COLUMN IF EXISTS other_rightholder_name,
DROP COLUMN IF EXISTS cashier_update,
DROP COLUMN IF EXISTS rrr_ref;

ALTER TABLE administrative.rrr_historic
ADD receipt_date timestamp without time zone,
ADD receipt_reference character varying(255),
ADD receipt_amount NUMERIC(20,2),
ADD registry_book_ref character varying(50),
ADD term NUMERIC(8,2),
ADD start_date timestamp without time zone,
ADD other_rightholder_name character varying(255),
ADD cashier_update BOOLEAN,
ADD rrr_ref character varying(255);


-- Temporary change to the new cadastre_object trigger
CREATE OR REPLACE FUNCTION cadastre.f_for_tbl_cadastre_object_trg_new()
  RETURNS trigger AS
$BODY$
BEGIN
  if (select count(*)=0 from cadastre.spatial_unit where id=new.id) then
    insert into cadastre.spatial_unit(id, rowidentifier, level_id, change_user) 
    values(new.id, new.rowidentifier, 'lease', new.change_user);
  end if;
  return new;
END;

$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;


-- Updates the compare string function so that it will not split on <space> if the user has
-- entered \s as a control character
CREATE OR REPLACE FUNCTION compare_strings(string1 character varying, string2 character varying)
  RETURNS boolean AS
$BODY$
  DECLARE
    rec record;
    result boolean;
  BEGIN
      result = false;
      for rec in select regexp_split_to_table(lower(string1),'[^a-z0-9\\s]') as word loop
          if rec.word != '' then 
            if not string2 ~* rec.word then
                return false;
            end if;
            result = true;
          end if;
      end loop;
      return result;
  END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION compare_strings(character varying, character varying)
  OWNER TO postgres;
COMMENT ON FUNCTION compare_strings(character varying, character varying) IS 'Special string compare function. Allows spaces to be recognized as valid search parameters when entered as \s';


CREATE OR REPLACE FUNCTION administrative.get_other_rightholder_name(rrr_identifier CHARACTER VARYING)
  RETURNS CHARACTER VARYING AS
$BODY$
  DECLARE
    result CHARACTER VARYING = NULL;
	rel_code CHARACTER VARYING = NULL;
	other_rh_names CHARACTER VARYING = NULL;
	status CHARACTER VARYING = NULL;
BEGIN

   -- Determine the relation code to use. For sublease - always use the other_rightholder_name
   -- as the lessee may have defaulted on a mortgage and the bank has decided to sublease the land. 
   SELECT CASE b.type_code 
            WHEN 'leasedUnit' THEN 'allotment' 
			ELSE NULL END, -- Only retrieve parent details for leases. 
		  r.other_rightholder_name,
		  r.status_code
   INTO rel_code, result, status
   FROM administrative.ba_unit b,
        administrative.rrr r
   WHERE r.id = rrr_identifier
   AND b.id = r.ba_unit_id
   AND b.type_code IN ('leasedUnit', 'subleaseUnit');
   
   -- Check whether to obtain right holder details from the parent
   -- ba unit. If the rrr is previous/historic then use the 
   -- other_rightholder_name on the rrr otherwise try to find the
   -- current rightholder details from the parent BA Unit
   IF (rel_code IS NOT NULL AND 
        (status IN ('current', 'pending') OR result IS NULL)) THEN
      SELECT string_agg(COALESCE(p.name, '') || ' ' || COALESCE(p.last_name, ''), ',')
	  INTO   other_rh_names
	  FROM   administrative.rrr r,
             administrative.required_relationship_baunit rel,
             administrative.rrr r2,			 
	         administrative.party_for_rrr pr, 
			 party.party p
       WHERE r.id = rrr_identifier
	   AND   rel.to_ba_unit_id = r.ba_unit_id
	   AND   rel.relation_code = rel_code
	   AND   r2.ba_unit_id = rel.from_ba_unit_id
	   AND   r2.is_primary = TRUE
	   AND   r2.status_code = 'current'
	   AND   pr.rrr_id = r2.id
	   AND   p.id = pr.party_id;
	   
	   IF other_rh_names IS NOT NULL THEN
	      result = other_rh_names;
	   END IF;
   END IF;
   RETURN result;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
COMMENT ON FUNCTION administrative.get_other_rightholder_name(rrr_identifier CHARACTER VARYING) IS 'Determines the other right holder name (such as the lessor name) for certain rights based on ba_unit relationships';


-- Add display order column to request type to control the order of the types for display
ALTER TABLE application.request_type
DROP COLUMN IF EXISTS display_group_name,
DROP COLUMN IF EXISTS display_order;

ALTER TABLE application.request_type
ADD display_group_name VARCHAR(200),
ADD display_order int;

-- Add fields to capture text entered into Land Matter and Recommendation in the Ministerial Briefing service
ALTER TABLE application.service ADD report_text_one character varying(4000);
ALTER TABLE application.service ADD report_text_two character varying(4000);
ALTER TABLE application.service_historic ADD report_text_one character varying(4000);
ALTER TABLE application.service_historic ADD report_text_two character varying(4000);
