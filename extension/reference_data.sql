-- Configure Tongan Language Translations for Code Reference values
DELETE FROM system.language; 
INSERT INTO system.language (code, display_value, active, is_default, item_order)
VALUES ('en', 'English::::Fakapalagi', TRUE, TRUE, 1);
INSERT INTO system.language (code, display_value, active, is_default, item_order)
VALUES ('to', 'Tongan::::Fakatonga', TRUE, FALSE, 2);

-- RRR Types

-- Disable all RRR types by default
UPDATE administrative.rrr_type SET status = 'x';

-- Enable types for SOLA Tonga
UPDATE administrative.rrr_type SET status = 'c'
WHERE code IN ('lease', 'lifeEstate', 'ownership', 'mortgage', 'caveat'); 

UPDATE administrative.rrr_type SET is_primary = TRUE
WHERE code IN ('lease', 'ownership'); 

UPDATE administrative.rrr_type SET is_primary = FALSE
WHERE code IN ('lifeEstate');

UPDATE administrative.rrr_type SET display_value = 'Landholder'
WHERE code IN ('ownership'); 

INSERT INTO administrative.rrr_type(code, display_value, rrr_group_type_code, is_primary, party_required, share_check, status, description)
SELECT 'sublease','Sublease', 'rights', TRUE, TRUE, FALSE, 'c', 'Indicates the property is subject to sublease'
WHERE NOT EXISTS (SELECT code FROM administrative.rrr_type WHERE code = 'sublease');

INSERT INTO administrative.rrr_type(code, rrr_group_type_code, display_value, is_primary, share_check, party_required, status, description)
    SELECT 'easement', 'rights', 'Easement', FALSE, FALSE, FALSE, 'c', 'Indicates the property is subject to an easement as the servient tenement or that the property has been granted rights to an easement over another property as the dominant tenement.'
    WHERE NOT EXISTS (SELECT code FROM administrative.rrr_type WHERE code = 'easement');

INSERT INTO administrative.rrr_type(code, rrr_group_type_code, display_value, is_primary, share_check, party_required, status, description)
    SELECT 'trustee', 'responsibilities', 'Trustee', FALSE, FALSE, TRUE, 'c', 'Trustee(s) appointed by the King to act for the lawful successor of an allotment where the successor is a minor (i.e. has not attained the age of 21).'
    WHERE NOT EXISTS (SELECT code FROM administrative.rrr_type WHERE code = 'trustee');	

	
	

-- Service types for SOLA Tonga
INSERT INTO application.request_category_type (code, display_value, description, status)
SELECT 'applicationServices', 'Application Services', 'Services used to support application processing', 'c' WHERE 'applicationServices' NOT IN 
(SELECT code FROM application.request_category_type); 

INSERT INTO application.request_category_type (code, display_value, description, status)
SELECT 'docRegServices', 'Document Registration Services', 'Services used to support document registration processing', 'c' WHERE 'docRegServices' NOT IN 
(SELECT code FROM application.request_category_type);

-- Default existing request types (a.k.a. service types) to disabled then enable those
-- used for Tonga. 
UPDATE application.request_type SET status = 'x';

