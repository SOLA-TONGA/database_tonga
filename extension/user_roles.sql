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
   SELECT 'varySublease', 'Service - Variation of Sublease', 'c', 'Registration Service. Allows the Variation of Sublease service to be started.'
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
   

INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'taxapi', 'Service - Register Tax Allotment', 'c', 'Registration Service. Allows the Register Tax Allotment service to be started.' 
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'taxapi');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'townapi', 'Service - Register Town Allotment', 'c', 'Registration Service. Allows the Register Town Allotment service to be started.' 
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'townapi');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'caveat', 'Service - Register Caveat', 'c', 'Registration Service. Allows the Register Caveat service to be started.' 
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'caveat');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'varyCaveat', 'Service - Variation to Caveat', 'c', 'Registration Service. Allows the Variation to Caveat service to be started.' 
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'varyCaveat');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'removeCaveat', 'Service - Remove Caveat', 'c', 'Registration Service. Allows the Remove Caveat service to be started.' 
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'removeCaveat');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'lifeEstate', 'Service - Register Life Estate', 'c', 'Registration Service. Allows the Register Life Estate service to be started.' 
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'lifeEstate');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'apiSurrender', 'Service - Transfer Allotment - Surrender', 'c', 'Registration Service. Allows the Transfer Allotment - Surrender service to be started.' 
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'apiSurrender');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'apiExchange', 'Service - Transfer Allotment - Exchange', 'c', 'Registration Service. Allows the Transfer Allotment - Exchange service to be started.' 
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'apiExchange');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'apiEjectment', 'Service - Transfer Allotment - Ejectment', 'c', 'Registration Service. Allows the Transfer Allotment - Ejectment service to be started.' 
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'apiEjectment');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'cancelApi', 'Service - Cancel Allotment', 'c', 'Registration Service. Allows the Cancel Allotment service to be started.' 
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'cancelApi');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'leaseInPossession', 'Service - Transfer Lease - Mortgagee in Possession', 'c', 'Registration Service. Allows the Transfer Lease - Mortgagee in Possession service to be started.' 
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'leaseInPossession');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'leaseProbate', 'Service - Transfer Lease - Probate', 'c', 'Registration Service. Allows the Transfer Lease - Probate service to be started.' 
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'leaseProbate');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'renewLease', 'Service - Renew Lease', 'c', 'Registration Service. Allows the Renew Lease service to be started.' 
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'renewLease');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'surrenderLease', 'Service - Surrender Lease', 'c', 'Registration Service. Allows the Surrender Lease service to be started.' 
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'surrenderLease');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'terminateLease', 'Service - Terminate Lease', 'c', 'Registration Service. Allows the Terminate Lease service to be started.' 
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'terminateLease');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'subleaseInPossession', 'Service - Transfer Sublease - Mortgagee in Possession', 'c', 'Registration Service. Allows the Transfer Sublease - Mortgagee in Possession service to be started.' 
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'subleaseInPossession');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'subleaseProbate', 'Service - Transfer Sublease - Probate', 'c', 'Registration Service. Allows the Transfer Sublease - Probate service to be started.' 
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'subleaseProbate');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'surrenderSublease', 'Service - Surrender Sublease', 'c', 'Registration Service. Allows the Surrender Sublease service to be started.' 
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'surrenderSublease');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'terminateSublease', 'Service - Terminate Sublease', 'c', 'Registration Service. Allows the Terminate Sublease service to be started.' 
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'terminateSublease');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'assignMortgage', 'Service - Assign Mortgage', 'c', 'Registration Service. Allows the Assign Mortgage service to be started.' 
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'assignMortgage');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'varyLifeEstate', 'Service - Variation of Life Estate', 'c', 'Registration Service. Allows the Variation of Life Estate service to be started.' 
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'varyLifeEstate');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'removeLifeEstate', 'Service - Remove Life Estate', 'c', 'Registration Service. Allows the Remove Life Estate service to be started.' 
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'removeLifeEstate');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'easement', 'Service - Register Easement', 'c', 'Registration Service. Allows the Register Easement service to be started.' 
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'easement');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'varyEasement', 'Service - Variation of Easement', 'c', 'Registration Service. Allows the Variation of Easement service to be started.' 
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'varyEasement');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'removeEasement', 'Service - Cancel Easement', 'c', 'Registration Service. Allows the Cancel Easement service to be started.' 
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'removeEasement');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'trustee', 'Service - Register Trustee', 'c', 'Registration Service. Allows the Register Trustee service to be started.' 
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'trustee');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'varyTrustee', 'Service - Variation to Trustee', 'c', 'Registration Service. Allows the Variation to Trustee service to be started.' 
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'varyTrustee');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'removeTrustee', 'Service - Cancel Trustee', 'c', 'Registration Service. Allows the Cancel Trustee service to be started.' 
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'removeTrustee');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'permit', 'Service - Register Permit', 'c', 'Registration Service. Allows the Register Permit service to be started.' 
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'permit');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'cancelPermit', 'Service - Cancel Permit', 'c', 'Registration Service. Allows the Cancel Permit service to be started.' 
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'cancelPermit');
INSERT INTO system.approle (code, display_value, status, description)
   SELECT 'transferSublease', 'Service - Transfer Sublease', 'c', 'Registration Service. Allows the Transfer Sublease service to be started.'
   WHERE NOT EXISTS (SELECT code FROM system.approle WHERE code = 'transferSublease');

   
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

