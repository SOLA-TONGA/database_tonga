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

-- Tongan application services
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
    VALUES ('itemNumber','applicationServices','Issue Item Number::::TONGAN','c',2,0.00,0.00,0.00,0,
	null,null,null,'Issues an item number to track teh application as is progresses through the Mapping and Survey 
	department.');	
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
	
-- Registration Services
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description)
    VALUES ('registerSublease','registrationServices','Register Sublease::::TONGAN','c',5,10.50,0.00,0.00,0,
	'Sublease of nn years to <name>','lease','new','Register new sublease details');
	
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description)
    VALUES ('varySublease','registrationServices','Transfer Sublease::::TONGAN','c',5,7.00,0.00,0.00,0,
	'Transfer sublease of nn years to <name>','lease','vary','Transfer sublease');
	
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description)
    VALUES ('leaseDocument','registrationServices','Register Document Affecting Leasehold Title::::TONGAN','c',5,1.80,0.00,0.00,0,
	'Register document','lease','vary','Register document affecting leasehold title');
	
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description)
    VALUES ('mortgageDocument','registrationServices','Register Document Affecting a Mortgage::::TONGAN','c',5,2.00,0.00,0.00,0,
	'Register document','mortgage','vary','Register document affecting a Mortgage');
	
UPDATE 	application.request_type 
SET 	display_value = 'Register Lease::::TONGAN',
		status = 'c',
		description = 'Register the new lease details',
		base_fee = 21.00,
		value_base_fee = 0.00, 
		area_base_fee = 0.00, 
		nr_days_to_complete = 5,
		rrr_type_code = null,
		type_action_code = null
WHERE   code = 'registerLease';

UPDATE 	application.request_type 
SET 	display_value = 'Transfer Lease::::TONGAN',
		status = 'c',
		description = 'Transfer lease details',
		notation_template = 'Transfer lease of nn years to <name>',
		base_fee = 14.00,
		value_base_fee = 0.00, 
		area_base_fee = 0.00, 
		nr_days_to_complete = 5
WHERE   code = 'varyLease';

UPDATE 	application.request_type 
SET 	display_value = 'Register Mortgage::::TONGAN',
		status = 'c',
		description = 'Register new mortgage details',
		base_fee = 23.00,
		value_base_fee = 0.00, 
		area_base_fee = 0.00, 
		nr_days_to_complete = 5
WHERE   code = 'mortgage';

UPDATE 	application.request_type 
SET 	display_value = 'Variation of Mortgage::::TONGAN',
		status = 'c',
		description = 'Variation of mortgage',
		notation_template = 'Variation of mortgage',
		base_fee = 23.00,
		value_base_fee = 0.00, 
		area_base_fee = 0.00, 
		nr_days_to_complete = 5
WHERE   code = 'varyMortgage';

UPDATE 	application.request_type 
SET 	display_value = 'Variation of Mortgage::::TONGAN',
		status = 'c',
		description = 'Variation of mortgage',
		notation_template = 'Variation of mortgage',
		base_fee = 23.00,
		value_base_fee = 0.00, 
		area_base_fee = 0.00, 
		nr_days_to_complete = 5
WHERE   code = 'varyMortgage';	

UPDATE 	application.request_type 
SET 	display_value = 'Discharge of Mortgage::::TONGAN',
		status = 'c',
		description = 'Discharge of mortgage',
		notation_template = 'Discharge',
		rrr_type_code = 'mortgage',
		type_action_code = 'cancel',
		base_fee = 10.50,
		value_base_fee = 0.00, 
		area_base_fee = 0.00, 
		nr_days_to_complete = 5
WHERE   code = 'removeRestriction';	

	
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



-- Load Checklist Group
INSERT INTO application.checklist_group(code, display_value, description, status)
VALUES ('agricultural', 'Agricultural', 'Land used for farming and raising livestock.', 'c');
INSERT INTO application.checklist_group(code, display_value, description, status)
VALUES ('residential', 'Residential', 'Land used for residence.', 'c');
INSERT INTO application.checklist_group(code, display_value, description, status)
VALUES ('commercial', 'Commercial', 'Land or buildings used to generate a profit.', 'c');
INSERT INTO application.checklist_group(code, display_value, description, status)
VALUES ('government', 'Government Ministries', 'Land used by Government Ministries.', 'c');

DELETE FROM application.checklist_group WHERE code = 'agriculture';