-- *** Tongan application services ***
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description, display_order, display_group_name)
    VALUES ('checklist','applicationServices','Checklist::::TONGAN','c',5,0.00,0.00,0.00,0,
	null,null,null,'Checklist Service applicable for different types of applications', 5, 'Workflow');
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description, display_order, display_group_name)
    VALUES ('siteInspection','applicationServices','Site Inspection::::TONGAN','c',5,0.00,0.00,0.00,0,
	null,null,null,'Indicates the application will require a site inspection', 10, 'Workflow');
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description, display_order, display_group_name)
    VALUES ('ministerBriefing','applicationServices','Ministerial Briefing::::TONGAN','c',5,0.00,0.00,0.00,0,
	null,null,null,'Briefing for the Minister of Lands to gain approval for the application', 15, 'Workflow');
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description, display_order, display_group_name)
    VALUES ('cabinetSubmission','applicationServices','Cabinet Submission::::TONGAN','c',5,0.00,0.00,0.00,0,
	null,null,null,'Submission to cabinet for thier approval of the application. Includes notifying application
	of the cabinet decision', 20, 'Workflow');	
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description, display_order, display_group_name)
    VALUES ('itemNumber','applicationServices','Issue Item Number::::TONGAN','c',2,0.00,0.00,0.00,0,
	null,null,null,'Issues an item number to track teh application as is progresses through the Mapping and Survey 
	department.', 25, 'Workflow');	
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description, display_order, display_group_name)
    VALUES ('survey','applicationServices','Survey::::TONGAN','c',90,0.00,0.00,0.00,0,
	null,null,null,'Ministry to conduct survey of the lease or allotment area', 30, 'Workflow');
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description, display_order, display_group_name)
    VALUES ('draftDeed','applicationServices','Draft Deed::::TONGAN','c',5,0.00,0.00,0.00,0,
	null,null,null,'Draft Deed of Grant or Deed of Lease including a diagram of the allotment or lease', 35, 'Workflow');
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description, display_order, display_group_name)
    VALUES ('signDeed','applicationServices','Sign Deed::::TONGAN','c',5,0.00,0.00,0.00,0,
	null,null,null,'Organise individuals to attend and sign the lease with the minister and initial payment
	of registration fee and annual rental', 40, 'Workflow');
	
-- *** Registration Services ***
-- Allotments
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description, display_order, display_group_name)
    VALUES ('taxapi','registrationServices','Register Tax Alloment::::TONGAN','c',5,7.00,0.00,0.00,0, 'Register ''api to <name>','ownership','new','Used to register a new tax ''api.', 300, 'Allotment');
	
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description, display_order, display_group_name)
    VALUES ('townapi','registrationServices','Register Town Allotment::::TONGAN','c',5,3.50,0.00,0.00,0, 'Register ''api to <name>','ownership','new','Used to register a new town ''api.', 305, 'Allotment');
	
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description, display_order, display_group_name)
    VALUES ('apiSurrender','registrationServices','Transfer Allotment - Surrender::::TONGAN','c',5,0,0.00,0.00,0, 'Surrender ''api to <name>','ownership','vary','Used to transfer an ''api to another person or the crown when surrendered by the land holder', 310, 'Allotment');
	
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description, display_order, display_group_name)
    VALUES ('apiExchange','registrationServices','Transfer Allotment - Exchange::::TONGAN','c',5,0,0.00,0.00,0, 'Exchange ''api with <name>','ownership','vary','Used to transfer an ''api to another person due to an exchange of land', 315, 'Allotment');
	
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description, display_order, display_group_name)
    VALUES ('apiEjectment','registrationServices','Transfer Allotment - Ejectment::::TONGAN','c',5,0,0.00,0.00,0, 'Transfered because of ejectment','ownership','vary','Used to transfer an ''api to the estate holder as a result of ejectment', 320, 'Allotment');
	
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description, display_order, display_group_name)
    VALUES ('cancelApi','registrationServices','Cancel Allotment::::TONGAN','c',5,0,0.00,0.00,0, 'Cancelled', NULL,'cancel','Used to cancel an ''Api. Used when an ''Api is subdivided or destroyed', 325, 'Allotment');

-- Leases
UPDATE 	application.request_type 
SET 	display_value = 'Register Lease::::TONGAN',
		status = 'c',
		description = 'Register the new lease details',
		base_fee = 21.00,
		value_base_fee = 0.00, 
		area_base_fee = 0.00, 
		nr_days_to_complete = 5,
		rrr_type_code = null,
		type_action_code = null,
		display_order = 100,
		display_group_name = 'Lease'
WHERE   code = 'registerLease';

