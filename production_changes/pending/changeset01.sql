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