-- Create Security Groups for Tonga
INSERT INTO appgroup (id, name, description) VALUES ('admin-id', 'Administrator', 'This group is required for SOLA Administrators.');
INSERT INTO appgroup (id, name, description) VALUES ('read-only-id', 'Read Only', 'This group allows read only access to SOLA .details');


-- Add Staff Users...
INSERT INTO system.appuser(
            id, username, first_name, last_name, passwd, active, 
            rowversion, change_user)
    SELECT 'test-id', 'test', 'Test', 'The BOSS', '1b4f0e9851971998e732078544c96b36c3d01cedf7caa332359d6f1d83567014', true, 1, 'test' WHERE  NOT EXISTS (SELECT id FROM system.appuser WHERE id = 'test-id');
INSERT INTO system.appuser(
            id, username, first_name, last_name, passwd, active, 
            rowversion, change_user)
    SELECT '24e16f88-9769-40aa-aedb-b8ff34bfed07', 'semisi', 'Semisi', 'Taufa', '1b4f0e9851971998e732078544c96b36c3d01cedf7caa332359d6f1d83567014', true, 2, 'semisi' WHERE  NOT EXISTS (SELECT id FROM system.appuser WHERE id = '24e16f88-9769-40aa-aedb-b8ff34bfed07');
INSERT INTO system.appuser(
            id, username, first_name, last_name, passwd, active, 
            rowversion, change_user)
    SELECT '6669d58c-daca-4b2e-a9f3-272481be5d7e', 'sione', 'Sione', ' ', '1b4f0e9851971998e732078544c96b36c3d01cedf7caa332359d6f1d83567014', true, 2, 'sione' WHERE  NOT EXISTS (SELECT id FROM system.appuser WHERE id = '6669d58c-daca-4b2e-a9f3-272481be5d7e');
INSERT INTO system.appuser(
            id, username, first_name, last_name, passwd, active, 
            rowversion, change_user)
    SELECT 'd34cf379-cc57-4f32-b4df-18cae6a47d11', 'rosamond', 'Rosamond', 'Bing', '1b4f0e9851971998e732078544c96b36c3d01cedf7caa332359d6f1d83567014', true, 2, 'rosamond' WHERE  NOT EXISTS (SELECT id FROM system.appuser WHERE id = 'd34cf379-cc57-4f32-b4df-18cae6a47d11');
INSERT INTO system.appuser(
            id, username, first_name, last_name, passwd, active, 
            rowversion, change_user)
    SELECT '7106cecd-8f64-4f4a-a52f-2534bf76f3a3', 'warrick', 'Warrick', 'Vea', '1b4f0e9851971998e732078544c96b36c3d01cedf7caa332359d6f1d83567014', true, 2, 'warrick' WHERE  NOT EXISTS (SELECT id FROM system.appuser WHERE id = '7106cecd-8f64-4f4a-a52f-2534bf76f3a3');
INSERT INTO system.appuser(
            id, username, first_name, last_name, passwd, active, 
            rowversion, change_user)
    SELECT '7e6856ac-41ff-4c39-aa29-7b29540f4ef4', 'savelina', 'Savelina', 'Pale', '1b4f0e9851971998e732078544c96b36c3d01cedf7caa332359d6f1d83567014', true, 2, 'savelina' WHERE  NOT EXISTS (SELECT id FROM system.appuser WHERE id = '7e6856ac-41ff-4c39-aa29-7b29540f4ef4');
INSERT INTO system.appuser(
            id, username, first_name, last_name, passwd, active, 
            rowversion, change_user)
    SELECT '3ea44318-887e-4dbc-bb63-3cf18e471324', 'michelle', 'Michelle', ' ', '1b4f0e9851971998e732078544c96b36c3d01cedf7caa332359d6f1d83567014', true, 2, 'michelle' WHERE  NOT EXISTS (SELECT id FROM system.appuser WHERE id = '3ea44318-887e-4dbc-bb63-3cf18e471324');
INSERT INTO system.appuser(
            id, username, first_name, last_name, passwd, active, 
            rowversion, change_user)
    SELECT '2f7c44db-c04f-4d7e-82b1-02d191261874', 'emina', 'Emina', ' ', '1b4f0e9851971998e732078544c96b36c3d01cedf7caa332359d6f1d83567014', true, 3, 'emina' WHERE  NOT EXISTS (SELECT id FROM system.appuser WHERE id = '2f7c44db-c04f-4d7e-82b1-02d191261874');
