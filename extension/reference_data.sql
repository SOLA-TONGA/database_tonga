
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