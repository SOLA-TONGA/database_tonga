INSERT INTO document.document_backup (id, nr, extension, body, description, rowidentifier, 
       rowversion, change_action, change_user, change_time) 
SELECT id, nr, extension, body, description, rowidentifier, rowversion, change_action, 
       change_user, change_time 
FROM document.document d 
WHERE d.change_time > '29 NOV 2012 05:00'  
AND NOT EXISTS (SELECT id FROM document.document_backup WHERE id = d.id);