-- Load Checklist Items
INSERT INTO application.checklist_item(code, display_value, description, status)
VALUES ('contact', 'Contact Detail', 'Telephone, Mobile, Residential Address, Mailing Address, Email', 'c');
INSERT INTO application.checklist_item(code, display_value, description, status)
VALUES ('id', 'Identification', 'National Identification Card, Passport, Driver License', 'c');
INSERT INTO application.checklist_item(code, display_value, description, status)
VALUES ('powerOfAttorney', 'Power of Attorney', 'If person other than the Landowner', 'c');
INSERT INTO application.checklist_item(code, display_value, description, status)
VALUES ('businessName', 'Business Registration and Business Name', 'Registered Business', 'c');
INSERT INTO application.checklist_item(code, display_value, description, status)
VALUES ('businessLicense', 'Business License', 'License of the Registered Business', 'c');
INSERT INTO application.checklist_item(code, display_value, description, status)
VALUES ('foreignInvestment', 'Foreign Investment', 'Foreign Investment', 'c');
INSERT INTO application.checklist_item(code, display_value, description, status)
VALUES ('businessPlan', 'Business Plan', 'Business plan for commercial applications only', 'c');
INSERT INTO application.checklist_item(code, display_value, description, status)
VALUES ('fund', 'Proof of Funds', 'Letter from Bank, Bank Statements, etc.', 'c');
INSERT INTO application.checklist_item(code, display_value, description, status)
VALUES ('existingLease', 'Existing Leases', 'Natural Name and Business', 'c');
INSERT INTO application.checklist_item(code, display_value, description, status)
VALUES ('permit', 'Permit to Hold, Reside or Occupy Land', 'Permit to Hold, Reside or Occupy Land', 'c');
INSERT INTO application.checklist_item(code, display_value, description, status)
VALUES ('termAndCondition', 'Terms and Conditions of Lease or Supplementary agreements (if any)', 'Terms and Conditions Agreement', 'c');
INSERT INTO application.checklist_item(code, display_value, description, status)
VALUES ('environmentImpact', 'Environment Impact Assessment', 'Impact of Application on Enviroment', 'c');
INSERT INTO application.checklist_item(code, display_value, description, status)
VALUES ('visa', 'Visa (Foreigners only)', 'Resident, Work Visa, Business Visa, etc. This only applies to Foreigners', 'c');



INSERT INTO application.checklist_item_in_group(checklist_group_code, checklist_item_code)
SELECT cg.code, ci.code FROM application.checklist_item ci, application.checklist_group cg WHERE ci.code = 'contact' 
OR ci.code = 'id' 
OR ci.code = 'powerOfAttorney'
OR ci.code = 'existingLease'
OR ci.code = 'termAndCondition'
OR ci.code = 'environmentImpact';

-- Load Checklist_item_in_group
INSERT INTO application.checklist_item_in_group(checklist_group_code, checklist_item_code)
SELECT cg.code, ci.code FROM application.checklist_item ci, application.checklist_group cg WHERE cg.code = 'agricultural' AND ci.code = 'visa';
INSERT INTO application.checklist_item_in_group(checklist_group_code, checklist_item_code)
SELECT cg.code, ci.code FROM application.checklist_item ci, application.checklist_group cg WHERE cg.code = 'agricultural' AND ci.code = 'fund';
INSERT INTO application.checklist_item_in_group(checklist_group_code, checklist_item_code)
SELECT cg.code, ci.code FROM application.checklist_item ci, application.checklist_group cg WHERE cg.code = 'agricultural' AND ci.code = 'permit';

INSERT INTO application.checklist_item_in_group(checklist_group_code, checklist_item_code)
SELECT cg.code, ci.code FROM application.checklist_item ci, application.checklist_group cg WHERE cg.code = 'residential' AND ci.code = 'visa';
INSERT INTO application.checklist_item_in_group(checklist_group_code, checklist_item_code)
SELECT cg.code, ci.code FROM application.checklist_item ci, application.checklist_group cg WHERE cg.code = 'residential' AND ci.code = 'permit';

INSERT INTO application.checklist_item_in_group(checklist_group_code, checklist_item_code)
SELECT cg.code, ci.code FROM application.checklist_item ci, application.checklist_group cg WHERE cg.code = 'commercial' AND ci.code = 'businessLicense';
INSERT INTO application.checklist_item_in_group(checklist_group_code, checklist_item_code)
SELECT cg.code, ci.code FROM application.checklist_item ci, application.checklist_group cg WHERE cg.code = 'commercial' AND ci.code = 'businessName';
INSERT INTO application.checklist_item_in_group(checklist_group_code, checklist_item_code)
SELECT cg.code, ci.code FROM application.checklist_item ci, application.checklist_group cg WHERE cg.code = 'commercial' AND ci.code = 'visa';
INSERT INTO application.checklist_item_in_group(checklist_group_code, checklist_item_code)
SELECT cg.code, ci.code FROM application.checklist_item ci, application.checklist_group cg WHERE cg.code = 'commercial' AND ci.code = 'foreignInvestment';
INSERT INTO application.checklist_item_in_group(checklist_group_code, checklist_item_code)
SELECT cg.code, ci.code FROM application.checklist_item ci, application.checklist_group cg WHERE cg.code = 'commercial' AND ci.code = 'fund';
INSERT INTO application.checklist_item_in_group(checklist_group_code, checklist_item_code)
SELECT cg.code, ci.code FROM application.checklist_item ci, application.checklist_group cg WHERE cg.code = 'commercial' AND ci.code = 'permit';
INSERT INTO application.checklist_item_in_group(checklist_group_code, checklist_item_code)
SELECT cg.code, ci.code FROM application.checklist_item ci, application.checklist_group cg WHERE cg.code = 'commercial' AND ci.code = 'businessPlan';


