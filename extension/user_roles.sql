ALTER TABLE system.approle DISABLE TRIGGER ALL; 
ALTER TABLE system.approle_appgroup DISABLE TRIGGER ALL;
 
DELETE FROM system.approle_appgroup;
DELETE FROM system.approle; 

INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'ManageBR', 'Admin - Business Rules', 'c', 'Allows system administrators to manage (edit and save) business rules.'
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'ManageBR');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'ChangePassword', 'Admin - Change Password', 'c', 'Allows a user to change their password and edit thier user name. This role should be included in every security group. '
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'ChangePassword');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'NoPasswordExpiry', 'Admin - No Password Expiry', 'c', 'Users with this role will not be subject to a password expiry if one is in place. This role can be assigned to user accounts used by other systems to integrate with the SOLA web services. Note that password expiry can be configured using the pword-expiry-days system.setting'
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'NoPasswordExpiry');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'ManageRefdata', 'Admin - Reference Data', 'c', 'Allows system administrators to manage (edit and save) reference data details.  Users with this role will be able to login to the SOLA Admin application. '
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'ManageRefdata');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'ManageSettings', 'Admin - System Settings', 'c', 'Allows system administrators to manage (edit and save) system setting details. Users with this role will be able to login to the SOLA Admin application. '
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'ManageSettings');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'ManageSecurity', 'Admin - Users and Security', 'c', 'Allows system administrators to manage (edit and save) users, groups and roles. Users with this role will be able to login to the SOLA Admin application. '
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'ManageSecurity');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'ApplnAssignOthers', 'Application - Assign to Other Users', 'c', 'Allows a user to assign an application to any other user in the same security groups they are in. '
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'ApplnAssignOthers');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'ApplnAssignSelf', 'Application - Assign to Self', 'c', 'Allows a user to assign an application to themselves.'
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'ApplnAssignSelf');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'ApplnEdit', 'Application - Edit & Save', 'c', 'Allows application details to be edited and saved. '
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'ApplnEdit');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'ApplnCreate', 'Application - Lodge', 'c', 'Allows new application details to be created (lodged). '
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'ApplnCreate');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'ApplnView', 'Application - Search & View', 'c', 'Allows users to search and view application details.'
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'ApplnView');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'ApplnStatus', 'Application - Status Report', 'c', 'Allows the user to print a status report for the application.'
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'ApplnStatus');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'ApplnUnassignOthers', 'Application - Unassign from Others', 'c', 'Allows the user to unassign an application from any user. '
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'ApplnUnassignOthers');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'ApplnUnassignSelf', 'Application - Unassign from Self', 'c', 'Allows a user to unassign an application from themselves. '
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'ApplnUnassignSelf');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'ApplnApprove', 'Appln Action - Approval', 'c', 'Required to perform the Approve applicaiton action. The Approve action transitions the application into the Approved state. 
All services on the application must be completed before this action is available. '
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'ApplnApprove');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'ApplnArchive', 'Appln Action - Archive', 'c', 'Required to perform the Archive applicaiton action. The Archive action transitions the application into the Completed state.  '
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'ApplnArchive');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'ApplnReject', 'Appln Action - Cancel', 'c', 'Required to perform the Cancel applicaiton action. The Cancel action transitions the application into the Annulled state.  '
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'ApplnReject');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'ApplnDispatch', 'Appln Action - Dispatch', 'c', 'Required to perform the Dispatch application action. Used to indicate that documents have been dispatched to applicant along with any certificates/reports/map prints requested by applicant'
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'ApplnDispatch');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'ApplnRequisition', 'Appln Action - Requisition', 'c', 'Required to perform the Requisition applicaiton action. The Requisition action transitions the application into the Requisitioned state. '
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'ApplnRequisition');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'ApplnResubmit', 'Appln Action - Resubmit', 'c', 'Required to perform the Resubmit applicaiton action. The Resubmit action transitions the application into the Lodged state if it is currently On Hold. '
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'ApplnResubmit');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'ApplnValidate', 'Appln Action - Validate', 'c', 'Required to perform the Validate applicaiton action. Allows the user to manually run the validation rules against the application. '
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'ApplnValidate');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'ApplnWithdraw', 'Appln Action - Withdraw', 'c', 'Required to perform the Withdraw applicaiton action. The Withdraw action transitions the application into the Annulled state.  '
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'ApplnWithdraw');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'BulkApplication', 'Bulk Operations - Login ', 'c', 'Allows the user to login and use the Bulk Operations application. '
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'BulkApplication');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'DashbrdViewAssign', 'Dashboard - View Assigned', 'c', 'Allows the user to view applications assigned to them in the Dashboard. To hide the Dashboard from the user, remove both this role and the Dashboard - View Unassigned role. '
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'DashbrdViewAssign');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'DashbrdViewUnassign', 'Dashboard - View Unassigned', 'c', 'Allows the user to view all unassigned applications in the Dashboard. To hide the Dashboard from the user, remove both this role and the Dashboard - View Assigned role. '
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'DashbrdViewUnassign');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'TransactionCommit', 'Doc Registration - Save', 'c', 'Allows documents for registration such as Power of Attorney and Standard Documents to be saved on the Document Registration screen. '
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'TransactionCommit');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'SourcePrint', 'Document - Print', 'c', 'Allows users to print documents directly from SOLA. '
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'SourcePrint');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'SourceSave', 'Document - Save', 'c', 'Allows document details to be edited and saved'
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'SourceSave');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'SourceSearch', 'Document - Search & View', 'c', 'Allows users to search for documents.'
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'SourceSearch');
/* INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'ExportMap', 'Map - KML Export', 'c', 'Allows the user to export selected features from the map as KML.'
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'ExportMap');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'PrintMap', 'Map - Print', 'c', 'Allows the user to create printouts from the Map'
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'PrintMap');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'ViewMap', 'Map - View', 'c', 'Allows the user to view the map. '
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'ViewMap'); */
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'ParcelSave', 'Parcel - Edit & Save', 'c', 'Allows parcel details to be edited and saved.'
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'ParcelSave');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'PartySave', 'Party - Edit & Save', 'c', 'Allows party details to be edited and saved unless the party is a rightholder. '
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'PartySave');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'RHSave', 'Party - Save Rightholder', 'c', 'Allows parties that are rightholders to be edited and saved.'
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'RHSave');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'PartySearch', 'Party - Search & View', 'c', 'Allows user to search and view party details.'
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'PartySearch');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'BaunitSave', 'Property - Edit & Save', 'c', 'Allows property details to be edited and saved.'
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'BaunitSave');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'BaunitCertificate', 'Property - Print Certificate', 'c', 'Allows the user to generate a property certificate. '
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'BaunitCertificate');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'BaunitSearch', 'Property - Search', 'c', 'Allows users to search for properties. '
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'BaunitSearch');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'ReportGenerate', 'Reporting - Management Reports', 'c', 'Allows users to generate and view management reports (e.g. Lodgement Report)'
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'ReportGenerate');
/* INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'RightsExport', 'Reporting - Rights Export', 'c', 'Allows user to export rights informaiton into CSV format.  '
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'RightsExport'); */
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'cabinetSubmission', 'Service - Cabinet Submission', 'c', 'Application Service. Allows the Cabinet Submission service to be started.'
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'cabinetSubmission');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'cnclPowerOfAttorney', 'Service - Cancel Power of Attorney', 'c', 'Registration Service. Allows the Cancel Power of Attorney service to be started'
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'cnclPowerOfAttorney');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'checklist', 'Service - Checklist', 'c', 'Application Service. Allows the Checklist service to be started.'
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'checklist'); 
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'correctRegistry', 'Service - Correct Registry', 'c', 'Application Service. Allows the Correct Registry service to be started.'
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'correctRegistry'); 
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'correctRegistryRem', 'Service - Correct Registry (Remove Right)', 'c', 'Application Service. Allows the Correct Registry (Remove Right) service to be started.'
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'correctRegistryRem'); 
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'removeRestriction', 'Service - Discharge Mortgage', 'c', 'Registration Service. Allows the Discharge Mortgage service to be started.'
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'removeRestriction');    
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'draftDeed', 'Service - Draft Deed', 'c', 'Application Service. Allows the Draft Deed service to be started.'
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'draftDeed'); 
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'itemNumber', 'Service - Issue Item Number', 'c', 'Application Service. Allows the Issue Item Number service to be started.'
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'itemNumber'); 
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'ministerBriefing', 'Service - Ministerial Briefing', 'c', 'Application Service. Allows the Ministerial Briefing service to be started.'
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'ministerBriefing'); 
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'mortgageDocument', 'Service - Register Document Affecting a Mortgage', 'c', 'Registration Service. Allows the Register Document Affecting a Mortgage service to be started.'
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'mortgageDocument');   
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'leaseDocument', 'Service - Register Document Affecting a Leasehold Title', 'c', 'Registration Service. Allows the Register Document Affecting a Leasehold Title service to be started.'
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'leaseDocument');    
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'registerLease', 'Service - Register Lease', 'c', 'Registration Service. Allows the Register Lease service to be started.'
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'registerLease');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'mortgage', 'Service - Register Mortgage', 'c', 'Registration Service. Allows the Register Mortgage service to be started.'
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'mortgage');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'registerSublease', 'Service - Register Sublease', 'c', 'Registration Service. Allows the Register Sublease service to be started.'
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'registerSublease');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'regnPowerOfAttorney', 'Service - Registration of Power of Attorney', 'c', 'Registration Service. Allows the Registration of Power of Attorney service to be started. '
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'regnPowerOfAttorney');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'signDeed', 'Service - Sign Deed', 'c', 'Application Service. Allows the Sign Deed service to be started.'
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'signDeed'); 
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'siteInspection', 'Service - Site Inspection', 'c', 'Application Service. Allows the Site Inspection service to be started.'
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'siteInspection'); 
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'survey', 'Service - Survey', 'c', 'Application Service. Allows the Survey service to be started.'
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'survey'); 
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'varyLease', 'Service - Transfer Lease', 'c', 'Registration Service. Allows the Transfer Lease service to be started.'
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'varyLease');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'varySublease', 'Service - Transfer Sublease', 'c', 'Registration Service. Allows the Transfer Sublease service to be started.'
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'varySublease');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'varyMortgage', 'Service - Variation of Mortgage', 'c', 'Registration Service. Allows the Variation of Mortgage service to be started.'
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'varyMortgage');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'CancelService', 'Service Action - Cancel', 'c', 'Allows any service to be cancelled.'
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'CancelService');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'CompleteService', 'Service Action - Complete', 'c', 'Allows any service to be completed'
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'CompleteService');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'RevertService', 'Service Action - Revert', 'c', 'Allows any completed service to be reverted to a Pending status for further action. '
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'RevertService');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'StartService', 'Service Action - Start', 'c', 'Allows any user to click the Start action. Note that the user must also have the appropraite Service role as well before they can successfully start the service. '
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'StartService');
 

 -- Add all active roles to the super-group-id
INSERT INTO system.approle_appgroup (approle_code, appgroup_id) 
(SELECT r.code, 'super-group-id' 
 FROM   system.approle r
 WHERE  r.status = 'c'
 AND    NOT EXISTS (SELECT approle_code FROM system.approle_appgroup rg
                    WHERE  rg.approle_code = r.code
				    AND    rg.appgroup_id = 'super-group-id'));
 
ALTER TABLE system.approle ENABLE TRIGGER ALL;
ALTER TABLE system.approle_appgroup ENABLE TRIGGER ALL;