UPDATE 	application.request_type 
SET 	display_value = 'Transfer Lease::::TONGAN',
		status = 'c',
		description = 'Transfer lease details',
		notation_template = 'Transfer lease of nn years to <name>',
		base_fee = 14.00,
		value_base_fee = 0.00, 
		area_base_fee = 0.00, 
		nr_days_to_complete = 5,
		display_order = 105,
		display_group_name = 'Lease'
WHERE   code = 'varyLease';
	
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description, display_order, display_group_name)
    VALUES ('leaseInPossession','registrationServices','Transfer Lease - Mortgagee in Possession::::TONGAN','c',5,14.00,0.00,0.00,0, 'Mortgagee in possession','lease','vary','Used to to transfer a lease to the bank or a new mortgagor in the case where the original mortgagor is in default', 110, 'Lease');
	
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description, display_order, display_group_name)
    VALUES ('leaseProbate','registrationServices','Transfer Lease - Probate::::TONGAN','c',5,14.00,0.00,0.00,0, 'Probate','lease','vary','Used to to transfer a lease to new lessee(s) under probate.', 115, 'Lease');

INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description, display_order, display_group_name)
    VALUES ('leaseDocument','registrationServices','Register Document Affecting Leasehold Title::::TONGAN','c',5,1.80,0.00,0.00,0,
	'Register document','lease','vary','Used to register a document affecting a Lease', 120, 'Lease');
	
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description, display_order, display_group_name)
    VALUES ('renewLease','registrationServices','Variation of Lease::::TONGAN','c',5,0.00,0.00,0.00,0,
	'Renew or vary','lease','vary','Renew or vary lease', 125, 'Lease');
	
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description, display_order, display_group_name)
    VALUES ('surrenderLease','registrationServices','Surrender Lease::::TONGAN','c',5,0.00,0.00,0.00,0,
	'Surrender',NULL,'cancel','Surrender lease', 130, 'Lease');

INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description, display_order, display_group_name)
    VALUES ('terminateLease','registrationServices','Terminate Lease::::TONGAN','c',5,0.00,0.00,0.00,0,
	'Termination',NULL,'cancel','Terminate lease', 135, 'Lease');

	
-- Sublease
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description, display_order, display_group_name)
    VALUES ('registerSublease','registrationServices','Register Sublease::::TONGAN','c',5,10.50,0.00,0.00,0,
	'Sublease of nn years to <name>','sublease','new','Register new sublease details', 150, 'Sublease');
	
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description, display_order, display_group_name)
    VALUES ('varySublease','registrationServices','Variation of Sublease::::TONGAN','c',5,7.00,0.00,0.00,0,
	'Variation','sublease','vary','Variation of sublease', 153, 'Sublease');
	
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description, display_order, display_group_name)
    VALUES ('transferSublease','registrationServices','Transfer Sublease::::TONGAN','c',5,7.00,0.00,0.00,0,
	'Transfer sublease of nn years to <name>','sublease','vary','Transfer sublease', 155, 'Sublease');
	
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description, display_order, display_group_name)
    VALUES ('subleaseInPossession','registrationServices','Transfer Sublease - Mortgagee in Possession::::TONGAN','c',5,7.00,0.00,0.00,0, 'Mortgagee in possession','sublease','vary','Used to to transfer a sublease to the bank or a new mortgagor in the case where the original mortgagor is in default', 160, 'Sublease');
	
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description, display_order, display_group_name)
    VALUES ('subleaseProbate','registrationServices','Transfer Sublease - Probate::::TONGAN','c',5,7.00,0.00,0.00,0, 'Probate','sublease','vary','Used to to transfer a sublease to new lessee(s) under probate.', 165, 'Sublease');

INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description, display_order, display_group_name)
    VALUES ('surrenderSublease','registrationServices','Surrender Sublease::::TONGAN','c',5,0.00,0.00,0.00,0,'Surrender',NULL,'cancel','Surrender sublease', 170, 'Sublease');

INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description, display_order, display_group_name)
    VALUES ('terminateSublease','registrationServices','Terminate Sublease::::TONGAN','c',5,0.00,0.00,0.00,0,
	'Termination',NULL,'cancel','Terminate sublease', 175, 'Sublease');