-- BA Unit Types
UPDATE administrative.ba_unit_type SET status = 'c'
WHERE code IN ('leasedUnit'); 

UPDATE administrative.ba_unit_type SET status = 'x'
WHERE code NOT IN ('leasedUnit'); 

INSERT INTO administrative.ba_unit_type(code, display_value, description, status)
SELECT 'estateUnit','Noble Estate',NULL,'c'
WHERE NOT EXISTS (SELECT code FROM administrative.ba_unit_rel_type WHERE code = 'estateUnit');

INSERT INTO administrative.ba_unit_type(code, display_value, description, status)
SELECT 'taxUnit','Tax Allotment',NULL,'c'
WHERE NOT EXISTS (SELECT code FROM administrative.ba_unit_rel_type WHERE code = 'taxUnit');

INSERT INTO administrative.ba_unit_type(code, display_value, description, status)
SELECT 'townAllotmentUnit','Town Allotment',NULL,'c'
WHERE NOT EXISTS (SELECT code FROM administrative.ba_unit_rel_type WHERE code = 'townAllotmentUnit');

INSERT INTO administrative.ba_unit_type(code, display_value, description, status)
SELECT 'islandUnit','Island',NULL,'c'
WHERE NOT EXISTS (SELECT code FROM administrative.ba_unit_rel_type WHERE code = 'islandUnit');

INSERT INTO administrative.ba_unit_type(code, display_value, description, status)
SELECT 'townUnit','Town',NULL,'c'
WHERE NOT EXISTS (SELECT code FROM administrative.ba_unit_rel_type WHERE code = 'townUnit');


-- BA Unit Relationship Types
INSERT INTO administrative.ba_unit_rel_type(code, display_value, description, status)
SELECT 'island','Island',NULL,'c'
WHERE NOT EXISTS (SELECT code FROM administrative.ba_unit_rel_type WHERE code = 'island');

INSERT INTO administrative.ba_unit_rel_type(code, display_value, description, status)
SELECT 'town','Town',NULL,'c'
WHERE NOT EXISTS (SELECT code FROM administrative.ba_unit_rel_type WHERE code = 'town');

INSERT INTO administrative.ba_unit_rel_type(code, display_value, description, status)
SELECT 'estate','Estate',NULL,'c'
WHERE NOT EXISTS (SELECT code FROM administrative.ba_unit_rel_type WHERE code = 'estate');

INSERT INTO administrative.ba_unit_rel_type(code, display_value, description, status)
SELECT 'allotment','Allotment',NULL,'c'
WHERE NOT EXISTS (SELECT code FROM administrative.ba_unit_rel_type WHERE code = 'allotment');

INSERT INTO administrative.ba_unit_rel_type(code, display_value, description, status)
SELECT 'lease','Lease',NULL,'c'
WHERE NOT EXISTS (SELECT code FROM administrative.ba_unit_rel_type WHERE code = 'lease');


-- Party Role Types
UPDATE party.party_role_type
SET status = 'x'
WHERE code NOT IN ('bank', 'lodgingAgent'); 

INSERT INTO party.party_role_type (code, status, display_value)
SELECT 'lawyer','c','Lawyer::::TONGAN'
WHERE NOT EXISTS (SELECT code FROM party.party_role_type WHERE code = 'lawyer');

INSERT INTO party.party_role_type (code, status, display_value)
SELECT 'noble','c','Noble::::TONGAN'
WHERE NOT EXISTS (SELECT code FROM party.party_role_type WHERE code = 'noble');

INSERT INTO party.party_role_type (code, status, display_value)
SELECT 'king','c','King::::TONGAN'
WHERE NOT EXISTS (SELECT code FROM party.party_role_type WHERE code = 'king');


-- RRR Types
UPDATE administrative.rrr_type SET status = 'c'
WHERE code IN ('lifeEstate'); 