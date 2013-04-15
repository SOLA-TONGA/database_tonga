-- Configure Tongan Language Translations for Code Reference values
DELETE FROM system.language; 
INSERT INTO system.language (code, display_value, active, is_default, item_order)
VALUES ('en', 'English::::Fakapalagi', TRUE, TRUE, 1);
INSERT INTO system.language (code, display_value, active, is_default, item_order)
VALUES ('to', 'Tongan::::Fakatonga', TRUE, FALSE, 2);

-- Service types for SOLA Tonga
INSERT INTO application.request_category_type (code, display_value, description, status)
SELECT 'applicationServices', 'Application Services', 'Services used to support applicatin processing', 'c' WHERE 'applicationServices' NOT IN 
(SELECT code FROM application.request_category_type); 

-- Defalt existing request types (a.k.a. service types) to disabled then enable those
-- used for Tonga. 
UPDATE application.request_type SET status = 'x';
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description)
    VALUES ('checklist','applicationServices','Checklist::::TONGAN','c',5,0.00,0.00,0.00,0,
	null,null,null,'Checklist Service applicable for different types of applications');
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description)
    VALUES ('siteInspection','applicationServices','Site Inspection::::TONGAN','c',5,0.00,0.00,0.00,0,
	null,null,null,'Indicates the application will require a site inspection');
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description)
    VALUES ('ministerBriefing','applicationServices','Ministerial Briefing::::TONGAN','c',5,0.00,0.00,0.00,0,
	null,null,null,'Briefing for the Minister of Lands to gain approval for the application');
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description)
    VALUES ('cabinetSubmission','applicationServices','Cabinet Submission::::TONGAN','c',5,0.00,0.00,0.00,0,
	null,null,null,'Submission to cabinet for thier approval of the application. Includes notifying application
	of the cabinet decision');	
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description)
    VALUES ('survey','applicationServices','Survey::::TONGAN','c',90,0.00,0.00,0.00,0,
	null,null,null,'Ministry to conduct survey of the lease or allotment area');
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description)
    VALUES ('draftDeed','applicationServices','Draft Deed::::TONGAN','c',5,0.00,0.00,0.00,0,
	null,null,null,'Draft Deed of Grant or Deed of Lease including a diagram of the allotment or lease');
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description)
    VALUES ('signDeed','applicationServices','Sign Deed::::TONGAN','c',5,0.00,0.00,0.00,0,
	null,null,null,'Organise individuals to attend and sign the lease with the minister and initial payment
	of registration fee and annual rental');
	
UPDATE 	application.request_type 
SET 	display_value = 'Reigster Lease::::TONGAN',
		status = 'c',
		description = 'Register the new lease details',
		base_fee = 0,
		nr_days_to_complete = 5
WHERE   code = 'registerLease';
	
	
	
-- Revise the list of document types for SOLA Tonga
DELETE FROM application.request_type_requires_source_type;
DELETE FROM source.administrative_source_type; 

INSERT INTO source.administrative_source_type (code,display_value,status,is_for_registration, description)
VALUES ('leaseApplication','Lease Application','c','FALSE', 'Application for lease of a tax or town allotment'); 
INSERT INTO source.administrative_source_type (code,display_value,status,is_for_registration, description)
VALUES ('cabinetSubmission','Cabinet Submission','c','FALSE', 'Submission to cabinet for thier approval of a lease or related land transaction');  INSERT INTO source.administrative_source_type (code,display_value,status,is_for_registration, description)
VALUES ('cabinetDecision','Cabinet Decision','c','FALSE', 'Document summarising the decision by cabinet for a lease or related land transaction');  
INSERT INTO source.administrative_source_type (code,display_value,status,is_for_registration, description)
VALUES ('caveat','Caveat','c','FALSE', 'Caveat registered on an allotment'); 
INSERT INTO source.administrative_source_type (code,display_value,status,is_for_registration, description)
VALUES ('checklist','Checklist','c','FALSE', 'A copy of a checklist that has been signed or marked to show the land transaction complies with the checklist items');
INSERT INTO source.administrative_source_type (code,display_value,status,is_for_registration, description)
VALUES ('memoBrief','Internal Memo Briefing (English)','c','FALSE', 'An internal memo summarising the land transaction details for the Minister in English');
INSERT INTO source.administrative_source_type (code,display_value,status,is_for_registration, description)
VALUES ('memo','Internal Memo (Tongan)','c','FALSE', 'An internal memo describing the land transaction details for the Minister and the applicant in Tongan');
INSERT INTO source.administrative_source_type (code,display_value,status,is_for_registration, description)
VALUES ('other','Miscellaneous','c','FALSE', 'Miscellaneous document type that does not fit within another category');
INSERT INTO source.administrative_source_type (code,display_value,status,is_for_registration,description)
VALUES ('notificationLetter','Notification Letter','c','FALSE', 'Letter sent to the applicant advising them of the decision for their land transaction');
INSERT INTO source.administrative_source_type (code,display_value,status,is_for_registration, description)
VALUES ('cadastralSurvey','Plan','c','FALSE', 'Illustration of one or more allotments showing survey details');
INSERT INTO source.administrative_source_type (code,display_value,status,is_for_registration, description)
VALUES ('powerOfAttorney','Power of Attorney','c','TRUE', 'Document that vests power for one person (attorney) to act on behalf of another for legal transactions');
INSERT INTO source.administrative_source_type (code,display_value,status,is_for_registration, description)
VALUES ('note','Office Note','c','FALSE', 'Document created by a staff member to note information or points of interest related to a given application' );
INSERT INTO source.administrative_source_type (code,display_value,status,is_for_registration, description)
VALUES ('idVerification','Proof of Identity','c','FALSE', 'Document that proves the identity of a person (e.g. birth certificate, passport, driver license, etc)');
INSERT INTO source.administrative_source_type (code,display_value,status,is_for_registration, description)
VALUES ('savingram','Savingram','c','FALSE', '');
INSERT INTO source.administrative_source_type (code,display_value,status,is_for_registration, description)
VALUES ('templateForm','Template Form','c','FALSE', 'Template for an official form such as an application form' );