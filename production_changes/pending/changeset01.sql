-- 28 Nov 2013 Ticket #??
-- Add Surrender right type 
INSERT INTO administrative.rrr_type(code, rrr_group_type_code, display_value, is_primary, share_check, party_required, status, description)
    SELECT 'surrender', 'restrictions', 'Surrender', FALSE, FALSE, TRUE, 'c', 'Identifies that an allotment has been surrendered in part or whole. The surrendered part of the allotment can only be claimed after it has been surrendered for 12 months.'
    WHERE NOT EXISTS (SELECT code FROM administrative.rrr_type WHERE code = 'surrender');

UPDATE 	application.request_type
SET display_value = 'Surrender Allotment::::TONGAN',
    rrr_type_code = 'surrender',
	type_action_code = 'new',
	notation_template = 'Surrender allotment to <name>',
	description = 'Used to surrender all or part of an allotment'
WHERE code = 'apiSurrender';

UPDATE 	application.request_type
SET notation_template = regexp_replace(notation_template, '''api', 'allotment')
WHERE code IN ('taxapi', 'townapi', 'apiExchange', 'apiEjectment');

INSERT INTO source.administrative_source_type (code,display_value,status,is_for_registration, description)
VALUES ('surrenderDocs','Surrender Documents','c','FALSE', 'Documents supporting surrender of an allotment');

UPDATE administrative.ba_unit_rel_type
SET status = 'x'
WHERE code IN ('priorTitle', 'rootTitle', 'island');

INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description, display_order, display_group_name)
    VALUES ('hodReview','applicationServices','Head of Division Review::::TONGAN','c',5,0.00,0.00,0.00,0,
	null,null,null,'Review of the documentation prepared for the Ministerial Briefing', 17, 'Workflow');
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description, display_order, display_group_name)
    VALUES ('ministerDecision','applicationServices','Ministerial Decision::::TONGAN','c',5,0.00,0.00,0.00,0,
	null,null,null,'Captures the decision by the minister as to whether to proceed with the transaction or not.', 18, 'Workflow');
UPDATE application.request_type
SET display_value = 'Ministerial Briefing Preparation::::TONGAN',
    description = 'Preparing the briefing for the Minister of Lands to gain approval for the application'
WHERE code = 'ministerBriefing';

INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'ministerDecision', 'Service - Ministerial Decision', 'c', 'Application Service. Allows the Ministerial Decision service to be started.'
WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'ministerDecision');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'hodReview', 'Service - Head of Division Review', 'c', 'Application Service. Allows the Head of Division Review service to be started.'
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'hodReview');
   
INSERT INTO system.approle_appgroup (approle_code, appgroup_id) VALUES ('ministerDecision','registration-id');
INSERT INTO system.approle_appgroup (approle_code, appgroup_id) VALUES ('hodReview','registration-id');