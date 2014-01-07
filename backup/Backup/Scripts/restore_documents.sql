INSERT INTO document.document (id, nr, extension, body, description, rowidentifier, 
       rowversion, change_action, change_user, change_time) 
SELECT id, nr, extension, body, description, rowidentifier, rowversion, change_action, 
       change_user, change_time 
FROM document.document_backup d  
WHERE NOT EXISTS (SELECT id FROM document.document WHERE id = d.id);