-- Mortgages
UPDATE 	application.request_type 
SET 	display_value = 'Register Mortgage::::TONGAN',
		status = 'c',
		description = 'Register new mortgage details',
		base_fee = 23.00,
		value_base_fee = 0.00, 
		area_base_fee = 0.00, 
		nr_days_to_complete = 5,
		display_order = 200,
		display_group_name = 'Mortgage'
WHERE   code = 'mortgage';

UPDATE 	application.request_type 
SET 	display_value = 'Variation of Mortgage::::TONGAN',
		status = 'c',
		description = 'Can be used to change the amount, interest rate or the term of the mortgage',
		notation_template = 'Variation of mortgage',
		base_fee = 23.00,
		value_base_fee = 0.00, 
		area_base_fee = 0.00, 
		nr_days_to_complete = 5,
	    display_order = 205,
		display_group_name = 'Mortgage'
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
		nr_days_to_complete = 5,
		display_order = 210,
		display_group_name = 'Mortgage'
WHERE   code = 'removeRestriction';	

INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description, display_order, display_group_name)
    VALUES ('assignMortgage','registrationServices','Assign Mortgage::::TONGAN','c',5,0.00,0.00,0.00,0,
	'Assign mortgage to <lender>','mortgage','vary','Can be used to assign (i.e. transfer) the mortgage to a new mortgagee.', 215, 'Mortgage');
	
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description, display_order, display_group_name)
    VALUES ('mortgageDocument','registrationServices','Register Document Affecting a Mortgage::::TONGAN','c',5,2.00,0.00,0.00,0,
	'Register document','mortgage','vary','Used to register a document affecting a Mortgage', 220, 'Mortgage');

-- Caveat
UPDATE 	application.request_type 
SET 	display_value = 'Register Caveat',
		status = 'c',
		description = 'Register new caveat on lease or sublease',
		base_fee = 0.00,
		value_base_fee = 0.00, 
		area_base_fee = 0.00, 
		nr_days_to_complete = 5,
		display_order = 400,
		display_group_name = 'Other'
WHERE   code = 'caveat';

UPDATE 	application.request_type 
SET 	display_value = 'Variation to Caveat',
		status = 'c',
		description = 'Record a variation to a caveat.',
		base_fee = 0.00,
		value_base_fee = 0.00, 
		area_base_fee = 0.00, 
		nr_days_to_complete = 5,
		display_order = 405,
		display_group_name = 'Other'
WHERE   code = 'varyCaveat';

UPDATE 	application.request_type 
SET 	display_value = 'Remove Caveat',
		status = 'c',
		description = 'Remove a caveat.',
		rrr_type_code = 'caveat',
		type_action_code = 'cancel',
		base_fee = 0.00,
		value_base_fee = 0.00, 
		area_base_fee = 0.00, 
		nr_days_to_complete = 5,
		display_order = 410,
		display_group_name = 'Other'
WHERE   code = 'removeCaveat';

-- Life Estate
UPDATE 	application.request_type 
SET 	display_value = 'Register Life Estate',
		status = 'c',
		description = 'Register new life estate on an allotment',
		base_fee = 0.00,
		value_base_fee = 0.00, 
		area_base_fee = 0.00, 
		nr_days_to_complete = 5,
		display_order = 415,
		display_group_name = 'Other'
WHERE   code = 'lifeEstate';

INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description, display_order, display_group_name)
    VALUES ('varyLifeEstate','registrationServices','Variation of Life Estate::::TONGAN','c',5,0.00,0.00,0.00,0,
	'Life estate','lifeEstate','vary','Used to change the details of a life estate', 420, 'Other');

INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description, display_order, display_group_name)
    VALUES ('removeLifeEstate','registrationServices','Remove Life Estate::::TONGAN','c',5,0.00,0.00,0.00,0,'Life estate','lifeEstate','cancel','Used to remove a life estate from an allotment', 425, 'Other');