INSERT INTO system.appuser(
            id, username, first_name, last_name, passwd, active, 
            rowversion, change_user)
    SELECT '03dcb308-443e-42ad-bddc-3d3a8092f87e', 'andrew', 'Andrew', 'McDowell', '1b4f0e9851971998e732078544c96b36c3d01cedf7caa332359d6f1d83567014', true, 3, 'andrew' WHERE  NOT EXISTS (SELECT id FROM system.appuser WHERE id = '03dcb308-443e-42ad-bddc-3d3a8092f87e');
INSERT INTO system.appuser(
            id, username, first_name, last_name, passwd, active, 
            rowversion, change_user)
    SELECT '4c518a4c-5774-4036-b271-eb5b122a75f8', 'tafolosa', 'Tafolosa', ' ', '1b4f0e9851971998e732078544c96b36c3d01cedf7caa332359d6f1d83567014', true, 3, 'tafolosa' WHERE  NOT EXISTS (SELECT id FROM system.appuser WHERE id = '4c518a4c-5774-4036-b271-eb5b122a75f8');
INSERT INTO system.appuser(
            id, username, first_name, last_name, passwd, active, 
            rowversion, change_user)
    SELECT 'b017a158-cb01-4694-a1f6-6ddfcacadd4b', 'silia', 'Silia', ' ', '1b4f0e9851971998e732078544c96b36c3d01cedf7caa332359d6f1d83567014', true, 3, 'silia' WHERE  NOT EXISTS (SELECT id FROM system.appuser WHERE id = 'b017a158-cb01-4694-a1f6-6ddfcacadd4b');
INSERT INTO system.appuser(
            id, username, first_name, last_name, passwd, active, 
            rowversion, change_user)
    SELECT '79a3c03f-9bea-44c6-bf6f-dccee4e76ccd', 'ono', 'Ono', ' ', '1b4f0e9851971998e732078544c96b36c3d01cedf7caa332359d6f1d83567014', true, 2, 'ono' WHERE  NOT EXISTS (SELECT id FROM system.appuser WHERE id = '79a3c03f-9bea-44c6-bf6f-dccee4e76ccd');
INSERT INTO system.appuser(
            id, username, first_name, last_name, passwd, active, 
            rowversion, change_user)
    SELECT '5bee66f8-a015-4c6a-b589-73b3302feca5', 'siueli', 'Siueli', ' ', '1b4f0e9851971998e732078544c96b36c3d01cedf7caa332359d6f1d83567014', true, 3, 'siueli' WHERE  NOT EXISTS (SELECT id FROM system.appuser WHERE id = '5bee66f8-a015-4c6a-b589-73b3302feca5');
INSERT INTO system.appuser(
            id, username, first_name, last_name, passwd, active, 
            rowversion, change_user)
    SELECT '35db9e40-e293-4552-8c83-c1647b4cfd30', 'polotu', 'Polotu', ' ', '1b4f0e9851971998e732078544c96b36c3d01cedf7caa332359d6f1d83567014', true, 4, 'polotu' WHERE  NOT EXISTS (SELECT id FROM system.appuser WHERE id = '35db9e40-e293-4552-8c83-c1647b4cfd30');
INSERT INTO system.appuser(
            id, username, first_name, last_name, passwd, active, 
            rowversion, change_user)
    SELECT '9d2a6029-8781-4b36-aa7f-6eb00105d6e5', 'lousa', 'Lousa', ' ', '1b4f0e9851971998e732078544c96b36c3d01cedf7caa332359d6f1d83567014', true, 3, 'lousa' WHERE  NOT EXISTS (SELECT id FROM system.appuser WHERE id = '9d2a6029-8781-4b36-aa7f-6eb00105d6e5');
INSERT INTO system.appuser(
            id, username, first_name, last_name, passwd, active, 
            rowversion, change_user)
    SELECT 'f38f8409-9f31-4f5a-94f5-e92a196f1833', 'asipeli', '''Asipeli', 'Palaki', '1b4f0e9851971998e732078544c96b36c3d01cedf7caa332359d6f1d83567014', true, 2, 'asipeli' WHERE  NOT EXISTS (SELECT id FROM system.appuser WHERE id = 'f38f8409-9f31-4f5a-94f5-e92a196f1833');
	
INSERT INTO system.appuser_appgroup (appuser_id, appgroup_id)
(SELECT u.id, 'super-group-id' 
 FROM   system.appuser u
 WHERE  u.active = true
 AND    NOT EXISTS (SELECT ug.appuser_id FROM system.appuser_appgroup ug
                    WHERE  ug.appuser_id = u.id
				    AND    ug.appgroup_id = 'super-group-id'));

