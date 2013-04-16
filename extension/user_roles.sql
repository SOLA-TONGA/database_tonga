
INSERT INTO system.approle (code, display_value, status)
SELECT req.code, req.display_value, 'c'
FROM   application.request_type req
WHERE  NOT EXISTS (SELECT r.code FROM system.approle r WHERE req.code = r.code); 

-- Add any missing roles to the super-group-id
INSERT INTO system.approle_appgroup (approle_code, appgroup_id) 
(SELECT r.code, 'super-group-id' 
 FROM   system.approle r
 WHERE NOT EXISTS (SELECT approle_code FROM system.approle_appgroup rg
                 WHERE  rg.approle_code = r.code
				 AND    rg.appgroup_id = 'super-group-id'));
				 
-- Remove the View Map role - the Map is not used in Tonga (yet)
DELETE FROM system.approle_appgroup WHERE approle_code = 'ViewMap';