-- Easements
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description, display_order, display_group_name)
    VALUES ('easement','registrationServices','Register Easement::::TONGAN','c',5,0.00,0.00,0.00,1,
	'Servient <easement type> over <parcel1> in favour of <parcel2> / Dominant <easement type>
	in favour of <parcel1> over <parcel2>','easement','new','Register easement', 430, 'Other');
	
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description, display_order, display_group_name)
    VALUES ('varyEasement','registrationServices','Variation of Easement::::TONGAN','c',5,0.00,0.00,0.00,1,
	'Easement <reference> changed','easement','vary','Change easement', 432, 'Other');
	
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description, display_order, display_group_name)
    VALUES ('removeEasement','registrationServices','Cancel Easement::::TONGAN','c',5,0.00,0.00,0.00,1,
	'Easement <reference> cancelled','easement','cancel','Cancel easement', 435, 'Other');

-- Trustee
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description, display_order, display_group_name)
    VALUES ('trustee','registrationServices','Register Trustee::::TONGAN','c',5,0.00,0.00,0.00,1,
	'Trustee <name>','trustee','new','Register trustee', 440, 'Other');
	
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description, display_order, display_group_name)
    VALUES ('varyTrustee','registrationServices','Variation to Trustee::::TONGAN','c',5,0.00,0.00,0.00,1,
	'Trustee <name> changed','trustee','vary','Change trustee', 445, 'Other');
	
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description, display_order, display_group_name)
    VALUES ('removeTrustee','registrationServices','Cancel Trustee::::TONGAN','c',5,0.00,0.00,0.00,1,
	'Trustee <name> cancelled','trustee','cancel','Cancel/remove trustee from property', 450, 'Other');
	
-- Permits & Power of Attorney
UPDATE 	application.request_type 
SET 	display_value = 'Register Power of Attorney',
        request_category_code = 'docRegServices',
		status = 'c',
		description = 'Register Power of Attorney',
		base_fee = 0.00,
		value_base_fee = 0.00, 
		area_base_fee = 0.00, 
		nr_days_to_complete = 5,
		display_order = 520,
		display_group_name = 'Permits and Power of Attorney'
WHERE   code = 'regnPowerOfAttorney';

UPDATE 	application.request_type 
SET 	display_value = 'Cancel Power of Attorney',
        request_category_code = 'docRegServices',
		status = 'c',
		description = 'Cancel Power of Attorney',
		base_fee = 0.00,
		value_base_fee = 0.00, 
		area_base_fee = 0.00, 
		nr_days_to_complete = 5,
		display_order = 525,
		display_group_name = 'Permits and Power of Attorney'
WHERE   code = 'cnclPowerOfAttorney';

INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description, display_order, display_group_name)
    VALUES ('permit','docRegServices','Register Permit::::TONGAN','c',5,21.00,0.00,0.00,0,
	NULL,NULL,NULL,'Registration of permit for occupation by alien(s), removal of Sand, etc.', 510, 'Permits and Power of Attorney');
	
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description, display_order, display_group_name)
    VALUES ('cancelPermit','docRegServices','Cancel Permit::::TONGAN','c',5,0.00,0.00,0.00,0,
	NULL,NULL,NULL,'Cancellation of permit for occupation by alien(s), removal of Sand, etc.', 515, 'Permits and Power of Attorney');

-- Registry Correction Services	
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description, display_order, display_group_name)
    VALUES ('correctRegistry','registrationServices','Correct Registry::::TONGAN','c',1,2.00,0.00,0.00,0,
	'Registry Correction', null, null, 'Allows corrections to the registered information to be made.', 600, 'Corrections');
	
INSERT INTO application.request_type(code, request_category_code, display_value, 
            status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            description, display_order, display_group_name)
    VALUES ('correctRegistryRem','registrationServices','Correct Registry (Remove Right)::::TONGAN','c',1,2.00,0.00,0.00,0,
	'Registry Correction', null, 'cancel', 'Allows corrections to the registered information to be made by removing rights.', 605, 'Corrections');
	
	
