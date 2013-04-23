-- Increase the size of the name_firstpart for village names
DROP VIEW IF EXISTS  application.systematic_registration_certificates;
DROP VIEW IF EXISTS administrative.sys_reg_owner_name;
DROP VIEW IF EXISTS administrative.systematic_registration_listing;
DROP VIEW IF EXISTS administrative.sys_reg_state_land;
ALTER TABLE administrative.ba_unit ALTER COLUMN name_firstpart TYPE VARCHAR(50);
ALTER TABLE administrative.ba_unit_historic ALTER COLUMN name_firstpart TYPE VARCHAR(50);

-- Checklist Group Table
DROP TABLE IF EXISTS application.checklist_group;
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
DROP TABLE IF EXISTS application.checklist_item;
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
DROP TABLE IF EXISTS application.checklist_item_in_group;
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
  comment character varying(555),
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
  comment character varying(555),
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