-- Revise the list of document types for SOLA Tonga
DELETE FROM application.request_type_requires_source_type;
DELETE FROM source.administrative_source_type; 

INSERT INTO source.administrative_source_type (code,display_value,status,is_for_registration, description)
VALUES ('leaseApplication','Lease Application','c','FALSE', 'Application for lease of a tax or town allotment'); 
INSERT INTO source.administrative_source_type (code,display_value,status,is_for_registration, description)
VALUES ('subleaseApp','Sublease Application','c','FALSE', 'Application for sublease of a tax or town allotment');
INSERT INTO source.administrative_source_type (code,display_value,status,is_for_registration, description)
VALUES ('cabinetSubmission','Cabinet Submission','c','FALSE', 'Submission to cabinet for thier approval of a lease or related land transaction');  
INSERT INTO source.administrative_source_type (code,display_value,status,is_for_registration, description)
VALUES ('cabinetDecision','Cabinet Decision','c','FALSE', 'Document summarising the decision by cabinet for a lease or related land transaction');  
INSERT INTO source.administrative_source_type (code,display_value,status,is_for_registration, description)
VALUES ('caveat','Caveat','c','FALSE', 'A document that identifies the person lodging the caveat (the caveator) has a priority interest in the property. Any dealings on the property require the caveator to be notified.');
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
INSERT INTO source.administrative_source_type (code,display_value,status,is_for_registration, description)
VALUES ('siteInspectionForm','Site Inspection','c','FALSE', 'Document that details a site inspection that has been done' );
INSERT INTO source.administrative_source_type (code,display_value,status,is_for_registration, description)
VALUES ('ministerBriefing','Ministerial Briefing','c','FALSE', 'Document sent to the Minister detailing an application being lodged' );
INSERT INTO source.administrative_source_type (code,display_value,status,is_for_registration, description)
VALUES ('deedOfLease','Deed of Lease','c','FALSE', 'A scanned copy of the Deed of Lease' );
INSERT INTO source.administrative_source_type (code,display_value,status,is_for_registration, description)
VALUES ('deedOfGrant','Deed of Grant','c','FALSE', 'A scanned copy of a Deed of Grant for an allotment' );
INSERT INTO source.administrative_source_type (code,display_value,status,is_for_registration, description)
VALUES ('deedOfSublease','Deed of Sublease','c','FALSE', 'A scanned copy of a Deed of Sublease' );
INSERT INTO source.administrative_source_type (code,display_value,status,is_for_registration, description)
VALUES ('mortgageDoc','Mortgage Document','c','FALSE', 'Represents a document such as an Assignation, Grant of Probate, Notification of Default, etc, that can be registered to a mortgage.' );
INSERT INTO source.administrative_source_type (code,display_value,status,is_for_registration, description)
VALUES ('will','Probated Will','c','FALSE', 'A legal declaration that names the benefactors of a deceased person’s estate along with those responsible for administering the estate. The Will must be probated and legally enforceable by the executor.'); 
INSERT INTO source.administrative_source_type (code,display_value,status,is_for_registration, description)
VALUES ('permit','Permit','c','TRUE', 'Document type that can be registered to indicates the holder(s) of the permit have been granted the rights described by the permit. e.g. Occupation by alien(s), Removal of Sand, etc.');
INSERT INTO source.administrative_source_type (code,display_value,status,is_for_registration, description)
VALUES ('clientRequest','Client Request','c','FALSE', 'Document or cover letter provided by client describing the reasons for a registration transaction');

-- *** Load Checklist Group
INSERT INTO application.checklist_group(code, display_value, description, status)
VALUES ('agricultural', 'Agricultural', 'Land used for farming and raising livestock.', 'c');
INSERT INTO application.checklist_group(code, display_value, description, status)
VALUES ('residential', 'Residential', 'Land used for residence.', 'c');
INSERT INTO application.checklist_group(code, display_value, description, status)
VALUES ('commercial', 'Commercial', 'Land or buildings used to generate a profit.', 'c');
INSERT INTO application.checklist_group(code, display_value, description, status)
VALUES ('government', 'Government Ministries', 'Land used by Government Ministries.', 'c');

-- *** Load Checklist Items
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


-- *** Load checklist_item_in_group
-- Agricultural Group
INSERT INTO application.checklist_item_in_group(checklist_group_code, checklist_item_code)
SELECT 'agricultural', ci.code FROM application.checklist_item ci 
WHERE ci.code IN ('id', 'powerOfAttorney', 'contact', 'existingLease', 'termAndCondition', 
                  'environmentImpact', 'visa', 'fund', 'permit')
AND NOT EXISTS (SELECT checklist_item_code FROM application.checklist_item_in_group
                WHERE checklist_group_code = 'agricultural'
				AND checklist_item_code = ci.code);  
				
-- Government Group
INSERT INTO application.checklist_item_in_group(checklist_group_code, checklist_item_code)
SELECT 'government', ci.code FROM application.checklist_item ci 
WHERE ci.code IN ('contact', 'existingLease', 'termAndCondition', 'environmentImpact')
AND NOT EXISTS (SELECT checklist_item_code FROM application.checklist_item_in_group
                WHERE checklist_group_code = 'government'
				AND checklist_item_code = ci.code);  

-- Residential Group
INSERT INTO application.checklist_item_in_group(checklist_group_code, checklist_item_code)
SELECT 'residential', ci.code FROM application.checklist_item ci 
WHERE ci.code IN ('id', 'powerOfAttorney', 'contact', 'existingLease', 'termAndCondition', 
                  'environmentImpact', 'visa', 'permit')
AND NOT EXISTS (SELECT checklist_item_code FROM application.checklist_item_in_group
                WHERE checklist_group_code = 'residential'
				AND checklist_item_code = ci.code);  

-- Commerical Group
INSERT INTO application.checklist_item_in_group(checklist_group_code, checklist_item_code)
SELECT 'commercial', ci.code FROM application.checklist_item ci 
WHERE ci.code IN ('id', 'powerOfAttorney', 'contact', 'existingLease', 'termAndCondition', 
                  'environmentImpact', 'visa', 'fund', 'permit','businessLicense', 
				  'businessName', 'foreignInvestment', 'businessPlan')
AND NOT EXISTS (SELECT checklist_item_code FROM application.checklist_item_in_group
                WHERE checklist_group_code = 'commercial'
				AND checklist_item_code = ci.code);  				


				
				
-- BA Unit Types
UPDATE administrative.ba_unit_type 
SET status = 'c',
    display_value = 'Lease'
WHERE code IN ('leasedUnit'); 

UPDATE administrative.ba_unit_type SET status = 'x'
WHERE code NOT IN ('leasedUnit'); 

INSERT INTO administrative.ba_unit_type(code, display_value, description, status)
SELECT 'estateUnit','Estate',NULL,'c'
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

INSERT INTO administrative.ba_unit_type(code, display_value, description, status)
SELECT 'subleaseUnit','Sublease',NULL,'c'
WHERE NOT EXISTS (SELECT code FROM administrative.ba_unit_rel_type WHERE code = 'subleaseUnit');


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

INSERT INTO administrative.ba_unit_rel_type(code, display_value, description, status)
SELECT 'sublease','Sublease',NULL,'c'
WHERE NOT EXISTS (SELECT code FROM administrative.ba_unit_rel_type WHERE code = 'sublease');


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


-- Land Use Codes
UPDATE cadastre.land_use_type
SET display_value = 'Residential::::''Api Kolo'
WHERE code = 'residential';

-- Parcel Types
UPDATE cadastre.cadastre_object_type
SET status = 'x'
WHERE code != 'parcel';

-- Requisitioned Status Type
UPDATE application.application_status_type
SET display_value = 'On Hold'
WHERE code = 'requisitioned';