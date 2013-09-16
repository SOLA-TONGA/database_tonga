
-- Create the Nobles
INSERT INTO party.party (id, type_code, name, change_user)
 SELECT '''ahome''e', 'naturalPerson', '''Ahome''e', 'migration'
 WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = '''ahome''e');
INSERT INTO party.party_role (party_id, type_code)
 SELECT '''ahome''e', 'noble'
 WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = '''ahome''e');
 
INSERT INTO party.party (id, type_code, name, change_user)
 SELECT '''akauola', 'naturalPerson', '''Akauola', 'migration'
 WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = '''akauola');
 INSERT INTO party.party_role (party_id, type_code)
 SELECT '''akauola', 'noble'
 WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = '''akauola');
 
INSERT INTO party.party (id, type_code, name, change_user)
 SELECT '''ulukalala', 'naturalPerson', '''Ulukalala', 'migration'
 WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = '''ulukalala');
 INSERT INTO party.party_role (party_id, type_code)
 SELECT '''ulukalala', 'noble'
 WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = '''ulukalala');
 
INSERT INTO party.party (id, type_code, name, change_user)
 SELECT 'afu', 'naturalPerson', 'Afu', 'migration'
 WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 'afu');
 INSERT INTO party.party_role (party_id, type_code)
 SELECT 'afu', 'noble'
 WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 'afu');
 
INSERT INTO party.party (id, type_code, name, change_user)
 SELECT 'ata', 'naturalPerson', 'Ata', 'migration'
 WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 'ata');
 INSERT INTO party.party_role (party_id, type_code)
 SELECT 'ata', 'noble'
 WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 'ata');
 
INSERT INTO party.party (id, type_code, name, change_user)
 SELECT 'fakafanua', 'naturalPerson', 'Fakafanua', 'migration'
 WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 'fakafanua');
 INSERT INTO party.party_role (party_id, type_code)
 SELECT 'fakafanua', 'noble'
 WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 'fakafanua');
 
INSERT INTO party.party (id, type_code, name, change_user)
 SELECT 'fakatulolo', 'naturalPerson', 'Fakatulolo', 'migration'
 WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 'fakatulolo');
 INSERT INTO party.party_role (party_id, type_code)
 SELECT 'fakatulolo', 'noble'
 WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 'fakatulolo');
 
INSERT INTO party.party (id, type_code, name, change_user)
 SELECT 'fielakepa', 'naturalPerson', 'Fielakepa', 'migration'
 WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 'fielakepa');
 INSERT INTO party.party_role (party_id, type_code)
 SELECT 'fielakepa', 'noble'
 WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 'fielakepa');
 
INSERT INTO party.party (id, type_code, name, change_user)
 SELECT 'fohe', 'naturalPerson', 'Fohe', 'migration'
 WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 'fohe');
 INSERT INTO party.party_role (party_id, type_code)
 SELECT 'fohe', 'noble'
 WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 'fohe');
 
INSERT INTO party.party (id, type_code, name, change_user)
 SELECT 'fotofili', 'naturalPerson', 'Fotofili', 'migration'
 WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 'fotofili');
 INSERT INTO party.party_role (party_id, type_code)
 SELECT 'fotofili', 'noble'
 WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 'fotofili');
 
INSERT INTO party.party (id, type_code, name, change_user)
 SELECT 'fotu', 'naturalPerson', 'Fotu', 'migration'
 WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 'fotu');
 INSERT INTO party.party_role (party_id, type_code)
 SELECT 'fotu', 'noble'
 WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 'fotu');
 
INSERT INTO party.party (id, type_code, name, change_user)
 SELECT 'fulivai', 'naturalPerson', 'Fulivai', 'migration'
 WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 'fulivai');
 INSERT INTO party.party_role (party_id, type_code)
 SELECT 'fulivai', 'noble'
 WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 'fulivai');
 
INSERT INTO party.party (id, type_code, name, change_user)
 SELECT 'fusitu''a', 'naturalPerson', 'Fusitu''a', 'migration'
 WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 'fusitu''a');
 INSERT INTO party.party_role (party_id, type_code)
 SELECT 'fusitu''a', 'noble'
 WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 'fusitu''a');
 
 INSERT INTO party.party (id, type_code, name, change_user)
 SELECT 'heir apparent', 'naturalPerson', 'Heir Apparent', 'migration'
 WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 'heir apparent');
 INSERT INTO party.party_role (party_id, type_code)
 SELECT 'heir apparent', 'noble'
 WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 'heir apparent');
 
 INSERT INTO party.party (id, type_code, name, change_user)
 SELECT 'kalaniuvalu', 'naturalPerson', 'Kalaniuvalu', 'migration'
 WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 'kalaniuvalu');
 INSERT INTO party.party_role (party_id, type_code)
 SELECT 'kalaniuvalu', 'noble'
 WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 'kalaniuvalu');
 
INSERT INTO party.party (id, type_code, name, change_user)
 SELECT 'lasike', 'naturalPerson', 'Lasike', 'migration'
 WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 'lasike');
 INSERT INTO party.party_role (party_id, type_code)
 SELECT 'lasike', 'noble'
 WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 'lasike');
 
INSERT INTO party.party (id, type_code, name, change_user)
 SELECT 'lauaki', 'naturalPerson', 'Lauaki', 'migration'
 WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 'lauaki');
 INSERT INTO party.party_role (party_id, type_code)
 SELECT 'lauaki', 'noble'
 WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 'lauaki');
 
INSERT INTO party.party (id, type_code, name, change_user)
 SELECT 'lavaka', 'naturalPerson', 'Lavaka', 'migration'
 WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 'lavaka');
 INSERT INTO party.party_role (party_id, type_code)
 SELECT 'lavaka', 'noble'
 WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 'lavaka');
 
INSERT INTO party.party (id, type_code, name, change_user)
 SELECT 'luani', 'naturalPerson', 'Luani', 'migration'
 WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 'luani');
 INSERT INTO party.party_role (party_id, type_code)
 SELECT 'luani', 'noble'
 WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 'luani');
 
INSERT INTO party.party (id, type_code, name, change_user)
 SELECT 'ma''afu', 'naturalPerson', 'Ma''afu', 'migration'
 WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 'ma''afu');
 INSERT INTO party.party_role (party_id, type_code)
 SELECT 'ma''afu', 'noble'
 WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 'ma''afu');
 
INSERT INTO party.party (id, type_code, name, change_user)
 SELECT 'ma''atu', 'naturalPerson', 'Ma''atu', 'migration'
 WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 'ma''atu');
 INSERT INTO party.party_role (party_id, type_code)
 SELECT 'ma''atu', 'noble'
 WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 'ma''atu');
 
INSERT INTO party.party (id, type_code, name, change_user)
 SELECT 'malupo', 'naturalPerson', 'Malupo', 'migration'
 WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 'malupo');
 INSERT INTO party.party_role (party_id, type_code)
 SELECT 'malupo', 'noble'
 WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 'malupo');
 
INSERT INTO party.party (id, type_code, name, change_user)
 SELECT 'motu''apuaka', 'naturalPerson', 'Motu''apuaka', 'migration'
 WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 'motu''apuaka');
 INSERT INTO party.party_role (party_id, type_code)
 SELECT 'motu''apuaka', 'noble'
 WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 'motu''apuaka');
 
INSERT INTO party.party (id, type_code, name, change_user)
 SELECT 'niukapu', 'naturalPerson', 'Niukapu', 'migration'
 WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 'niukapu');
 INSERT INTO party.party_role (party_id, type_code)
 SELECT 'niukapu', 'noble'
 WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 'niukapu');
 
INSERT INTO party.party (id, type_code, name, change_user)
 SELECT 'nuku', 'naturalPerson', 'Nuku', 'migration'
 WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 'nuku');
 INSERT INTO party.party_role (party_id, type_code)
 SELECT 'nuku', 'noble'
 WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 'nuku');
 
INSERT INTO party.party (id, type_code, name, change_user)
 SELECT 'royal estate', 'naturalPerson', 'Royal Estate', 'migration'
 WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 'royal estate');
 INSERT INTO party.party_role (party_id, type_code)
 SELECT 'royal estate', 'noble'
 WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 'royal estate');
 
INSERT INTO party.party (id, type_code, name, change_user)
 SELECT 'tangipa', 'naturalPerson', 'Tangipa', 'migration'
 WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 'tangipa');
 INSERT INTO party.party_role (party_id, type_code)
 SELECT 'tangipa', 'noble'
 WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 'tangipa');
 
INSERT INTO party.party (id, type_code, name, change_user)
 SELECT 'tu''i''afitu', 'naturalPerson', 'Tu''i''afitu', 'migration'
 WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 'tu''i''afitu');
 INSERT INTO party.party_role (party_id, type_code)
 SELECT 'tu''i''afitu', 'noble'
 WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 'tu''i''afitu');
 
INSERT INTO party.party (id, type_code, name, change_user)
 SELECT 'tu''iha''angana', 'naturalPerson', 'Tu''iha''angana', 'migration'
 WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 'tu''iha''angana');
 INSERT INTO party.party_role (party_id, type_code)
 SELECT 'tu''iha''angana', 'noble'
 WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 'tu''iha''angana');
 
INSERT INTO party.party (id, type_code, name, change_user)
 SELECT 'tu''iha''ateiho', 'naturalPerson', 'Tu''iha''ateiho', 'migration'
 WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 'tu''iha''ateiho');
 INSERT INTO party.party_role (party_id, type_code)
 SELECT 'tu''iha''ateiho', 'noble'
 WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 'tu''iha''ateiho');
 
INSERT INTO party.party (id, type_code, name, change_user)
 SELECT 'tu''ilakepa', 'naturalPerson', 'Tu''ilakepa', 'migration'
 WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 'tu''ilakepa');
 INSERT INTO party.party_role (party_id, type_code)
 SELECT 'tu''ilakepa', 'noble'
 WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 'tu''ilakepa');
 
INSERT INTO party.party (id, type_code, name, change_user)
 SELECT 'tu''ipelehake', 'naturalPerson', 'Tu''ipelehake', 'migration'
 WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 'tu''ipelehake');
 INSERT INTO party.party_role (party_id, type_code)
 SELECT 'tu''ipelehake', 'noble'
 WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 'tu''ipelehake');
 
INSERT INTO party.party (id, type_code, name, change_user)
 SELECT 'tuita', 'naturalPerson', 'Tuita', 'migration'
 WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 'tuita');
 INSERT INTO party.party_role (party_id, type_code)
 SELECT 'tuita', 'noble'
 WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 'tuita');
 
INSERT INTO party.party (id, type_code, name, change_user)
 SELECT 'tu''ivakano', 'naturalPerson', 'Tu''ivakano', 'migration'
 WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 'tu''ivakano');
 INSERT INTO party.party_role (party_id, type_code)
 SELECT 'tu''ivakano', 'noble'
 WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 'tu''ivakano');
 
INSERT INTO party.party (id, type_code, name, change_user)
 SELECT 'tu''uhetoka', 'naturalPerson', 'Tu''uhetoka', 'migration'
 WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 'tu''uhetoka');
 INSERT INTO party.party_role (party_id, type_code)
 SELECT 'tu''uhetoka', 'noble'
 WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 'tu''uhetoka');
 
INSERT INTO party.party (id, type_code, name, change_user)
 SELECT 'tungi', 'naturalPerson', 'Tungi', 'migration'
 WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 'tungi');
 INSERT INTO party.party_role (party_id, type_code)
 SELECT 'tungi', 'noble'
 WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 'tungi');
 
INSERT INTO party.party (id, type_code, name, change_user)
 SELECT 'vaea', 'naturalPerson', 'Vaea', 'migration'
 WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 'vaea');
 INSERT INTO party.party_role (party_id, type_code)
 SELECT 'vaea', 'noble'
 WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 'vaea');
 
INSERT INTO party.party (id, type_code, name, change_user)
 SELECT 'vaha''i', 'naturalPerson', 'Vaha''i', 'migration'
 WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 'vaha''i');
 INSERT INTO party.party_role (party_id, type_code)
 SELECT 'vaha''i', 'noble'
 WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 'vaha''i');
 
INSERT INTO party.party (id, type_code, name, change_user)
 SELECT 've''ehala', 'naturalPerson', 'Ve''ehala', 'migration'
 WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 've''ehala');
 INSERT INTO party.party_role (party_id, type_code)
 SELECT 've''ehala', 'noble'
 WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 've''ehala');
 
INSERT INTO party.party (id, type_code, name, change_user)
 SELECT 'veikune', 'naturalPerson', 'Veikune', 'migration'
 WHERE NOT EXISTS (SELECT id FROM party.party WHERE id = 'veikune');
 INSERT INTO party.party_role (party_id, type_code)
 SELECT 'veikune', 'noble'
 WHERE NOT EXISTS (SELECT party_id FROM party.party_role WHERE party_id = 'veikune');

 
 -- Create the estates for the nobels. 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b161cc62-e850-11e2-8c46-df5e0b296866', 'Ha''alaufuli', 'Vava''u', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Ha''alaufuli' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b162419c-e850-11e2-be6a-27191e991902', 'b161cc62-e850-11e2-8c46-df5e0b296866', 'AFU_1', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b162419c-e850-11e2-be6a-27191e991902'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ce35690-e852-11e2-b855-5fe1165f5570', 'b162419c-e850-11e2-be6a-27191e991902', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ce35690-e852-11e2-b855-5fe1165f5570'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b162419c-e850-11e2-be6a-27191e991902', '0ce35690-e852-11e2-b855-5fe1165f5570', 'afu'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b162419c-e850-11e2-be6a-27191e991902'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b162dddc-e850-11e2-a17a-7776c68ce54f', 'Ha''avakatolo', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Ha''avakatolo' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b163530c-e850-11e2-b0e3-9bf601c4ff2b', 'b162dddc-e850-11e2-a17a-7776c68ce54f', '''AHOME''E_1', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b163530c-e850-11e2-b0e3-9bf601c4ff2b'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ce3a4b0-e852-11e2-923d-07ff25ef421b', 'b163530c-e850-11e2-b0e3-9bf601c4ff2b', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ce3a4b0-e852-11e2-923d-07ff25ef421b'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b163530c-e850-11e2-b0e3-9bf601c4ff2b', '0ce3a4b0-e852-11e2-923d-07ff25ef421b', '''ahome''e'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b163530c-e850-11e2-b0e3-9bf601c4ff2b'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b163c83c-e850-11e2-8649-bf3de5ab87ba', 'Utui', 'Vava''u', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Utui' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b164165c-e850-11e2-951d-73dcd10e323c', 'b163c83c-e850-11e2-8649-bf3de5ab87ba', '''AHOME''E_2', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b164165c-e850-11e2-951d-73dcd10e323c'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ce3f2d0-e852-11e2-a8a7-bf1aa92443d0', 'b164165c-e850-11e2-951d-73dcd10e323c', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ce3f2d0-e852-11e2-a8a7-bf1aa92443d0'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b164165c-e850-11e2-951d-73dcd10e323c', '0ce3f2d0-e852-11e2-a8a7-bf1aa92443d0', '''ahome''e'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b164165c-e850-11e2-951d-73dcd10e323c'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b1648b8c-e850-11e2-aba9-cfc749df2745', 'Taunga', 'Vava''u', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Taunga' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b16500c6-e850-11e2-ac15-a3f5b11fef80', 'b1648b8c-e850-11e2-aba9-cfc749df2745', '''AKAUOLA_1', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b16500c6-e850-11e2-ac15-a3f5b11fef80'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ce419e0-e852-11e2-9adf-9f89d16c180f', 'b16500c6-e850-11e2-ac15-a3f5b11fef80', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ce419e0-e852-11e2-9adf-9f89d16c180f'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b16500c6-e850-11e2-ac15-a3f5b11fef80', '0ce419e0-e852-11e2-9adf-9f89d16c180f', '''akauola'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b16500c6-e850-11e2-ac15-a3f5b11fef80'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b16575f6-e850-11e2-81c8-c369f8a66734', 'Kolovai', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Kolovai' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b165eb26-e850-11e2-a66a-cfc748378b77', 'b16575f6-e850-11e2-81c8-c369f8a66734', 'ATA_1', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b165eb26-e850-11e2-a66a-cfc748378b77'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ce46800-e852-11e2-b8c3-e3b0051d86f9', 'b165eb26-e850-11e2-a66a-cfc748378b77', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ce46800-e852-11e2-b8c3-e3b0051d86f9'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b165eb26-e850-11e2-a66a-cfc748378b77', '0ce46800-e852-11e2-b8c3-e3b0051d86f9', 'ata'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b165eb26-e850-11e2-a66a-cfc748378b77'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b1666056-e850-11e2-86d8-8b6f3a4f23b2', 'Atata', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Atata' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b166d586-e850-11e2-94e9-bbbdac20fc39', 'b1666056-e850-11e2-86d8-8b6f3a4f23b2', 'ATA_2', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b166d586-e850-11e2-94e9-bbbdac20fc39'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ce48f1a-e852-11e2-a130-77eb4308f55c', 'b166d586-e850-11e2-94e9-bbbdac20fc39', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ce48f1a-e852-11e2-a130-77eb4308f55c'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b166d586-e850-11e2-94e9-bbbdac20fc39', '0ce48f1a-e852-11e2-a130-77eb4308f55c', 'ata'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b166d586-e850-11e2-94e9-bbbdac20fc39'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b1674ab6-e850-11e2-9add-3bff938b2db8', 'Maufanga', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Maufanga' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b16798e0-e850-11e2-bf27-b3e55112463a', 'b1674ab6-e850-11e2-9add-3bff938b2db8', 'FAKAFANUA_1', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b16798e0-e850-11e2-bf27-b3e55112463a'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ce4dd3a-e852-11e2-b005-47f2b2aaa38d', 'b16798e0-e850-11e2-bf27-b3e55112463a', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ce4dd3a-e852-11e2-b005-47f2b2aaa38d'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b16798e0-e850-11e2-bf27-b3e55112463a', '0ce4dd3a-e852-11e2-b005-47f2b2aaa38d', 'fakafanua'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b16798e0-e850-11e2-bf27-b3e55112463a'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b167e700-e850-11e2-bb6e-834c02b2024e', 'Nga''akau', 'Vava''u', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Nga''akau' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b1683520-e850-11e2-9ced-43f7980c7c00', 'b167e700-e850-11e2-bb6e-834c02b2024e', 'FAKAFANUA_2', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b1683520-e850-11e2-9ced-43f7980c7c00'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ce5044a-e852-11e2-9f44-a7fe897390be', 'b1683520-e850-11e2-9ced-43f7980c7c00', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ce5044a-e852-11e2-9f44-a7fe897390be'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b1683520-e850-11e2-9ced-43f7980c7c00', '0ce5044a-e852-11e2-9f44-a7fe897390be', 'fakafanua'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b1683520-e850-11e2-9ced-43f7980c7c00'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b1685c30-e850-11e2-b203-0b711d2d0e0d', 'Faleloa', 'Ha''apai', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Faleloa' AND name_lastpart = 'Ha''apai');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b168aa50-e850-11e2-8261-573a2b573669', 'b1685c30-e850-11e2-b203-0b711d2d0e0d', 'FAKAFANUA_3', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b168aa50-e850-11e2-8261-573a2b573669'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ce5526a-e852-11e2-906b-b331206c9c78', 'b168aa50-e850-11e2-8261-573a2b573669', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ce5526a-e852-11e2-906b-b331206c9c78'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b168aa50-e850-11e2-8261-573a2b573669', '0ce5526a-e852-11e2-906b-b331206c9c78', 'fakafanua'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b168aa50-e850-11e2-8261-573a2b573669'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b168d160-e850-11e2-8d91-ff477ebf20a5', 'Falevai', 'Vava''u', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Falevai' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b1691f80-e850-11e2-a906-3f923c004a53', 'b168d160-e850-11e2-8d91-ff477ebf20a5', 'FAKATULOLO_1', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b1691f80-e850-11e2-a906-3f923c004a53'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ce5797a-e852-11e2-acba-a74e0ecc3fc1', 'b1691f80-e850-11e2-a906-3f923c004a53', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ce5797a-e852-11e2-acba-a74e0ecc3fc1'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b1691f80-e850-11e2-a906-3f923c004a53', '0ce5797a-e852-11e2-acba-a74e0ecc3fc1', 'fakatulolo'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b1691f80-e850-11e2-a906-3f923c004a53'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b1696da0-e850-11e2-888f-ab297ecf4aa0', 'Havelu', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Havelu' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b16994b0-e850-11e2-8fdb-e372727f22df', 'b1696da0-e850-11e2-888f-ab297ecf4aa0', 'FIELAKEPA_1', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b16994b0-e850-11e2-8fdb-e372727f22df'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ce5a08a-e852-11e2-bf26-eb1b861856b8', 'b16994b0-e850-11e2-8fdb-e372727f22df', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ce5a08a-e852-11e2-bf26-eb1b861856b8'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b16994b0-e850-11e2-8fdb-e372727f22df', '0ce5a08a-e852-11e2-bf26-eb1b861856b8', 'fielakepa'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b16994b0-e850-11e2-8fdb-e372727f22df'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b169e2d0-e850-11e2-adba-a331f2c41378', 'Puke', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Puke' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b16a30f0-e850-11e2-9973-73eb026fa803', 'b169e2d0-e850-11e2-adba-a331f2c41378', 'FOHE_1', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b16a30f0-e850-11e2-9973-73eb026fa803'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ce5c79a-e852-11e2-ab11-1f8a082565c4', 'b16a30f0-e850-11e2-9973-73eb026fa803', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ce5c79a-e852-11e2-ab11-1f8a082565c4'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b16a30f0-e850-11e2-9973-73eb026fa803', '0ce5c79a-e852-11e2-ab11-1f8a082565c4', 'fohe'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b16a30f0-e850-11e2-9973-73eb026fa803'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b16a580a-e850-11e2-9e71-abdcdbfbbdfc', 'Alele', 'Niua', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Alele' AND name_lastpart = 'Niua');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b16aa62a-e850-11e2-8254-f34a9c8e2725', 'b16a580a-e850-11e2-9e71-abdcdbfbbdfc', 'FOTOFILI_1', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b16aa62a-e850-11e2-8254-f34a9c8e2725'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ce5eeaa-e852-11e2-ac0f-93e6e88e8861', 'b16aa62a-e850-11e2-8254-f34a9c8e2725', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ce5eeaa-e852-11e2-ac0f-93e6e88e8861'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b16aa62a-e850-11e2-8254-f34a9c8e2725', '0ce5eeaa-e852-11e2-ac0f-93e6e88e8861', 'fotofili'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b16aa62a-e850-11e2-8254-f34a9c8e2725'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b16b1b5a-e850-11e2-bf0e-e720a05329f2', 'Angaha (western side)', 'Niua', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Angaha (western side)' AND name_lastpart = 'Niua');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b16b697a-e850-11e2-9e70-ff5fe0a13464', 'b16b1b5a-e850-11e2-bf0e-e720a05329f2', 'FOTOFILI_2', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b16b697a-e850-11e2-9e70-ff5fe0a13464'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ce63cca-e852-11e2-b74c-3fcebcb9ad87', 'b16b697a-e850-11e2-9e70-ff5fe0a13464', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ce63cca-e852-11e2-b74c-3fcebcb9ad87'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b16b697a-e850-11e2-9e70-ff5fe0a13464', '0ce63cca-e852-11e2-b74c-3fcebcb9ad87', 'fotofili'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b16b697a-e850-11e2-9e70-ff5fe0a13464'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b16b908a-e850-11e2-a12c-e326e22db953', 'Ahau (western side)', 'Niua', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Ahau (western side)' AND name_lastpart = 'Niua');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b16bdeaa-e850-11e2-adc9-2fe07f1e3b00', 'b16b908a-e850-11e2-a12c-e326e22db953', 'FOTOFILI_3', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b16bdeaa-e850-11e2-adc9-2fe07f1e3b00'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ce663da-e852-11e2-8963-cbd8d16ba279', 'b16bdeaa-e850-11e2-adc9-2fe07f1e3b00', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ce663da-e852-11e2-8963-cbd8d16ba279'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b16bdeaa-e850-11e2-adc9-2fe07f1e3b00', '0ce663da-e852-11e2-8963-cbd8d16ba279', 'fotofili'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b16bdeaa-e850-11e2-adc9-2fe07f1e3b00'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b16c2cca-e850-11e2-bc6a-d7a6d12eeaac', 'Palau', 'Niua', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Palau' AND name_lastpart = 'Niua');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b16c7aea-e850-11e2-a8ef-a35c08cbbc9e', 'b16c2cca-e850-11e2-bc6a-d7a6d12eeaac', 'FOTOFILI_4', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b16c7aea-e850-11e2-a8ef-a35c08cbbc9e'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ce68aea-e852-11e2-93b7-bfff69c34a00', 'b16c7aea-e850-11e2-a8ef-a35c08cbbc9e', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ce68aea-e852-11e2-93b7-bfff69c34a00'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b16c7aea-e850-11e2-a8ef-a35c08cbbc9e', '0ce68aea-e852-11e2-93b7-bfff69c34a00', 'fotofili'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b16c7aea-e850-11e2-a8ef-a35c08cbbc9e'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b16ca1fa-e850-11e2-b6ae-4b8fd975ce70', 'Ha''ahoko', 'Niua', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Ha''ahoko' AND name_lastpart = 'Niua');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b16cf024-e850-11e2-af91-5bee00a7e104', 'b16ca1fa-e850-11e2-b6ae-4b8fd975ce70', 'FOTOFILI_5', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b16cf024-e850-11e2-af91-5bee00a7e104'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ce6b1fa-e852-11e2-8de4-53f6b11d9cc2', 'b16cf024-e850-11e2-af91-5bee00a7e104', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ce6b1fa-e852-11e2-8de4-53f6b11d9cc2'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b16cf024-e850-11e2-af91-5bee00a7e104', '0ce6b1fa-e852-11e2-8de4-53f6b11d9cc2', 'fotofili'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b16cf024-e850-11e2-af91-5bee00a7e104'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b16d3e44-e850-11e2-8de4-670ef70a4b88', 'Leimatu''a', 'Vava''u', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Leimatu''a' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b16d6554-e850-11e2-9399-6b46ccd28a59', 'b16d3e44-e850-11e2-8de4-670ef70a4b88', 'FOTU_1', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b16d6554-e850-11e2-9399-6b46ccd28a59'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ce7001a-e852-11e2-81ef-936e7421d910', 'b16d6554-e850-11e2-9399-6b46ccd28a59', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ce7001a-e852-11e2-81ef-936e7421d910'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b16d6554-e850-11e2-9399-6b46ccd28a59', '0ce7001a-e852-11e2-81ef-936e7421d910', 'fotu'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b16d6554-e850-11e2-9399-6b46ccd28a59'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b16db374-e850-11e2-8cc1-17687e9cdf89', 'Hunga', 'Vava''u', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Hunga' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b16dda84-e850-11e2-8231-7f9a3dd0bb8e', 'b16db374-e850-11e2-8cc1-17687e9cdf89', 'FULIVAI_1', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b16dda84-e850-11e2-8231-7f9a3dd0bb8e'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ce72734-e852-11e2-9a09-973048709340', 'b16dda84-e850-11e2-8231-7f9a3dd0bb8e', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ce72734-e852-11e2-9a09-973048709340'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b16dda84-e850-11e2-8231-7f9a3dd0bb8e', '0ce72734-e852-11e2-9a09-973048709340', 'fulivai'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b16dda84-e850-11e2-8231-7f9a3dd0bb8e'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b16e28a4-e850-11e2-8eac-831d0b90fe9b', 'Fangalepa', 'Vava''u', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Fangalepa' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b16e4fb4-e850-11e2-a568-0f8b6c48e99a', 'b16e28a4-e850-11e2-8eac-831d0b90fe9b', 'FULIVAI_2', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b16e4fb4-e850-11e2-a568-0f8b6c48e99a'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ce74e44-e852-11e2-8dae-77556315e300', 'b16e4fb4-e850-11e2-a568-0f8b6c48e99a', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ce74e44-e852-11e2-8dae-77556315e300'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b16e4fb4-e850-11e2-a568-0f8b6c48e99a', '0ce74e44-e852-11e2-8dae-77556315e300', 'fulivai'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b16e4fb4-e850-11e2-a568-0f8b6c48e99a'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b16e9dd4-e850-11e2-8c5b-db49f7b7fa28', 'Loto''uiha', 'Vava''u', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Loto''uiha' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b16ec4e4-e850-11e2-b6c1-d7816ffcd4a0', 'b16e9dd4-e850-11e2-8c5b-db49f7b7fa28', 'FULIVAI_3', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b16ec4e4-e850-11e2-b6c1-d7816ffcd4a0'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ce79c64-e852-11e2-8ff8-f3290c3ac6c5', 'b16ec4e4-e850-11e2-b6c1-d7816ffcd4a0', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ce79c64-e852-11e2-8ff8-f3290c3ac6c5'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b16ec4e4-e850-11e2-b6c1-d7816ffcd4a0', '0ce79c64-e852-11e2-8ff8-f3290c3ac6c5', 'fulivai'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b16ec4e4-e850-11e2-b6c1-d7816ffcd4a0'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b16f1304-e850-11e2-a5c9-23dcf1760afa', 'Faletanu', 'Niua', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Faletanu' AND name_lastpart = 'Niua');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b16f6124-e850-11e2-98cd-130c4137a9e1', 'b16f1304-e850-11e2-a5c9-23dcf1760afa', 'FUSITU''A_1', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b16f6124-e850-11e2-98cd-130c4137a9e1'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ce7c374-e852-11e2-8a8d-d3177e6d800a', 'b16f6124-e850-11e2-98cd-130c4137a9e1', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ce7c374-e852-11e2-8a8d-d3177e6d800a'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b16f6124-e850-11e2-98cd-130c4137a9e1', '0ce7c374-e852-11e2-8a8d-d3177e6d800a', 'fusitu''a'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b16f6124-e850-11e2-98cd-130c4137a9e1'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b16f8834-e850-11e2-b317-23c1ff6676bb', 'Angaha (Eastern Side)', 'Niua', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Angaha (Eastern Side)' AND name_lastpart = 'Niua');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b16faf4e-e850-11e2-8340-97cc6ea9e0e0', 'b16f8834-e850-11e2-b317-23c1ff6676bb', 'FUSITU''A_2', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b16faf4e-e850-11e2-8340-97cc6ea9e0e0'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ce7ea84-e852-11e2-a815-43959005c86f', 'b16faf4e-e850-11e2-8340-97cc6ea9e0e0', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ce7ea84-e852-11e2-a815-43959005c86f'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b16faf4e-e850-11e2-8340-97cc6ea9e0e0', '0ce7ea84-e852-11e2-a815-43959005c86f', 'fusitu''a'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b16faf4e-e850-11e2-8340-97cc6ea9e0e0'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b16ffd6e-e850-11e2-a688-3743cb7d0b4b', 'Ma''ufanga (Niua)', 'Niua', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Ma''ufanga (Niua)' AND name_lastpart = 'Niua');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b1704b8e-e850-11e2-95d1-5f6a88e9f1aa', 'b16ffd6e-e850-11e2-a688-3743cb7d0b4b', 'FUSITU''A_3', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b1704b8e-e850-11e2-95d1-5f6a88e9f1aa'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ce81194-e852-11e2-b1ed-5b006d5de5c0', 'b1704b8e-e850-11e2-95d1-5f6a88e9f1aa', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ce81194-e852-11e2-b1ed-5b006d5de5c0'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b1704b8e-e850-11e2-95d1-5f6a88e9f1aa', '0ce81194-e852-11e2-b1ed-5b006d5de5c0', 'fusitu''a'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b1704b8e-e850-11e2-95d1-5f6a88e9f1aa'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b170729e-e850-11e2-9e7a-73dc97c0c993', '''Utulau', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = '''Utulau' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b170c0be-e850-11e2-8b34-c7c969649f92', 'b170729e-e850-11e2-9e7a-73dc97c0c993', 'HEIR APPARENT_1', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b170c0be-e850-11e2-8b34-c7c969649f92'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ce838a4-e852-11e2-83c8-8bf2728ca296', 'b170c0be-e850-11e2-8b34-c7c969649f92', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ce838a4-e852-11e2-83c8-8bf2728ca296'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b170c0be-e850-11e2-8b34-c7c969649f92', '0ce838a4-e852-11e2-83c8-8bf2728ca296', 'heir apparent'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b170c0be-e850-11e2-8b34-c7c969649f92'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b170e7ce-e850-11e2-8a7b-47182afd1e2d', 'Taoa', 'Ha''apai', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Taoa' AND name_lastpart = 'Ha''apai');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b17135ee-e850-11e2-9fbd-f37fe6a3e0e5', 'b170e7ce-e850-11e2-8a7b-47182afd1e2d', 'HEIR APPARENT_2', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b17135ee-e850-11e2-9fbd-f37fe6a3e0e5'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ce886c4-e852-11e2-abcd-b332f3b56c3e', 'b17135ee-e850-11e2-9fbd-f37fe6a3e0e5', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ce886c4-e852-11e2-abcd-b332f3b56c3e'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b17135ee-e850-11e2-9fbd-f37fe6a3e0e5', '0ce886c4-e852-11e2-abcd-b332f3b56c3e', 'heir apparent'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b17135ee-e850-11e2-9fbd-f37fe6a3e0e5'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b1715cfe-e850-11e2-8372-07c3c3026b2f', 'Nomuka', '''Eua', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Nomuka' AND name_lastpart = '''Eua');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b171ab1e-e850-11e2-bedd-6725ea5dac38', 'b1715cfe-e850-11e2-8372-07c3c3026b2f', 'HEIR APPARENT_3', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b171ab1e-e850-11e2-bedd-6725ea5dac38'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ce8add4-e852-11e2-9fbb-27962bf883aa', 'b171ab1e-e850-11e2-bedd-6725ea5dac38', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ce8add4-e852-11e2-9fbb-27962bf883aa'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b171ab1e-e850-11e2-bedd-6725ea5dac38', '0ce8add4-e852-11e2-9fbb-27962bf883aa', 'heir apparent'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b171ab1e-e850-11e2-bedd-6725ea5dac38'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b171d22e-e850-11e2-88b2-03da922f2aa9', 'Nomukeiki', '''Eua', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Nomukeiki' AND name_lastpart = '''Eua');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b172204e-e850-11e2-acad-c39390599aea', 'b171d22e-e850-11e2-88b2-03da922f2aa9', 'HEIR APPARENT_4', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b172204e-e850-11e2-acad-c39390599aea'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ce8d4e4-e852-11e2-99b9-a73cd50ffcf8', 'b172204e-e850-11e2-acad-c39390599aea', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ce8d4e4-e852-11e2-99b9-a73cd50ffcf8'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b172204e-e850-11e2-acad-c39390599aea', '0ce8d4e4-e852-11e2-99b9-a73cd50ffcf8', 'heir apparent'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b172204e-e850-11e2-acad-c39390599aea'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b1724768-e850-11e2-aa58-4f6e66cebef0', 'Lofafanga', '''Eua', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Lofafanga' AND name_lastpart = '''Eua');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b1729588-e850-11e2-8b31-f3bd0ef2dd90', 'b1724768-e850-11e2-aa58-4f6e66cebef0', 'HEIR APPARENT_5', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b1729588-e850-11e2-8b31-f3bd0ef2dd90'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ce8fbf4-e852-11e2-a2aa-bfba194723c1', 'b1729588-e850-11e2-8b31-f3bd0ef2dd90', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ce8fbf4-e852-11e2-a2aa-bfba194723c1'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b1729588-e850-11e2-8b31-f3bd0ef2dd90', '0ce8fbf4-e852-11e2-a2aa-bfba194723c1', 'heir apparent'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b1729588-e850-11e2-8b31-f3bd0ef2dd90'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b172bc98-e850-11e2-bd8d-fbd967a6b845', 'Niniva', '''Eua', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Niniva' AND name_lastpart = '''Eua');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b1730ab8-e850-11e2-affc-b3d6f5de8023', 'b172bc98-e850-11e2-bd8d-fbd967a6b845', 'HEIR APPARENT_6', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b1730ab8-e850-11e2-affc-b3d6f5de8023'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ce92304-e852-11e2-bfa8-eb6130b5c982', 'b1730ab8-e850-11e2-affc-b3d6f5de8023', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ce92304-e852-11e2-bfa8-eb6130b5c982'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b1730ab8-e850-11e2-affc-b3d6f5de8023', '0ce92304-e852-11e2-bfa8-eb6130b5c982', 'heir apparent'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b1730ab8-e850-11e2-affc-b3d6f5de8023'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b17358d8-e850-11e2-bb28-9b9083583716', 'Lapaha', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Lapaha' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b1737fe8-e850-11e2-bead-6f98dd0c2bc6', 'b17358d8-e850-11e2-bb28-9b9083583716', 'KALANIUVALU_1', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b1737fe8-e850-11e2-bead-6f98dd0c2bc6'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ce97124-e852-11e2-a018-27557086571f', 'b1737fe8-e850-11e2-bead-6f98dd0c2bc6', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ce97124-e852-11e2-a018-27557086571f'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b1737fe8-e850-11e2-bead-6f98dd0c2bc6', '0ce97124-e852-11e2-a018-27557086571f', 'kalaniuvalu'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b1737fe8-e850-11e2-bead-6f98dd0c2bc6'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b173ce08-e850-11e2-89a9-838e66cbc3f4', 'Hamula', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Hamula' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b173f518-e850-11e2-a393-bb78adf7e3aa', 'b173ce08-e850-11e2-89a9-838e66cbc3f4', 'KALANIUVALU_2', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b173f518-e850-11e2-a393-bb78adf7e3aa'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ce99834-e852-11e2-b728-4700ef45d4bf', 'b173f518-e850-11e2-a393-bb78adf7e3aa', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ce99834-e852-11e2-b728-4700ef45d4bf'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b173f518-e850-11e2-a393-bb78adf7e3aa', '0ce99834-e852-11e2-b728-4700ef45d4bf', 'kalaniuvalu'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b173f518-e850-11e2-a393-bb78adf7e3aa'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b1744338-e850-11e2-8482-13d265211e16', 'Toloa', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Toloa' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b1746a48-e850-11e2-a5e5-7f250713e5c9', 'b1744338-e850-11e2-8482-13d265211e16', 'KALANIUVALU_3', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b1746a48-e850-11e2-a5e5-7f250713e5c9'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ce9bf44-e852-11e2-a67d-373970dfa776', 'b1746a48-e850-11e2-a5e5-7f250713e5c9', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ce9bf44-e852-11e2-a67d-373970dfa776'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b1746a48-e850-11e2-a5e5-7f250713e5c9', '0ce9bf44-e852-11e2-a67d-373970dfa776', 'kalaniuvalu'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b1746a48-e850-11e2-a5e5-7f250713e5c9'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b174b868-e850-11e2-9bcf-03b950868168', 'Lakepa (''Ahau)', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Lakepa (''Ahau)' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b174df82-e850-11e2-b525-27812115c404', 'b174b868-e850-11e2-9bcf-03b950868168', 'LASIKE_1', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b174df82-e850-11e2-b525-27812115c404'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ce9e65e-e852-11e2-9934-a38f111e4a2b', 'b174df82-e850-11e2-b525-27812115c404', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ce9e65e-e852-11e2-9934-a38f111e4a2b'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b174df82-e850-11e2-b525-27812115c404', '0ce9e65e-e852-11e2-9934-a38f111e4a2b', 'lasike'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b174df82-e850-11e2-b525-27812115c404'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b1752da2-e850-11e2-b79d-a315bfbeed27', 'Lakepa (Ha''atau)', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Lakepa (Ha''atau)' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b17554b2-e850-11e2-bb36-1fe2ed13b517', 'b1752da2-e850-11e2-b79d-a315bfbeed27', 'LASIKE_2', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b17554b2-e850-11e2-bb36-1fe2ed13b517'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cea347e-e852-11e2-aaa6-fff3fe12d0c7', 'b17554b2-e850-11e2-bb36-1fe2ed13b517', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cea347e-e852-11e2-aaa6-fff3fe12d0c7'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b17554b2-e850-11e2-bb36-1fe2ed13b517', '0cea347e-e852-11e2-aaa6-fff3fe12d0c7', 'lasike'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b17554b2-e850-11e2-bb36-1fe2ed13b517'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b175a2d2-e850-11e2-865d-1713a06c14f2', 'Lakepa (Kala''au)', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Lakepa (Kala''au)' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b175c9e2-e850-11e2-8ec3-7719435154be', 'b175a2d2-e850-11e2-865d-1713a06c14f2', 'LASIKE_3', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b175c9e2-e850-11e2-8ec3-7719435154be'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cea5b8e-e852-11e2-b133-3b5c5ba5d3eb', 'b175c9e2-e850-11e2-8ec3-7719435154be', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cea5b8e-e852-11e2-b133-3b5c5ba5d3eb'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b175c9e2-e850-11e2-8ec3-7719435154be', '0cea5b8e-e852-11e2-b133-3b5c5ba5d3eb', 'lasike'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b175c9e2-e850-11e2-8ec3-7719435154be'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b1761802-e850-11e2-9bef-e3cceadee359', 'Lakepa (Ha''amea)', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Lakepa (Ha''amea)' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b1763f12-e850-11e2-804f-d3dadc86a409', 'b1761802-e850-11e2-9bef-e3cceadee359', 'LASIKE_4', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b1763f12-e850-11e2-804f-d3dadc86a409'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cea829e-e852-11e2-bd1e-a3ea39ddb86a', 'b1763f12-e850-11e2-804f-d3dadc86a409', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cea829e-e852-11e2-bd1e-a3ea39ddb86a'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b1763f12-e850-11e2-804f-d3dadc86a409', '0cea829e-e852-11e2-bd1e-a3ea39ddb86a', 'lasike'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b1763f12-e850-11e2-804f-d3dadc86a409'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b1768d32-e850-11e2-92ba-2708742450d5', 'Lakepa (Navutoka)', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Lakepa (Navutoka)' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b176b442-e850-11e2-baa2-0f46f57520af', 'b1768d32-e850-11e2-92ba-2708742450d5', 'LASIKE_5', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b176b442-e850-11e2-baa2-0f46f57520af'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ceaa9ae-e852-11e2-a368-1bca2650a0f0', 'b176b442-e850-11e2-baa2-0f46f57520af', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ceaa9ae-e852-11e2-a368-1bca2650a0f0'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b176b442-e850-11e2-baa2-0f46f57520af', '0ceaa9ae-e852-11e2-a368-1bca2650a0f0', 'lasike'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b176b442-e850-11e2-baa2-0f46f57520af'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b1770262-e850-11e2-ad70-b31e3c6fccfe', 'Fonongahina', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Fonongahina' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b1775082-e850-11e2-8785-679a3db0b699', 'b1770262-e850-11e2-ad70-b31e3c6fccfe', 'LASIKE_6', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b1775082-e850-11e2-8785-679a3db0b699'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cead0be-e852-11e2-bf4c-8fdf14cc85de', 'b1775082-e850-11e2-8785-679a3db0b699', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cead0be-e852-11e2-bf4c-8fdf14cc85de'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b1775082-e850-11e2-8785-679a3db0b699', '0cead0be-e852-11e2-bf4c-8fdf14cc85de', 'lasike'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b1775082-e850-11e2-8785-679a3db0b699'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b1779eac-e850-11e2-a07d-d7433865ce31', 'Tafangafanga (Hahake)', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Tafangafanga (Hahake)' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b177c5bc-e850-11e2-8224-6fe3505e914f', 'b1779eac-e850-11e2-a07d-d7433865ce31', 'LASIKE_7', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b177c5bc-e850-11e2-8224-6fe3505e914f'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ceaf7ce-e852-11e2-a0b2-6f5742bb1ebf', 'b177c5bc-e850-11e2-8224-6fe3505e914f', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ceaf7ce-e852-11e2-a0b2-6f5742bb1ebf'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b177c5bc-e850-11e2-8224-6fe3505e914f', '0ceaf7ce-e852-11e2-a0b2-6f5742bb1ebf', 'lasike'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b177c5bc-e850-11e2-8224-6fe3505e914f'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b17813dc-e850-11e2-8fc4-7774f2dbf8c1', 'Lakepa (''Eua)', '''Eua', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Lakepa (''Eua)' AND name_lastpart = '''Eua');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b17861fc-e850-11e2-9d4d-e332ec2869d1', 'b17813dc-e850-11e2-8fc4-7774f2dbf8c1', 'LASIKE_8', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b17861fc-e850-11e2-9d4d-e332ec2869d1'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ceb45ee-e852-11e2-9659-2302847ca690', 'b17861fc-e850-11e2-9d4d-e332ec2869d1', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ceb45ee-e852-11e2-9659-2302847ca690'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b17861fc-e850-11e2-9d4d-e332ec2869d1', '0ceb45ee-e852-11e2-9659-2302847ca690', 'lasike'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b17861fc-e850-11e2-9d4d-e332ec2869d1'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b178b01c-e850-11e2-9de3-e3fe2eb9eff6', 'Talafo''ou', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Talafo''ou' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b178d72c-e850-11e2-9e73-cb85d1f03df9', 'b178b01c-e850-11e2-9de3-e3fe2eb9eff6', 'LAUAKI_1', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b178d72c-e850-11e2-9e73-cb85d1f03df9'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ceb6cfe-e852-11e2-8495-17cbde079c81', 'b178d72c-e850-11e2-9e73-cb85d1f03df9', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ceb6cfe-e852-11e2-8495-17cbde079c81'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b178d72c-e850-11e2-9e73-cb85d1f03df9', '0ceb6cfe-e852-11e2-8495-17cbde079c81', 'lauaki'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b178d72c-e850-11e2-9e73-cb85d1f03df9'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b179254c-e850-11e2-a6cc-7b7b1923a507', 'Masilamea', 'Vava''u', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Masilamea' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b179736c-e850-11e2-b82b-b3152f704d3f', 'b179254c-e850-11e2-a6cc-7b7b1923a507', 'LAUAKI_2', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b179736c-e850-11e2-b82b-b3152f704d3f'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ceb940e-e852-11e2-8c18-2bafc02cf037', 'b179736c-e850-11e2-b82b-b3152f704d3f', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ceb940e-e852-11e2-8c18-2bafc02cf037'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b179736c-e850-11e2-b82b-b3152f704d3f', '0ceb940e-e852-11e2-8c18-2bafc02cf037', 'lauaki'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b179736c-e850-11e2-b82b-b3152f704d3f'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b1799a7c-e850-11e2-8555-d7df5f740174', 'Fualu', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Fualu' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b179e89c-e850-11e2-a594-8b351e8a9800', 'b1799a7c-e850-11e2-8555-d7df5f740174', 'LAVAKA_1', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b179e89c-e850-11e2-a594-8b351e8a9800'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cebbb1e-e852-11e2-a478-47c859c82a01', 'b179e89c-e850-11e2-a594-8b351e8a9800', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cebbb1e-e852-11e2-a478-47c859c82a01'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b179e89c-e850-11e2-a594-8b351e8a9800', '0cebbb1e-e852-11e2-a478-47c859c82a01', 'lavaka'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b179e89c-e850-11e2-a594-8b351e8a9800'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b17a36c6-e850-11e2-a053-f3a3bcf2a2aa', 'Pea', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Pea' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b17a5dd6-e850-11e2-86b0-3715907136ff', 'b17a36c6-e850-11e2-a053-f3a3bcf2a2aa', 'LAVAKA_2', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b17a5dd6-e850-11e2-86b0-3715907136ff'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cebe22e-e852-11e2-b80e-7399196918e4', 'b17a5dd6-e850-11e2-86b0-3715907136ff', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cebe22e-e852-11e2-b80e-7399196918e4'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b17a5dd6-e850-11e2-86b0-3715907136ff', '0cebe22e-e852-11e2-b80e-7399196918e4', 'lavaka'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b17a5dd6-e850-11e2-86b0-3715907136ff'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b17aabf6-e850-11e2-8373-a7f839ad2035', 'Nakolo', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Nakolo' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b17ad306-e850-11e2-a9f5-0358be54bf73', 'b17aabf6-e850-11e2-8373-a7f839ad2035', 'LUANI_1', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b17ad306-e850-11e2-a9f5-0358be54bf73'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cec304e-e852-11e2-96ec-eb785c7fd759', 'b17ad306-e850-11e2-a9f5-0358be54bf73', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cec304e-e852-11e2-96ec-eb785c7fd759'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b17ad306-e850-11e2-a9f5-0358be54bf73', '0cec304e-e852-11e2-96ec-eb785c7fd759', 'luani'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b17ad306-e850-11e2-a9f5-0358be54bf73'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b17b2126-e850-11e2-84d1-bf10c478e0c9', 'Malapo', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Malapo' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b17b4836-e850-11e2-b51d-8f61c1be9fc8', 'b17b2126-e850-11e2-84d1-bf10c478e0c9', 'LUANI_2', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b17b4836-e850-11e2-b51d-8f61c1be9fc8'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cec575e-e852-11e2-9f8b-03042a483e3f', 'b17b4836-e850-11e2-b51d-8f61c1be9fc8', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cec575e-e852-11e2-9f8b-03042a483e3f'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b17b4836-e850-11e2-b51d-8f61c1be9fc8', '0cec575e-e852-11e2-9f8b-03042a483e3f', 'luani'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b17b4836-e850-11e2-b51d-8f61c1be9fc8'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b17b6f46-e850-11e2-8c0a-b78042ea039f', 'Fetoa', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Fetoa' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b17bbd66-e850-11e2-808d-b3df05697f51', 'b17b6f46-e850-11e2-8c0a-b78042ea039f', 'LUANI_3', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b17bbd66-e850-11e2-808d-b3df05697f51'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ceca588-e852-11e2-9aba-a73c2b5fb5bb', 'b17bbd66-e850-11e2-808d-b3df05697f51', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ceca588-e852-11e2-9aba-a73c2b5fb5bb'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b17bbd66-e850-11e2-808d-b3df05697f51', '0ceca588-e852-11e2-9aba-a73c2b5fb5bb', 'luani'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b17bbd66-e850-11e2-808d-b3df05697f51'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b17be476-e850-11e2-b6c0-37cb9500e610', 'Tefisi', 'Vava''u', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Tefisi' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b17c0b86-e850-11e2-92cb-474b49b43e1f', 'b17be476-e850-11e2-b6c0-37cb9500e610', 'LUANI_4', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b17c0b86-e850-11e2-92cb-474b49b43e1f'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ceccc98-e852-11e2-9766-77b07e9932b8', 'b17c0b86-e850-11e2-92cb-474b49b43e1f', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ceccc98-e852-11e2-9766-77b07e9932b8'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b17c0b86-e850-11e2-92cb-474b49b43e1f', '0ceccc98-e852-11e2-9766-77b07e9932b8', 'luani'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b17c0b86-e850-11e2-92cb-474b49b43e1f'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b17c59a6-e850-11e2-b0af-6706aaacb376', 'Tokomololo', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Tokomololo' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b17c80b6-e850-11e2-b8e2-73c0673dd1a2', 'b17c59a6-e850-11e2-b0af-6706aaacb376', 'MA''AFU_1', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b17c80b6-e850-11e2-b8e2-73c0673dd1a2'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ced1ab8-e852-11e2-a3ca-4353674181da', 'b17c80b6-e850-11e2-b8e2-73c0673dd1a2', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ced1ab8-e852-11e2-a3ca-4353674181da'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b17c80b6-e850-11e2-b8e2-73c0673dd1a2', '0ced1ab8-e852-11e2-a3ca-4353674181da', 'ma''afu'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b17c80b6-e850-11e2-b8e2-73c0673dd1a2'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b17ca7c6-e850-11e2-b0e7-1f552caf5ae5', 'Vaini', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Vaini' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b17cf5f0-e850-11e2-8f3f-fbccaa9e5b11', 'b17ca7c6-e850-11e2-b0e7-1f552caf5ae5', 'MA''AFU_2', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b17cf5f0-e850-11e2-8f3f-fbccaa9e5b11'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ced41c8-e852-11e2-9a8c-67315514e078', 'b17cf5f0-e850-11e2-8f3f-fbccaa9e5b11', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ced41c8-e852-11e2-9a8c-67315514e078'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b17cf5f0-e850-11e2-8f3f-fbccaa9e5b11', '0ced41c8-e852-11e2-9a8c-67315514e078', 'ma''afu'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b17cf5f0-e850-11e2-8f3f-fbccaa9e5b11'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b17d1d00-e850-11e2-b8eb-97969a11e2b5', 'Vaipoa', 'Niua', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Vaipoa' AND name_lastpart = 'Niua');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b17d4410-e850-11e2-859e-1f151b02c0db', 'b17d1d00-e850-11e2-b8eb-97969a11e2b5', 'MA''ATU_1', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b17d4410-e850-11e2-859e-1f151b02c0db'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ced68d8-e852-11e2-8afa-3ba3b05460bf', 'b17d4410-e850-11e2-859e-1f151b02c0db', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ced68d8-e852-11e2-8afa-3ba3b05460bf'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b17d4410-e850-11e2-859e-1f151b02c0db', '0ced68d8-e852-11e2-8afa-3ba3b05460bf', 'ma''atu'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b17d4410-e850-11e2-859e-1f151b02c0db'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b17d9230-e850-11e2-841c-3bd4f0435642', 'Hihifo', 'Niua', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Hihifo' AND name_lastpart = 'Niua');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b17db940-e850-11e2-8a37-9f77922c9602', 'b17d9230-e850-11e2-841c-3bd4f0435642', 'MA''ATU_2', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b17db940-e850-11e2-8a37-9f77922c9602'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ced8fe8-e852-11e2-8904-779909e8a3fc', 'b17db940-e850-11e2-8a37-9f77922c9602', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ced8fe8-e852-11e2-8904-779909e8a3fc'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b17db940-e850-11e2-8a37-9f77922c9602', '0ced8fe8-e852-11e2-8904-779909e8a3fc', 'ma''atu'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b17db940-e850-11e2-8a37-9f77922c9602'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b17de050-e850-11e2-8a2e-4b81872d36c2', 'Vaotahi', 'Niua', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Vaotahi' AND name_lastpart = 'Niua');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b17e2e70-e850-11e2-b23e-6f60306b8f29', 'b17de050-e850-11e2-8a2e-4b81872d36c2', 'MA''ATU_3', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b17e2e70-e850-11e2-b23e-6f60306b8f29'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cedb6f8-e852-11e2-9534-bbe76551afa4', 'b17e2e70-e850-11e2-b23e-6f60306b8f29', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cedb6f8-e852-11e2-9534-bbe76551afa4'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b17e2e70-e850-11e2-b23e-6f60306b8f29', '0cedb6f8-e852-11e2-9534-bbe76551afa4', 'ma''atu'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b17e2e70-e850-11e2-b23e-6f60306b8f29'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b17e5580-e850-11e2-891b-a3e0512dd61e', 'Hunganga', 'Niua', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Hunganga' AND name_lastpart = 'Niua');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b17e7c90-e850-11e2-9e6a-af56046a9ad1', 'b17e5580-e850-11e2-891b-a3e0512dd61e', 'MA''ATU_4', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b17e7c90-e850-11e2-9e6a-af56046a9ad1'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cedde08-e852-11e2-b68e-1f0c84264a21', 'b17e7c90-e850-11e2-9e6a-af56046a9ad1', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cedde08-e852-11e2-b68e-1f0c84264a21'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b17e7c90-e850-11e2-9e6a-af56046a9ad1', '0cedde08-e852-11e2-b68e-1f0c84264a21', 'ma''atu'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b17e7c90-e850-11e2-9e6a-af56046a9ad1'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b17ea3a0-e850-11e2-a024-030ae55c5ab0', 'Tavili', 'Niua', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Tavili' AND name_lastpart = 'Niua');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b17ef1c0-e850-11e2-99c5-bf04bb105adf', 'b17ea3a0-e850-11e2-a024-030ae55c5ab0', 'MA''ATU_5', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b17ef1c0-e850-11e2-99c5-bf04bb105adf'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cee2c28-e852-11e2-beca-3bbb3dab49e0', 'b17ef1c0-e850-11e2-99c5-bf04bb105adf', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cee2c28-e852-11e2-beca-3bbb3dab49e0'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b17ef1c0-e850-11e2-99c5-bf04bb105adf', '0cee2c28-e852-11e2-beca-3bbb3dab49e0', 'ma''atu'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b17ef1c0-e850-11e2-99c5-bf04bb105adf'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b17f18d0-e850-11e2-85d1-b733c3a1177e', 'Taka''amoato''a', 'Vava''u', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Taka''amoato''a' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b17f3fe0-e850-11e2-ad30-c7ffeadd5191', 'b17f18d0-e850-11e2-85d1-b733c3a1177e', 'MALUPO_1', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b17f3fe0-e850-11e2-ad30-c7ffeadd5191'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cee5338-e852-11e2-b7fc-b30e79ea0ee2', 'b17f3fe0-e850-11e2-ad30-c7ffeadd5191', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cee5338-e852-11e2-b7fc-b30e79ea0ee2'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b17f3fe0-e850-11e2-ad30-c7ffeadd5191', '0cee5338-e852-11e2-b7fc-b30e79ea0ee2', 'malupo'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b17f3fe0-e850-11e2-ad30-c7ffeadd5191'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b17f8e0a-e850-11e2-a602-cb1157ff2099', 'Teleki', 'Vava''u', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Teleki' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b17fb51a-e850-11e2-910b-2f49b576886d', 'b17f8e0a-e850-11e2-a602-cb1157ff2099', 'MALUPO_2', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b17fb51a-e850-11e2-910b-2f49b576886d'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cee7a48-e852-11e2-93cd-cbc0093cdceb', 'b17fb51a-e850-11e2-910b-2f49b576886d', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cee7a48-e852-11e2-93cd-cbc0093cdceb'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b17fb51a-e850-11e2-910b-2f49b576886d', '0cee7a48-e852-11e2-93cd-cbc0093cdceb', 'malupo'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b17fb51a-e850-11e2-910b-2f49b576886d'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b180033a-e850-11e2-9d78-eb395fe07498', 'Uiha', 'Ha''apai', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Uiha' AND name_lastpart = 'Ha''apai');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b180515a-e850-11e2-91da-0bd32e4c4092', 'b180033a-e850-11e2-9d78-eb395fe07498', 'MALUPO_3', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b180515a-e850-11e2-91da-0bd32e4c4092'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ceea158-e852-11e2-a65c-efdd607e1df5', 'b180515a-e850-11e2-91da-0bd32e4c4092', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ceea158-e852-11e2-a65c-efdd607e1df5'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b180515a-e850-11e2-91da-0bd32e4c4092', '0ceea158-e852-11e2-a65c-efdd607e1df5', 'malupo'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b180515a-e850-11e2-91da-0bd32e4c4092'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b180786a-e850-11e2-8f12-fb00b87645db', 'Te''ekiu', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Te''ekiu' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b180c68a-e850-11e2-8a1b-73e98c301f7a', 'b180786a-e850-11e2-8f12-fb00b87645db', 'MOTU''APUAKA_1', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b180c68a-e850-11e2-8a1b-73e98c301f7a'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0ceec868-e852-11e2-ab7b-0bbd8d1f20d9', 'b180c68a-e850-11e2-8a1b-73e98c301f7a', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0ceec868-e852-11e2-ab7b-0bbd8d1f20d9'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b180c68a-e850-11e2-8a1b-73e98c301f7a', '0ceec868-e852-11e2-ab7b-0bbd8d1f20d9', 'motu''apuaka'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b180c68a-e850-11e2-8a1b-73e98c301f7a'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b180ed9a-e850-11e2-95b5-aba2cf8a3519', 'Haufolau', 'Vava''u', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Haufolau' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b18114aa-e850-11e2-a94c-4334747a1eba', 'b180ed9a-e850-11e2-95b5-aba2cf8a3519', 'MOTU''APUAKA_2', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b18114aa-e850-11e2-a94c-4334747a1eba'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cef1688-e852-11e2-ba07-772f1ad51b83', 'b18114aa-e850-11e2-a94c-4334747a1eba', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cef1688-e852-11e2-ba07-772f1ad51b83'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b18114aa-e850-11e2-a94c-4334747a1eba', '0cef1688-e852-11e2-ba07-772f1ad51b83', 'motu''apuaka'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b18114aa-e850-11e2-a94c-4334747a1eba'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b18162ca-e850-11e2-9dd5-6b4c94d95359', 'Fangale''ounga', 'Ha''apai', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Fangale''ounga' AND name_lastpart = 'Ha''apai');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b18189da-e850-11e2-af9a-7b3ed9788152', 'b18162ca-e850-11e2-9dd5-6b4c94d95359', 'NIUKAPU_1', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b18189da-e850-11e2-af9a-7b3ed9788152'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cef3da2-e852-11e2-a75c-ab4a28028932', 'b18189da-e850-11e2-af9a-7b3ed9788152', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cef3da2-e852-11e2-a75c-ab4a28028932'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b18189da-e850-11e2-af9a-7b3ed9788152', '0cef3da2-e852-11e2-a75c-ab4a28028932', 'niukapu'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b18189da-e850-11e2-af9a-7b3ed9788152'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b181d7fa-e850-11e2-a544-379cbe0eeca3', 'Kolonga', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Kolonga' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b181ff0a-e850-11e2-99dc-cf64471ddc73', 'b181d7fa-e850-11e2-a544-379cbe0eeca3', 'NUKU_1', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b181ff0a-e850-11e2-99dc-cf64471ddc73'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cef64b2-e852-11e2-8ad3-271b1f8f0fec', 'b181ff0a-e850-11e2-99dc-cf64471ddc73', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cef64b2-e852-11e2-8ad3-271b1f8f0fec'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b181ff0a-e850-11e2-99dc-cf64471ddc73', '0cef64b2-e852-11e2-8ad3-271b1f8f0fec', 'nuku'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b181ff0a-e850-11e2-99dc-cf64471ddc73'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b182261a-e850-11e2-bd82-133e4ee8b1e2', 'Poha', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Poha' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b1824d34-e850-11e2-a29c-e3c9e71a1a62', 'b182261a-e850-11e2-bd82-133e4ee8b1e2', 'NUKU_2', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b1824d34-e850-11e2-a29c-e3c9e71a1a62'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cefb2d2-e852-11e2-93b4-27d06830db00', 'b1824d34-e850-11e2-a29c-e3c9e71a1a62', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cefb2d2-e852-11e2-93b4-27d06830db00'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b1824d34-e850-11e2-a29c-e3c9e71a1a62', '0cefb2d2-e852-11e2-93b4-27d06830db00', 'nuku'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b1824d34-e850-11e2-a29c-e3c9e71a1a62'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b1829b54-e850-11e2-811c-0f32f14c0e7e', 'Kotonga', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Kotonga' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b182c264-e850-11e2-a2ab-73ca996bf9d8', 'b1829b54-e850-11e2-811c-0f32f14c0e7e', 'NUKU_3', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b182c264-e850-11e2-a2ab-73ca996bf9d8'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cefd9e2-e852-11e2-a3d0-2b0f503c3d70', 'b182c264-e850-11e2-a2ab-73ca996bf9d8', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cefd9e2-e852-11e2-a3d0-2b0f503c3d70'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b182c264-e850-11e2-a2ab-73ca996bf9d8', '0cefd9e2-e852-11e2-a3d0-2b0f503c3d70', 'nuku'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b182c264-e850-11e2-a2ab-73ca996bf9d8'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b182e974-e850-11e2-b1a3-774a14aa37fa', 'Loto''a', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Loto''a' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b1833794-e850-11e2-ac5b-a7e2260b1d6e', 'b182e974-e850-11e2-b1a3-774a14aa37fa', 'ROYAL ESTATE_1', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b1833794-e850-11e2-ac5b-a7e2260b1d6e'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf000f2-e852-11e2-9426-4f0151a76239', 'b1833794-e850-11e2-ac5b-a7e2260b1d6e', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf000f2-e852-11e2-9426-4f0151a76239'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b1833794-e850-11e2-ac5b-a7e2260b1d6e', '0cf000f2-e852-11e2-9426-4f0151a76239', 'royal estate'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b1833794-e850-11e2-ac5b-a7e2260b1d6e'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b1835ea4-e850-11e2-abb0-5bc0ddf54ebf', 'Sia ko Veiongo', 'Tongatapu', 'Ground bounded by Vuna Road, Sipu Road, Wellington Road and Vaha''akolo Road', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Sia ko Veiongo' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b18385b4-e850-11e2-bdc6-ebdeca444878', 'b1835ea4-e850-11e2-abb0-5bc0ddf54ebf', 'ROYAL ESTATE_2', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b18385b4-e850-11e2-bdc6-ebdeca444878'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf02802-e852-11e2-9349-93cdf69d4da8', 'b18385b4-e850-11e2-bdc6-ebdeca444878', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf02802-e852-11e2-9349-93cdf69d4da8'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b18385b4-e850-11e2-bdc6-ebdeca444878', '0cf02802-e852-11e2-9349-93cdf69d4da8', 'royal estate'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b18385b4-e850-11e2-bdc6-ebdeca444878'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b183d3d4-e850-11e2-872b-6f6a4c16e1c3', 'Pangai (Nuku''alofa)', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Pangai (Nuku''alofa)' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b183fae4-e850-11e2-b94a-63293e3747fa', 'b183d3d4-e850-11e2-872b-6f6a4c16e1c3', 'ROYAL ESTATE_3', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b183fae4-e850-11e2-b94a-63293e3747fa'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf04f12-e852-11e2-82d5-9f012af4ac65', 'b183fae4-e850-11e2-b94a-63293e3747fa', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf04f12-e852-11e2-82d5-9f012af4ac65'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b183fae4-e850-11e2-b94a-63293e3747fa', '0cf04f12-e852-11e2-82d5-9f012af4ac65', 'royal estate'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b183fae4-e850-11e2-b94a-63293e3747fa'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b18421f4-e850-11e2-8614-6b643ca4a922', 'Mapu''afuiva (Nuku''alofa)', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Mapu''afuiva (Nuku''alofa)' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b1847014-e850-11e2-833a-8314490377e2', 'b18421f4-e850-11e2-8614-6b643ca4a922', 'ROYAL ESTATE_4', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b1847014-e850-11e2-833a-8314490377e2'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf09d32-e852-11e2-b401-13040b773e6f', 'b1847014-e850-11e2-833a-8314490377e2', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf09d32-e852-11e2-b401-13040b773e6f'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b1847014-e850-11e2-833a-8314490377e2', '0cf09d32-e852-11e2-b401-13040b773e6f', 'royal estate'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b1847014-e850-11e2-833a-8314490377e2'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b1849724-e850-11e2-8f85-07c3cf7a062e', 'Afinemata Island', 'Vava''u', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Afinemata Island' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b184be34-e850-11e2-aa25-d77f6ce35112', 'b1849724-e850-11e2-8f85-07c3cf7a062e', 'ROYAL ESTATE_5', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b184be34-e850-11e2-aa25-d77f6ce35112'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf0c442-e852-11e2-b2a0-131b9d308ef1', 'b184be34-e850-11e2-aa25-d77f6ce35112', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf0c442-e852-11e2-b2a0-131b9d308ef1'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b184be34-e850-11e2-aa25-d77f6ce35112', '0cf0c442-e852-11e2-b2a0-131b9d308ef1', 'royal estate'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b184be34-e850-11e2-aa25-d77f6ce35112'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b1850c5e-e850-11e2-ac95-df9f1dbae58d', 'Fua''amotu Island', 'Vava''u', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Fua''amotu Island' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b185336e-e850-11e2-bf93-47df6510766d', 'b1850c5e-e850-11e2-ac95-df9f1dbae58d', 'ROYAL ESTATE_6', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b185336e-e850-11e2-bf93-47df6510766d'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf0eb52-e852-11e2-b0d3-d764a3d8e89e', 'b185336e-e850-11e2-bf93-47df6510766d', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf0eb52-e852-11e2-b0d3-d764a3d8e89e'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b185336e-e850-11e2-bf93-47df6510766d', '0cf0eb52-e852-11e2-b0d3-d764a3d8e89e', 'royal estate'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b185336e-e850-11e2-bf93-47df6510766d'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b1855a7e-e850-11e2-9472-2b20bd0e1bcf', 'Nuapapu Island', 'Vava''u', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Nuapapu Island' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b185818e-e850-11e2-95f6-f7ae7e7ac3e0', 'b1855a7e-e850-11e2-9472-2b20bd0e1bcf', 'ROYAL ESTATE_7', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b185818e-e850-11e2-95f6-f7ae7e7ac3e0'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf11262-e852-11e2-bc64-63b7e2b5b15b', 'b185818e-e850-11e2-95f6-f7ae7e7ac3e0', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf11262-e852-11e2-bc64-63b7e2b5b15b'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b185818e-e850-11e2-95f6-f7ae7e7ac3e0', '0cf11262-e852-11e2-bc64-63b7e2b5b15b', 'royal estate'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b185818e-e850-11e2-95f6-f7ae7e7ac3e0'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b185cfae-e850-11e2-8054-43f35879b747', 'Pangaimotu', 'Vava''u', 'Excepting Tokolo, Nukuleka, Haufolau, ''Utulei and Ha''afakahenga', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Pangaimotu' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b185f6be-e850-11e2-a430-330e076f98b0', 'b185cfae-e850-11e2-8054-43f35879b747', 'ROYAL ESTATE_8', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b185f6be-e850-11e2-a430-330e076f98b0'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf13972-e852-11e2-8265-cfe52cbb8faf', 'b185f6be-e850-11e2-a430-330e076f98b0', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf13972-e852-11e2-8265-cfe52cbb8faf'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b185f6be-e850-11e2-a430-330e076f98b0', '0cf13972-e852-11e2-8265-cfe52cbb8faf', 'royal estate'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b185f6be-e850-11e2-a430-330e076f98b0'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b1861dce-e850-11e2-8350-db1059f95ff3', 'Tufutelei (''Api)', 'Vava''u', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Tufutelei (''Api)' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b1866bee-e850-11e2-b4e6-9b7c3d959e12', 'b1861dce-e850-11e2-8350-db1059f95ff3', 'ROYAL ESTATE_9', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b1866bee-e850-11e2-b4e6-9b7c3d959e12'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf18792-e852-11e2-a4a6-c757163d1f72', 'b1866bee-e850-11e2-b4e6-9b7c3d959e12', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf18792-e852-11e2-a4a6-c757163d1f72'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b1866bee-e850-11e2-b4e6-9b7c3d959e12', '0cf18792-e852-11e2-a4a6-c757163d1f72', 'royal estate'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b1866bee-e850-11e2-b4e6-9b7c3d959e12'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b18692fe-e850-11e2-8b35-47d2539e612c', '''Ovava (''Api)', 'Vava''u', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = '''Ovava (''Api)' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b186ba0e-e850-11e2-a1e3-df1f7122de13', 'b18692fe-e850-11e2-8b35-47d2539e612c', 'ROYAL ESTATE_10', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b186ba0e-e850-11e2-a1e3-df1f7122de13'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf1aea2-e852-11e2-b8cd-2f09396d0eeb', 'b186ba0e-e850-11e2-a1e3-df1f7122de13', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf1aea2-e852-11e2-b8cd-2f09396d0eeb'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b186ba0e-e850-11e2-a1e3-df1f7122de13', '0cf1aea2-e852-11e2-b8cd-2f09396d0eeb', 'royal estate'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b186ba0e-e850-11e2-a1e3-df1f7122de13'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b186e11e-e850-11e2-8c25-a3710aa49735', 'Holonga ', 'Vava''u', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Holonga ' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b1872f3e-e850-11e2-a165-a72ff6f80cea', 'b186e11e-e850-11e2-8c25-a3710aa49735', 'ROYAL ESTATE_11', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b1872f3e-e850-11e2-a165-a72ff6f80cea'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf1fccc-e852-11e2-97af-6336247d6e32', 'b1872f3e-e850-11e2-a165-a72ff6f80cea', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf1fccc-e852-11e2-97af-6336247d6e32'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b1872f3e-e850-11e2-a165-a72ff6f80cea', '0cf1fccc-e852-11e2-97af-6336247d6e32', 'royal estate'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b1872f3e-e850-11e2-a165-a72ff6f80cea'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b187564e-e850-11e2-b7b3-074f51f352b3', 'Fatai (''Api)', 'Vava''u', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Fatai (''Api)' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b1877d5e-e850-11e2-a94d-bb96a21453f6', 'b187564e-e850-11e2-b7b3-074f51f352b3', 'ROYAL ESTATE_12', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b1877d5e-e850-11e2-a94d-bb96a21453f6'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf223dc-e852-11e2-9cfb-ab15f4b17df7', 'b1877d5e-e850-11e2-a94d-bb96a21453f6', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf223dc-e852-11e2-9cfb-ab15f4b17df7'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b1877d5e-e850-11e2-a94d-bb96a21453f6', '0cf223dc-e852-11e2-9cfb-ab15f4b17df7', 'royal estate'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b1877d5e-e850-11e2-a94d-bb96a21453f6'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b187cb88-e850-11e2-a6b2-af54fd4bbe24', 'Fangaliki (''Api)', 'Vava''u', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Fangaliki (''Api)' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b187f298-e850-11e2-8946-d3e4b9d9f8ee', 'b187cb88-e850-11e2-a6b2-af54fd4bbe24', 'ROYAL ESTATE_13', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b187f298-e850-11e2-8946-d3e4b9d9f8ee'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf24aec-e852-11e2-9408-db994dd485ba', 'b187f298-e850-11e2-8946-d3e4b9d9f8ee', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf24aec-e852-11e2-9408-db994dd485ba'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b187f298-e850-11e2-8946-d3e4b9d9f8ee', '0cf24aec-e852-11e2-9408-db994dd485ba', 'royal estate'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b187f298-e850-11e2-8946-d3e4b9d9f8ee'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b18819a8-e850-11e2-81f3-5f8661f364c9', 'Keitahi (''Api)', 'Vava''u', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Keitahi (''Api)' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b18867c8-e850-11e2-b707-d314865ee97d', 'b18819a8-e850-11e2-81f3-5f8661f364c9', 'ROYAL ESTATE_14', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b18867c8-e850-11e2-b707-d314865ee97d'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf271fc-e852-11e2-a204-5ff7d79847fd', 'b18867c8-e850-11e2-b707-d314865ee97d', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf271fc-e852-11e2-a204-5ff7d79847fd'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b18867c8-e850-11e2-b707-d314865ee97d', '0cf271fc-e852-11e2-a204-5ff7d79847fd', 'royal estate'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b18867c8-e850-11e2-b707-d314865ee97d'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b1888ed8-e850-11e2-9f32-03aa292b7798', 'Tamama''uloto (''Api)', 'Vava''u', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Tamama''uloto (''Api)' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b188b5e8-e850-11e2-b960-1f6c733a0db3', 'b1888ed8-e850-11e2-9f32-03aa292b7798', 'ROYAL ESTATE_15', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b188b5e8-e850-11e2-b960-1f6c733a0db3'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf2990c-e852-11e2-b67d-c3a350f980d1', 'b188b5e8-e850-11e2-b960-1f6c733a0db3', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf2990c-e852-11e2-b67d-c3a350f980d1'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b188b5e8-e850-11e2-b960-1f6c733a0db3', '0cf2990c-e852-11e2-b67d-c3a350f980d1', 'royal estate'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b188b5e8-e850-11e2-b960-1f6c733a0db3'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b1890408-e850-11e2-8535-4b6c46932235', 'Veitatalo (''Api)', 'Vava''u', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Veitatalo (''Api)' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b1892b18-e850-11e2-a558-57948fc23682', 'b1890408-e850-11e2-8535-4b6c46932235', 'ROYAL ESTATE_16', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b1892b18-e850-11e2-a558-57948fc23682'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf2e72c-e852-11e2-9279-17aa7ae7df35', 'b1892b18-e850-11e2-a558-57948fc23682', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf2e72c-e852-11e2-9279-17aa7ae7df35'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b1892b18-e850-11e2-a558-57948fc23682', '0cf2e72c-e852-11e2-9279-17aa7ae7df35', 'royal estate'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b1892b18-e850-11e2-a558-57948fc23682'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b1895228-e850-11e2-9cdb-df0fdeb7bed3', 'Pipilotoi (''Api)', 'Vava''u', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Pipilotoi (''Api)' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b189a048-e850-11e2-a556-07b906c1b23b', 'b1895228-e850-11e2-9cdb-df0fdeb7bed3', 'ROYAL ESTATE_17', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b189a048-e850-11e2-a556-07b906c1b23b'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf30e3c-e852-11e2-b9c8-9f144247d85a', 'b189a048-e850-11e2-a556-07b906c1b23b', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf30e3c-e852-11e2-b9c8-9f144247d85a'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b189a048-e850-11e2-a556-07b906c1b23b', '0cf30e3c-e852-11e2-b9c8-9f144247d85a', 'royal estate'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b189a048-e850-11e2-a556-07b906c1b23b'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b189c758-e850-11e2-9990-4f0e3cc3158f', 'Pangai - ''Uta (Lifuka)', 'Ha''apai', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Pangai - ''Uta (Lifuka)' AND name_lastpart = 'Ha''apai');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b189ee68-e850-11e2-ae6e-1bb9987287b9', 'b189c758-e850-11e2-9990-4f0e3cc3158f', 'ROYAL ESTATE_18', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b189ee68-e850-11e2-ae6e-1bb9987287b9'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf3354c-e852-11e2-9070-a7435210603f', 'b189ee68-e850-11e2-ae6e-1bb9987287b9', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf3354c-e852-11e2-9070-a7435210603f'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b189ee68-e850-11e2-ae6e-1bb9987287b9', '0cf3354c-e852-11e2-9070-a7435210603f', 'royal estate'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b189ee68-e850-11e2-ae6e-1bb9987287b9'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b18a1578-e850-11e2-b559-638cb5d07001', 'Tau''akipulu', 'Ha''apai', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Tau''akipulu' AND name_lastpart = 'Ha''apai');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b18a63a2-e850-11e2-aeda-3f9973d049cc', 'b18a1578-e850-11e2-b559-638cb5d07001', 'ROYAL ESTATE_19', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b18a63a2-e850-11e2-aeda-3f9973d049cc'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf35c5c-e852-11e2-8981-b3a5c9b3ce55', 'b18a63a2-e850-11e2-aeda-3f9973d049cc', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf35c5c-e852-11e2-8981-b3a5c9b3ce55'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b18a63a2-e850-11e2-aeda-3f9973d049cc', '0cf35c5c-e852-11e2-8981-b3a5c9b3ce55', 'royal estate'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b18a63a2-e850-11e2-aeda-3f9973d049cc'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b18a8ab2-e850-11e2-9e9e-1711c0b59a00', 'Pangai (Foa)', 'Ha''apai', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Pangai (Foa)' AND name_lastpart = 'Ha''apai');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b18ab1c2-e850-11e2-ae2b-db219b32d4eb', 'b18a8ab2-e850-11e2-9e9e-1711c0b59a00', 'ROYAL ESTATE_20', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b18ab1c2-e850-11e2-ae2b-db219b32d4eb'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf3836c-e852-11e2-b203-b35369081427', 'b18ab1c2-e850-11e2-ae2b-db219b32d4eb', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf3836c-e852-11e2-b203-b35369081427'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b18ab1c2-e850-11e2-ae2b-db219b32d4eb', '0cf3836c-e852-11e2-b203-b35369081427', 'royal estate'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b18ab1c2-e850-11e2-ae2b-db219b32d4eb'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b18affe2-e850-11e2-b1a1-27a94ae94b66', 'Mango Island', 'Ha''apai', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Mango Island' AND name_lastpart = 'Ha''apai');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b18b26f2-e850-11e2-a684-a78eb344851d', 'b18affe2-e850-11e2-b1a1-27a94ae94b66', 'ROYAL ESTATE_21', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b18b26f2-e850-11e2-a684-a78eb344851d'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf3d18c-e852-11e2-8e9a-0ffcf433d072', 'b18b26f2-e850-11e2-a684-a78eb344851d', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf3d18c-e852-11e2-8e9a-0ffcf433d072'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b18b26f2-e850-11e2-a684-a78eb344851d', '0cf3d18c-e852-11e2-8e9a-0ffcf433d072', 'royal estate'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b18b26f2-e850-11e2-a684-a78eb344851d'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b18b4e02-e850-11e2-bd59-4fd33729d1a7', 'Nukunamo Island', 'Ha''apai', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Nukunamo Island' AND name_lastpart = 'Ha''apai');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b18b9c22-e850-11e2-a7fc-7fcbfb2056f5', 'b18b4e02-e850-11e2-bd59-4fd33729d1a7', 'ROYAL ESTATE_22', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b18b9c22-e850-11e2-a7fc-7fcbfb2056f5'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf3f89c-e852-11e2-b4cd-67be7244ab83', 'b18b9c22-e850-11e2-a7fc-7fcbfb2056f5', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf3f89c-e852-11e2-b4cd-67be7244ab83'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b18b9c22-e850-11e2-a7fc-7fcbfb2056f5', '0cf3f89c-e852-11e2-b4cd-67be7244ab83', 'royal estate'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b18b9c22-e850-11e2-a7fc-7fcbfb2056f5'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b18bc332-e850-11e2-b2ae-e78363bd2ca5', 'Houma', '''Eua', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Houma' AND name_lastpart = '''Eua');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b18bea42-e850-11e2-aa1d-a7385b27406f', 'b18bc332-e850-11e2-b2ae-e78363bd2ca5', 'ROYAL ESTATE_23', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b18bea42-e850-11e2-aa1d-a7385b27406f'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf41fac-e852-11e2-9266-ff6730572fb6', 'b18bea42-e850-11e2-aa1d-a7385b27406f', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf41fac-e852-11e2-9266-ff6730572fb6'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b18bea42-e850-11e2-aa1d-a7385b27406f', '0cf41fac-e852-11e2-9266-ff6730572fb6', 'royal estate'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b18bea42-e850-11e2-aa1d-a7385b27406f'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b18c3862-e850-11e2-a00c-07105db7f1dc', 'Falehau', 'Niua', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Falehau' AND name_lastpart = 'Niua');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b18c5f72-e850-11e2-a7dc-3b5e8128567a', 'b18c3862-e850-11e2-a00c-07105db7f1dc', 'ROYAL ESTATE_24', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b18c5f72-e850-11e2-a7dc-3b5e8128567a'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf46dd6-e852-11e2-808c-5bfa69eb255e', 'b18c5f72-e850-11e2-a7dc-3b5e8128567a', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf46dd6-e852-11e2-808c-5bfa69eb255e'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b18c5f72-e850-11e2-a7dc-3b5e8128567a', '0cf46dd6-e852-11e2-808c-5bfa69eb255e', 'royal estate'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b18c5f72-e850-11e2-a7dc-3b5e8128567a'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b18c8682-e850-11e2-ab2d-9bc85c57f80e', 'Mata''aho', 'Niua', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Mata''aho' AND name_lastpart = 'Niua');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b18cd4a2-e850-11e2-a8a7-671e06082aa8', 'b18c8682-e850-11e2-ab2d-9bc85c57f80e', 'ROYAL ESTATE_25', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b18cd4a2-e850-11e2-a8a7-671e06082aa8'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf494e6-e852-11e2-9eff-db94a2120924', 'b18cd4a2-e850-11e2-a8a7-671e06082aa8', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf494e6-e852-11e2-9eff-db94a2120924'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b18cd4a2-e850-11e2-a8a7-671e06082aa8', '0cf494e6-e852-11e2-9eff-db94a2120924', 'royal estate'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b18cd4a2-e850-11e2-a8a7-671e06082aa8'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b18cfbbc-e850-11e2-8d70-9f9599fa7603', 'Mahinafekita', 'Niua', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Mahinafekita' AND name_lastpart = 'Niua');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b18d22cc-e850-11e2-9447-47deaa66845a', 'b18cfbbc-e850-11e2-8d70-9f9599fa7603', 'TANGIPA_1', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b18d22cc-e850-11e2-9447-47deaa66845a'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf4bbf6-e852-11e2-a7dd-2b963266d875', 'b18d22cc-e850-11e2-9447-47deaa66845a', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf4bbf6-e852-11e2-a7dd-2b963266d875'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b18d22cc-e850-11e2-9447-47deaa66845a', '0cf4bbf6-e852-11e2-a7dd-2b963266d875', 'tangipa'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b18d22cc-e850-11e2-9447-47deaa66845a'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b18d49dc-e850-11e2-afe6-43668f03eb37', 'Angihoa', 'Niua', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Angihoa' AND name_lastpart = 'Niua');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b18d97fc-e850-11e2-a8ae-67e6cbf2d52a', 'b18d49dc-e850-11e2-afe6-43668f03eb37', 'TANGIPA_2', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b18d97fc-e850-11e2-a8ae-67e6cbf2d52a'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf4e306-e852-11e2-8436-176e1aa3b24b', 'b18d97fc-e850-11e2-a8ae-67e6cbf2d52a', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf4e306-e852-11e2-8436-176e1aa3b24b'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b18d97fc-e850-11e2-a8ae-67e6cbf2d52a', '0cf4e306-e852-11e2-8436-176e1aa3b24b', 'tangipa'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b18d97fc-e850-11e2-a8ae-67e6cbf2d52a'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b18dbf0c-e850-11e2-a419-2f9d2dd8d9ef', 'Makave', 'Vava''u', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Makave' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b18de61c-e850-11e2-8e5d-377e9ceb3bc4', 'b18dbf0c-e850-11e2-a419-2f9d2dd8d9ef', 'TU''I''AFITU_1', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b18de61c-e850-11e2-8e5d-377e9ceb3bc4'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf50a16-e852-11e2-9405-636df92d9828', 'b18de61c-e850-11e2-8e5d-377e9ceb3bc4', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf50a16-e852-11e2-9405-636df92d9828'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b18de61c-e850-11e2-8e5d-377e9ceb3bc4', '0cf50a16-e852-11e2-9405-636df92d9828', 'tu''i''afitu'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b18de61c-e850-11e2-8e5d-377e9ceb3bc4'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b18e343c-e850-11e2-ae90-23648743b9ee', 'Holopeka', 'Ha''apai', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Holopeka' AND name_lastpart = 'Ha''apai');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b18e5b4c-e850-11e2-8590-43dbe53bfd4e', 'b18e343c-e850-11e2-ae90-23648743b9ee', 'TU''I''AFITU_2', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b18e5b4c-e850-11e2-8590-43dbe53bfd4e'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf53126-e852-11e2-af4e-7b3e0422b817', 'b18e5b4c-e850-11e2-8590-43dbe53bfd4e', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf53126-e852-11e2-af4e-7b3e0422b817'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b18e5b4c-e850-11e2-8590-43dbe53bfd4e', '0cf53126-e852-11e2-af4e-7b3e0422b817', 'tu''i''afitu'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b18e5b4c-e850-11e2-8590-43dbe53bfd4e'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b18e825c-e850-11e2-baa5-0706d2506646', 'Fonoifua', 'Ha''apai', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Fonoifua' AND name_lastpart = 'Ha''apai');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b18ea96c-e850-11e2-ab4c-772c754b28f5', 'b18e825c-e850-11e2-baa5-0706d2506646', 'TU''I''AFITU_3', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b18ea96c-e850-11e2-ab4c-772c754b28f5'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf57f46-e852-11e2-9533-83740221eb7d', 'b18ea96c-e850-11e2-ab4c-772c754b28f5', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf57f46-e852-11e2-9533-83740221eb7d'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b18ea96c-e850-11e2-ab4c-772c754b28f5', '0cf57f46-e852-11e2-9533-83740221eb7d', 'tu''i''afitu'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b18ea96c-e850-11e2-ab4c-772c754b28f5'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b18ef78c-e850-11e2-9d7e-176f4a5a5e2b', 'Ha''ano', 'Ha''apai', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Ha''ano' AND name_lastpart = 'Ha''apai');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b18f1e9c-e850-11e2-b06e-f30d05c23c67', 'b18ef78c-e850-11e2-9d7e-176f4a5a5e2b', 'TU''IHA''ANGANA_1', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b18f1e9c-e850-11e2-b06e-f30d05c23c67'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf5a656-e852-11e2-8f66-b7934b8f643e', 'b18f1e9c-e850-11e2-b06e-f30d05c23c67', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf5a656-e852-11e2-8f66-b7934b8f643e'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b18f1e9c-e850-11e2-b06e-f30d05c23c67', '0cf5a656-e852-11e2-8f66-b7934b8f643e', 'tu''iha''angana'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b18f1e9c-e850-11e2-b06e-f30d05c23c67'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b18f45ac-e850-11e2-949e-e7346c062269', 'Pukotala', 'Ha''apai', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Pukotala' AND name_lastpart = 'Ha''apai');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b18f93d6-e850-11e2-b457-83f6653619a5', 'b18f45ac-e850-11e2-949e-e7346c062269', 'TU''IHA''ANGANA_2', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b18f93d6-e850-11e2-b457-83f6653619a5'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf5cd66-e852-11e2-af16-ab1231f6d844', 'b18f93d6-e850-11e2-b457-83f6653619a5', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf5cd66-e852-11e2-af16-ab1231f6d844'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b18f93d6-e850-11e2-b457-83f6653619a5', '0cf5cd66-e852-11e2-af16-ab1231f6d844', 'tu''iha''angana'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b18f93d6-e850-11e2-b457-83f6653619a5'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b18fbae6-e850-11e2-9dda-fbcac9dc6cb9', 'Muitoa', 'Ha''apai', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Muitoa' AND name_lastpart = 'Ha''apai');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b18fe1f6-e850-11e2-affa-7b4bbf616918', 'b18fbae6-e850-11e2-9dda-fbcac9dc6cb9', 'TU''IHA''ANGANA_3', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b18fe1f6-e850-11e2-affa-7b4bbf616918'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf5f476-e852-11e2-a68f-579cb48fc8aa', 'b18fe1f6-e850-11e2-affa-7b4bbf616918', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf5f476-e852-11e2-a68f-579cb48fc8aa'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b18fe1f6-e850-11e2-affa-7b4bbf616918', '0cf5f476-e852-11e2-a68f-579cb48fc8aa', 'tu''iha''angana'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b18fe1f6-e850-11e2-affa-7b4bbf616918'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b1903016-e850-11e2-b3da-c3b9f55056f9', 'Tungua', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Tungua' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b1905726-e850-11e2-989e-5f6cb4a08906', 'b1903016-e850-11e2-b3da-c3b9f55056f9', 'TU''IHA''ATEIHO_1', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b1905726-e850-11e2-989e-5f6cb4a08906'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf64296-e852-11e2-b153-8f06d342df5d', 'b1905726-e850-11e2-989e-5f6cb4a08906', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf64296-e852-11e2-b153-8f06d342df5d'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b1905726-e850-11e2-989e-5f6cb4a08906', '0cf64296-e852-11e2-b153-8f06d342df5d', 'tu''iha''ateiho'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b1905726-e850-11e2-989e-5f6cb4a08906'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b190a546-e850-11e2-b960-db9667e74f63', 'Matuku', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Matuku' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b190cc56-e850-11e2-8488-cf04f405be5f', 'b190a546-e850-11e2-b960-db9667e74f63', 'TU''IHA''ATEIHO_2', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b190cc56-e850-11e2-8488-cf04f405be5f'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf669a6-e852-11e2-b919-c7844582b0b6', 'b190cc56-e850-11e2-8488-cf04f405be5f', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf669a6-e852-11e2-b919-c7844582b0b6'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b190cc56-e850-11e2-8488-cf04f405be5f', '0cf669a6-e852-11e2-b919-c7844582b0b6', 'tu''iha''ateiho'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b190cc56-e850-11e2-8488-cf04f405be5f'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b190f366-e850-11e2-96c3-4be474d09f54', 'Ha''ateiho', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Ha''ateiho' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b1911a76-e850-11e2-89b6-733f114712ac', 'b190f366-e850-11e2-96c3-4be474d09f54', 'TU''IHA''ATEIHO_3', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b1911a76-e850-11e2-89b6-733f114712ac'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf690b6-e852-11e2-9478-039474ead6bf', 'b1911a76-e850-11e2-89b6-733f114712ac', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf690b6-e852-11e2-9478-039474ead6bf'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b1911a76-e850-11e2-89b6-733f114712ac', '0cf690b6-e852-11e2-9478-039474ead6bf', 'tu''iha''ateiho'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b1911a76-e850-11e2-89b6-733f114712ac'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b1916896-e850-11e2-b9a5-53c10d342cb1', 'Vaikeli ', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Vaikeli ' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b1918fa6-e850-11e2-a944-a7b39c7dbae0', 'b1916896-e850-11e2-b9a5-53c10d342cb1', 'TU''IHA''ATEIHO_4', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b1918fa6-e850-11e2-a944-a7b39c7dbae0'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf6b7c6-e852-11e2-a95e-634bcc556139', 'b1918fa6-e850-11e2-a944-a7b39c7dbae0', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf6b7c6-e852-11e2-a95e-634bcc556139'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b1918fa6-e850-11e2-a944-a7b39c7dbae0', '0cf6b7c6-e852-11e2-a95e-634bcc556139', 'tu''iha''ateiho'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b1918fa6-e850-11e2-a944-a7b39c7dbae0'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b191b6b6-e850-11e2-8535-bf3d8e3c4d4e', 'Ha''ateiho', 'Vava''u', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Ha''ateiho' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b19204d6-e850-11e2-be93-3bf16e9d79aa', 'b191b6b6-e850-11e2-8535-bf3d8e3c4d4e', 'TU''IHA''ATEIHO_5', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b19204d6-e850-11e2-be93-3bf16e9d79aa'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf705e6-e852-11e2-9b14-fbd30aad224a', 'b19204d6-e850-11e2-be93-3bf16e9d79aa', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf705e6-e852-11e2-9b14-fbd30aad224a'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b19204d6-e850-11e2-be93-3bf16e9d79aa', '0cf705e6-e852-11e2-9b14-fbd30aad224a', 'tu''iha''ateiho'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b19204d6-e850-11e2-be93-3bf16e9d79aa'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b1922be6-e850-11e2-b7cb-6b8ce5353984', 'Fine''ehe (Pangai)', 'Ha''apai', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Fine''ehe (Pangai)' AND name_lastpart = 'Ha''apai');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b1925300-e850-11e2-9ef1-6359783bb12a', 'b1922be6-e850-11e2-b7cb-6b8ce5353984', 'TU''IHA''ATEIHO_6', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b1925300-e850-11e2-9ef1-6359783bb12a'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf72d00-e852-11e2-be59-7f7159d300c4', 'b1925300-e850-11e2-9ef1-6359783bb12a', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf72d00-e852-11e2-be59-7f7159d300c4'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b1925300-e850-11e2-9ef1-6359783bb12a', '0cf72d00-e852-11e2-be59-7f7159d300c4', 'tu''iha''ateiho'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b1925300-e850-11e2-9ef1-6359783bb12a'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b192a120-e850-11e2-8cee-336b9369dc29', 'Talasiu', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Talasiu' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b192c830-e850-11e2-abd7-934f7345f5b5', 'b192a120-e850-11e2-8cee-336b9369dc29', 'TU''ILAKEPA_1', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b192c830-e850-11e2-abd7-934f7345f5b5'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf75410-e852-11e2-8d58-cf815339e9e0', 'b192c830-e850-11e2-abd7-934f7345f5b5', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf75410-e852-11e2-8d58-cf815339e9e0'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b192c830-e850-11e2-abd7-934f7345f5b5', '0cf75410-e852-11e2-8d58-cf815339e9e0', 'tu''ilakepa'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b192c830-e850-11e2-abd7-934f7345f5b5'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b192ef40-e850-11e2-ad36-8317711b8869', 'Ofu', 'Vava''u', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Ofu' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b1931650-e850-11e2-af1c-6bac8a839f88', 'b192ef40-e850-11e2-ad36-8317711b8869', 'TU''ILAKEPA_2', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b1931650-e850-11e2-af1c-6bac8a839f88'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf7a230-e852-11e2-a4f4-4bba0ac49ad0', 'b1931650-e850-11e2-af1c-6bac8a839f88', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf7a230-e852-11e2-a4f4-4bba0ac49ad0'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b1931650-e850-11e2-af1c-6bac8a839f88', '0cf7a230-e852-11e2-a4f4-4bba0ac49ad0', 'tu''ilakepa'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b1931650-e850-11e2-af1c-6bac8a839f88'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b1936470-e850-11e2-8a1a-775e8b2cb24c', 'Okoa', 'Vava''u', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Okoa' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b1938b80-e850-11e2-9ca8-9f6c5ea29445', 'b1936470-e850-11e2-8a1a-775e8b2cb24c', 'TU''ILAKEPA_3', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b1938b80-e850-11e2-9ca8-9f6c5ea29445'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf7c940-e852-11e2-8eb0-677f921f933c', 'b1938b80-e850-11e2-9ca8-9f6c5ea29445', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf7c940-e852-11e2-8eb0-677f921f933c'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b1938b80-e850-11e2-9ca8-9f6c5ea29445', '0cf7c940-e852-11e2-8eb0-677f921f933c', 'tu''ilakepa'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b1938b80-e850-11e2-9ca8-9f6c5ea29445'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b193b290-e850-11e2-aded-2b2fb15b3ae6', 'Vasivasi', 'Vava''u', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Vasivasi' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b19400b0-e850-11e2-84ae-133937b4d502', 'b193b290-e850-11e2-aded-2b2fb15b3ae6', 'TU''ILAKEPA_4', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b19400b0-e850-11e2-84ae-133937b4d502'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf7f050-e852-11e2-adf9-3b7dc5af2eb5', 'b19400b0-e850-11e2-84ae-133937b4d502', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf7f050-e852-11e2-adf9-3b7dc5af2eb5'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b19400b0-e850-11e2-84ae-133937b4d502', '0cf7f050-e852-11e2-adf9-3b7dc5af2eb5', 'tu''ilakepa'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b19400b0-e850-11e2-84ae-133937b4d502'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b19427c0-e850-11e2-9f25-cb59af6f40c8', 'Pelehake', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Pelehake' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b1944ed0-e850-11e2-ac74-ff3f73c5a0f0', 'b19427c0-e850-11e2-9f25-cb59af6f40c8', 'TU''IPELEHAKE_1', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b1944ed0-e850-11e2-ac74-ff3f73c5a0f0'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf81760-e852-11e2-9dae-bf0129e2a84c', 'b1944ed0-e850-11e2-ac74-ff3f73c5a0f0', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf81760-e852-11e2-9dae-bf0129e2a84c'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b1944ed0-e850-11e2-ac74-ff3f73c5a0f0', '0cf81760-e852-11e2-9dae-bf0129e2a84c', 'tu''ipelehake'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b1944ed0-e850-11e2-ac74-ff3f73c5a0f0'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b19475e0-e850-11e2-a6c4-331a33518030', 'Ha''atalafale', 'Vava''u', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Ha''atalafale' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b194c400-e850-11e2-96f8-5384263b7d17', 'b19475e0-e850-11e2-a6c4-331a33518030', 'TU''IPELEHAKE_2', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b194c400-e850-11e2-96f8-5384263b7d17'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf83e70-e852-11e2-ab6d-e3afa69d8639', 'b194c400-e850-11e2-96f8-5384263b7d17', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf83e70-e852-11e2-ab6d-e3afa69d8639'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b194c400-e850-11e2-96f8-5384263b7d17', '0cf83e70-e852-11e2-ab6d-e3afa69d8639', 'tu''ipelehake'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b194c400-e850-11e2-96f8-5384263b7d17'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b194eb1a-e850-11e2-9f78-8b3f2486d2d2', 'Ha''atalafale', 'Ha''apai', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Ha''atalafale' AND name_lastpart = 'Ha''apai');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b195122a-e850-11e2-b6a9-0f4fc794faae', 'b194eb1a-e850-11e2-9f78-8b3f2486d2d2', 'TU''IPELEHAKE_3', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b195122a-e850-11e2-b6a9-0f4fc794faae'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf86580-e852-11e2-87a5-23526278df67', 'b195122a-e850-11e2-b6a9-0f4fc794faae', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf86580-e852-11e2-87a5-23526278df67'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b195122a-e850-11e2-b6a9-0f4fc794faae', '0cf86580-e852-11e2-87a5-23526278df67', 'tu''ipelehake'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b195122a-e850-11e2-b6a9-0f4fc794faae'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b195604a-e850-11e2-a047-ff44e5446d0f', '''Utungake', 'Vava''u', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = '''Utungake' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b195875a-e850-11e2-87f4-dbbac74b6c17', 'b195604a-e850-11e2-a047-ff44e5446d0f', 'TUITA_1', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b195875a-e850-11e2-87f4-dbbac74b6c17'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf8b3a0-e852-11e2-8ee3-93c73b5b665f', 'b195875a-e850-11e2-87f4-dbbac74b6c17', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf8b3a0-e852-11e2-8ee3-93c73b5b665f'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b195875a-e850-11e2-87f4-dbbac74b6c17', '0cf8b3a0-e852-11e2-8ee3-93c73b5b665f', 'tuita'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b195875a-e850-11e2-87f4-dbbac74b6c17'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b195ae6a-e850-11e2-9604-5bfa242e5036', 'Ha''afakahenga', 'Vava''u', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Ha''afakahenga' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b195fc8a-e850-11e2-bccd-3bed8125eb3d', 'b195ae6a-e850-11e2-9604-5bfa242e5036', 'TUITA_2', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b195fc8a-e850-11e2-bccd-3bed8125eb3d'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf8dab0-e852-11e2-8a42-efb2db18b0c8', 'b195fc8a-e850-11e2-bccd-3bed8125eb3d', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf8dab0-e852-11e2-8a42-efb2db18b0c8'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b195fc8a-e850-11e2-bccd-3bed8125eb3d', '0cf8dab0-e852-11e2-8a42-efb2db18b0c8', 'tuita'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b195fc8a-e850-11e2-bccd-3bed8125eb3d'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b196239a-e850-11e2-9a54-73fed59cc83b', 'Futu', 'Niua', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Futu' AND name_lastpart = 'Niua');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b1964aaa-e850-11e2-907b-cba979c2e8fd', 'b196239a-e850-11e2-9a54-73fed59cc83b', 'TUITA_3', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b1964aaa-e850-11e2-907b-cba979c2e8fd'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf901c0-e852-11e2-8429-b3e8823d2491', 'b1964aaa-e850-11e2-907b-cba979c2e8fd', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf901c0-e852-11e2-8429-b3e8823d2491'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b1964aaa-e850-11e2-907b-cba979c2e8fd', '0cf901c0-e852-11e2-8429-b3e8823d2491', 'tuita'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b1964aaa-e850-11e2-907b-cba979c2e8fd'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b19698ca-e850-11e2-9c91-cf98d5596ea4', 'Nukunuku', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Nukunuku' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b196bfda-e850-11e2-81a1-2bfa01f4eb14', 'b19698ca-e850-11e2-9c91-cf98d5596ea4', 'TU''IVAKANO_1', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b196bfda-e850-11e2-81a1-2bfa01f4eb14'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf928d0-e852-11e2-a8d0-e35fb88d9c53', 'b196bfda-e850-11e2-81a1-2bfa01f4eb14', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf928d0-e852-11e2-a8d0-e35fb88d9c53'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b196bfda-e850-11e2-81a1-2bfa01f4eb14', '0cf928d0-e852-11e2-a8d0-e35fb88d9c53', 'tu''ivakano'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b196bfda-e850-11e2-81a1-2bfa01f4eb14'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b1970dfa-e850-11e2-ba5c-a3790a42bebb', 'Matahau', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Matahau' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b197350a-e850-11e2-b5c8-a326ffa791e6', 'b1970dfa-e850-11e2-ba5c-a3790a42bebb', 'TU''IVAKANO_2', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b197350a-e850-11e2-b5c8-a326ffa791e6'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf976f0-e852-11e2-8720-d7b306b42536', 'b197350a-e850-11e2-b5c8-a326ffa791e6', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf976f0-e852-11e2-8720-d7b306b42536'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b197350a-e850-11e2-b5c8-a326ffa791e6', '0cf976f0-e852-11e2-8720-d7b306b42536', 'tu''ivakano'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b197350a-e850-11e2-b5c8-a326ffa791e6'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b1975c1a-e850-11e2-bfa4-0b5d3351639c', 'Vaotu''u', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Vaotu''u' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b197832a-e850-11e2-b640-c35c5a12f97f', 'b1975c1a-e850-11e2-bfa4-0b5d3351639c', 'TU''IVAKANO_3', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b197832a-e850-11e2-b640-c35c5a12f97f'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf99e00-e852-11e2-959e-0f5f4fd04409', 'b197832a-e850-11e2-b640-c35c5a12f97f', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf99e00-e852-11e2-959e-0f5f4fd04409'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b197832a-e850-11e2-b640-c35c5a12f97f', '0cf99e00-e852-11e2-959e-0f5f4fd04409', 'tu''ivakano'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b197832a-e850-11e2-b640-c35c5a12f97f'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b197d154-e850-11e2-b140-9f4b13675f32', 'Matafonua', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Matafonua' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b197f864-e850-11e2-a4df-2b77929280a2', 'b197d154-e850-11e2-b140-9f4b13675f32', 'TU''IVAKANO_4', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b197f864-e850-11e2-a4df-2b77929280a2'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf9c51a-e852-11e2-995d-ebe0efc35dfb', 'b197f864-e850-11e2-a4df-2b77929280a2', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf9c51a-e852-11e2-995d-ebe0efc35dfb'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b197f864-e850-11e2-a4df-2b77929280a2', '0cf9c51a-e852-11e2-995d-ebe0efc35dfb', 'tu''ivakano'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b197f864-e850-11e2-a4df-2b77929280a2'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b1981f74-e850-11e2-9f8f-cff842d26648', 'Mu''a', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Mu''a' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b1986d94-e850-11e2-8e0d-2f4af8f3fa5b', 'b1981f74-e850-11e2-9f8f-cff842d26648', 'TUNGI_1', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b1986d94-e850-11e2-8e0d-2f4af8f3fa5b'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cf9ec2a-e852-11e2-baac-47ef30843a5b', 'b1986d94-e850-11e2-8e0d-2f4af8f3fa5b', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cf9ec2a-e852-11e2-baac-47ef30843a5b'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b1986d94-e850-11e2-8e0d-2f4af8f3fa5b', '0cf9ec2a-e852-11e2-baac-47ef30843a5b', 'tungi'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b1986d94-e850-11e2-8e0d-2f4af8f3fa5b'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b19894a4-e850-11e2-9e5f-4b29e28b351d', 'Mu''a (Ha''atakalaua to Fua''amotu)', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Mu''a (Ha''atakalaua to Fua''amotu)' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b198bbb4-e850-11e2-89a1-73480f12280f', 'b19894a4-e850-11e2-9e5f-4b29e28b351d', 'TUNGI_2', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b198bbb4-e850-11e2-89a1-73480f12280f'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cfa133a-e852-11e2-8e33-933b75b32565', 'b198bbb4-e850-11e2-89a1-73480f12280f', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cfa133a-e852-11e2-8e33-933b75b32565'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b198bbb4-e850-11e2-89a1-73480f12280f', '0cfa133a-e852-11e2-8e33-933b75b32565', 'tungi'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b198bbb4-e850-11e2-89a1-73480f12280f'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b19909d4-e850-11e2-a83e-7f8a587554b9', 'Mu''a (Kai''avale)', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Mu''a (Kai''avale)' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b19930e4-e850-11e2-b23c-1b6efd91bcde', 'b19909d4-e850-11e2-a83e-7f8a587554b9', 'TUNGI_3', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b19930e4-e850-11e2-b23c-1b6efd91bcde'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cfa3a4a-e852-11e2-9375-9f81cd30665c', 'b19930e4-e850-11e2-b23c-1b6efd91bcde', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cfa3a4a-e852-11e2-9375-9f81cd30665c'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b19930e4-e850-11e2-b23c-1b6efd91bcde', '0cfa3a4a-e852-11e2-9375-9f81cd30665c', 'tungi'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b19930e4-e850-11e2-b23c-1b6efd91bcde'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b19957f4-e850-11e2-86ad-0f99b2642c30', 'Mu''a (Ha''atui)', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Mu''a (Ha''atui)' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b1997f04-e850-11e2-a71e-4b32606bc000', 'b19957f4-e850-11e2-86ad-0f99b2642c30', 'TUNGI_4', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b1997f04-e850-11e2-a71e-4b32606bc000'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cfa886a-e852-11e2-a117-fbf628c8242f', 'b1997f04-e850-11e2-a71e-4b32606bc000', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cfa886a-e852-11e2-a117-fbf628c8242f'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b1997f04-e850-11e2-a71e-4b32606bc000', '0cfa886a-e852-11e2-a117-fbf628c8242f', 'tungi'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b1997f04-e850-11e2-a71e-4b32606bc000'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b199cd24-e850-11e2-9adc-b7c64564068c', 'Navutoka', 'Tongatapu', 'Part that was divided by Malupo and Toi', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Navutoka' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b199f434-e850-11e2-b679-cf8574e2fb31', 'b199cd24-e850-11e2-9adc-b7c64564068c', 'TUNGI_5', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b199f434-e850-11e2-b679-cf8574e2fb31'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cfaaf7a-e852-11e2-8d15-9fb4714958e7', 'b199f434-e850-11e2-b679-cf8574e2fb31', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cfaaf7a-e852-11e2-8d15-9fb4714958e7'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b199f434-e850-11e2-b679-cf8574e2fb31', '0cfaaf7a-e852-11e2-8d15-9fb4714958e7', 'tungi'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b199f434-e850-11e2-b679-cf8574e2fb31'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b19a1b44-e850-11e2-a362-dffd121eb8ab', 'Ha''afeva', 'Ha''apai', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Ha''afeva' AND name_lastpart = 'Ha''apai');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b19a696e-e850-11e2-a237-5fd593268fac', 'b19a1b44-e850-11e2-a362-dffd121eb8ab', 'TU''UHETOKA_1', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b19a696e-e850-11e2-a237-5fd593268fac'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cfafd9a-e852-11e2-ae31-d74ddbf8d50f', 'b19a696e-e850-11e2-a237-5fd593268fac', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cfafd9a-e852-11e2-ae31-d74ddbf8d50f'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b19a696e-e850-11e2-a237-5fd593268fac', '0cfafd9a-e852-11e2-ae31-d74ddbf8d50f', 'tu''uhetoka'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b19a696e-e850-11e2-a237-5fd593268fac'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b19a907e-e850-11e2-87a1-ef68e931fda4', 'Hihifo', 'Vava''u', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Hihifo' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b19ab78e-e850-11e2-99d9-63a552bac558', 'b19a907e-e850-11e2-87a1-ef68e931fda4', '''ULUKALALA_1', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b19ab78e-e850-11e2-99d9-63a552bac558'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cfb24aa-e852-11e2-af36-df468486f909', 'b19ab78e-e850-11e2-99d9-63a552bac558', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cfb24aa-e852-11e2-af36-df468486f909'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b19ab78e-e850-11e2-99d9-63a552bac558', '0cfb24aa-e852-11e2-af36-df468486f909', '''ulukalala'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b19ab78e-e850-11e2-99d9-63a552bac558'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b19ade9e-e850-11e2-984d-878721971a2d', 'Houma', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Houma' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b19b2cbe-e850-11e2-9b68-cf85f9cb60bc', 'b19ade9e-e850-11e2-984d-878721971a2d', 'VAEA_1', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b19b2cbe-e850-11e2-9b68-cf85f9cb60bc'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cfb4bba-e852-11e2-a791-b7b4ce6ae83d', 'b19b2cbe-e850-11e2-9b68-cf85f9cb60bc', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cfb4bba-e852-11e2-a791-b7b4ce6ae83d'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b19b2cbe-e850-11e2-9b68-cf85f9cb60bc', '0cfb4bba-e852-11e2-a791-b7b4ce6ae83d', 'vaea'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b19b2cbe-e850-11e2-9b68-cf85f9cb60bc'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b19b53ce-e850-11e2-9d95-8f405e012299', 'Foui', 'Vava''u', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Foui' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b19b7ade-e850-11e2-9c5b-237f7eeb70e9', 'b19b53ce-e850-11e2-9d95-8f405e012299', 'VAHA''I_1', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b19b7ade-e850-11e2-9c5b-237f7eeb70e9'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cfb72ca-e852-11e2-8cf8-bb953331abd3', 'b19b7ade-e850-11e2-9c5b-237f7eeb70e9', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cfb72ca-e852-11e2-8cf8-bb953331abd3'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b19b7ade-e850-11e2-9c5b-237f7eeb70e9', '0cfb72ca-e852-11e2-8cf8-bb953331abd3', 'vaha''i'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b19b7ade-e850-11e2-9c5b-237f7eeb70e9'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b19bc8fe-e850-11e2-8798-5b8015733a0f', 'Ta''anea', 'Vava''u', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Ta''anea' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b19bf00e-e850-11e2-a525-bf0158b72654', 'b19bc8fe-e850-11e2-8798-5b8015733a0f', 'VAHA''I_2', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b19bf00e-e850-11e2-a525-bf0158b72654'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cfb99da-e852-11e2-8746-df3011676cc8', 'b19bf00e-e850-11e2-a525-bf0158b72654', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cfb99da-e852-11e2-8746-df3011676cc8'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b19bf00e-e850-11e2-a525-bf0158b72654', '0cfb99da-e852-11e2-8746-df3011676cc8', 'vaha''i'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b19bf00e-e850-11e2-a525-bf0158b72654'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b19c3e2e-e850-11e2-8568-5f53f07eca11', 'Fahefa', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Fahefa' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b19c653e-e850-11e2-afbe-0ff33d995032', 'b19c3e2e-e850-11e2-8568-5f53f07eca11', 'VE''EHALA_1', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b19c653e-e850-11e2-afbe-0ff33d995032'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cfbe7fa-e852-11e2-b736-53ef87903df8', 'b19c653e-e850-11e2-afbe-0ff33d995032', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cfbe7fa-e852-11e2-b736-53ef87903df8'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b19c653e-e850-11e2-afbe-0ff33d995032', '0cfbe7fa-e852-11e2-b736-53ef87903df8', 've''ehala'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b19c653e-e850-11e2-afbe-0ff33d995032'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b19c8c4e-e850-11e2-acbc-27823ec003c9', 'Pangai', '''Eua', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Pangai' AND name_lastpart = '''Eua');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b19cb35e-e850-11e2-827b-633a1ef5fae9', 'b19c8c4e-e850-11e2-acbc-27823ec003c9', 'VE''EHALA_2', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b19cb35e-e850-11e2-827b-633a1ef5fae9'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cfc0f0a-e852-11e2-8134-af28409fe23d', 'b19cb35e-e850-11e2-827b-633a1ef5fae9', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cfc0f0a-e852-11e2-8134-af28409fe23d'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b19cb35e-e850-11e2-827b-633a1ef5fae9', '0cfc0f0a-e852-11e2-8134-af28409fe23d', 've''ehala'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b19cb35e-e850-11e2-827b-633a1ef5fae9'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b19d0188-e850-11e2-b255-77e0fc61cf00', 'Longoteme', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Longoteme' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b19d2898-e850-11e2-9698-e7fdc08942ea', 'b19d0188-e850-11e2-b255-77e0fc61cf00', 'VEIKUNE_1', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b19d2898-e850-11e2-9698-e7fdc08942ea'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cfc361a-e852-11e2-8d8a-c761f2b8477e', 'b19d2898-e850-11e2-9698-e7fdc08942ea', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cfc361a-e852-11e2-8d8a-c761f2b8477e'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b19d2898-e850-11e2-9698-e7fdc08942ea', '0cfc361a-e852-11e2-8d8a-c761f2b8477e', 'veikune'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b19d2898-e850-11e2-9698-e7fdc08942ea'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b19d4fa8-e850-11e2-ac34-e32eb2efbefb', 'Matahau (Vikune)', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Matahau (Vikune)' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b19d76b8-e850-11e2-b408-1b9c592d83ac', 'b19d4fa8-e850-11e2-ac34-e32eb2efbefb', 'VEIKUNE_2', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b19d76b8-e850-11e2-b408-1b9c592d83ac'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cfc5d2a-e852-11e2-a3b5-b3f2b74129d7', 'b19d76b8-e850-11e2-b408-1b9c592d83ac', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cfc5d2a-e852-11e2-a3b5-b3f2b74129d7'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b19d76b8-e850-11e2-b408-1b9c592d83ac', '0cfc5d2a-e852-11e2-a3b5-b3f2b74129d7', 'veikune'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b19d76b8-e850-11e2-b408-1b9c592d83ac'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b19dc4d8-e850-11e2-93d0-23a84b74397c', '''Oneata Island', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = '''Oneata Island' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b19debe8-e850-11e2-b00e-c7d8fd66499e', 'b19dc4d8-e850-11e2-93d0-23a84b74397c', 'VEIKUNE_3', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b19debe8-e850-11e2-b00e-c7d8fd66499e'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cfcab54-e852-11e2-9fa1-675961f776b4', 'b19debe8-e850-11e2-b00e-c7d8fd66499e', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cfcab54-e852-11e2-9fa1-675961f776b4'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b19debe8-e850-11e2-b00e-c7d8fd66499e', '0cfcab54-e852-11e2-9fa1-675961f776b4', 'veikune'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b19debe8-e850-11e2-b00e-c7d8fd66499e'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b19e12f8-e850-11e2-aa74-b742f68292d0', 'Kanatea Island', 'Tongatapu', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Kanatea Island' AND name_lastpart = 'Tongatapu');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b19e3a08-e850-11e2-ad00-4f4717a3d883', 'b19e12f8-e850-11e2-aa74-b742f68292d0', 'VEIKUNE_4', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b19e3a08-e850-11e2-ad00-4f4717a3d883'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cfcd264-e852-11e2-861a-77cbba52d71b', 'b19e3a08-e850-11e2-ad00-4f4717a3d883', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cfcd264-e852-11e2-861a-77cbba52d71b'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b19e3a08-e850-11e2-ad00-4f4717a3d883', '0cfcd264-e852-11e2-861a-77cbba52d71b', 'veikune'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b19e3a08-e850-11e2-ad00-4f4717a3d883'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b19e8828-e850-11e2-ab53-abe884afe65f', 'Pale''a (Pale''a to Fongotofe)', 'Vava''u', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Pale''a (Pale''a to Fongotofe)' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b19eaf38-e850-11e2-953c-872ea8b98879', 'b19e8828-e850-11e2-ab53-abe884afe65f', 'VEIKUNE_5', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b19eaf38-e850-11e2-953c-872ea8b98879'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cfcf974-e852-11e2-85ce-171e2bba8fdd', 'b19eaf38-e850-11e2-953c-872ea8b98879', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cfcf974-e852-11e2-85ce-171e2bba8fdd'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b19eaf38-e850-11e2-953c-872ea8b98879', '0cfcf974-e852-11e2-85ce-171e2bba8fdd', 'veikune'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b19eaf38-e850-11e2-953c-872ea8b98879'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b19ed648-e850-11e2-b0cb-73e3bab3fefd', 'Talahuo ', 'Vava''u', 'Landward side of Fongotofe', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Talahuo ' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b19efd58-e850-11e2-8cf7-dbab7a1696fe', 'b19ed648-e850-11e2-b0cb-73e3bab3fefd', 'VEIKUNE_6', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b19efd58-e850-11e2-8cf7-dbab7a1696fe'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cfd2084-e852-11e2-98cb-9ff5b3ada9f2', 'b19efd58-e850-11e2-8cf7-dbab7a1696fe', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cfd2084-e852-11e2-98cb-9ff5b3ada9f2'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b19efd58-e850-11e2-8cf7-dbab7a1696fe', '0cfd2084-e852-11e2-98cb-9ff5b3ada9f2', 'veikune'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b19efd58-e850-11e2-8cf7-dbab7a1696fe'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b19f2468-e850-11e2-8b1b-730b51aa0027', 'Lolopipi (between Nga''akau and Vaimalo)', 'Vava''u', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Lolopipi (between Nga''akau and Vaimalo)' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b19f7288-e850-11e2-83f8-e32a72eb4607', 'b19f2468-e850-11e2-8b1b-730b51aa0027', 'VEIKUNE_7', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b19f7288-e850-11e2-83f8-e32a72eb4607'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cfd6ea4-e852-11e2-972d-9792b9c37c2c', 'b19f7288-e850-11e2-83f8-e32a72eb4607', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cfd6ea4-e852-11e2-972d-9792b9c37c2c'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b19f7288-e850-11e2-83f8-e32a72eb4607', '0cfd6ea4-e852-11e2-972d-9792b9c37c2c', 'veikune'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b19f7288-e850-11e2-83f8-e32a72eb4607'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b19f99a2-e850-11e2-be04-d3abcbed3915', 'Longomapu', 'Vava''u', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Longomapu' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b19fc0b2-e850-11e2-99f9-c79178c158ed', 'b19f99a2-e850-11e2-be04-d3abcbed3915', 'VEIKUNE_8', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b19fc0b2-e850-11e2-99f9-c79178c158ed'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cfd95b4-e852-11e2-a8ec-539d370063dd', 'b19fc0b2-e850-11e2-99f9-c79178c158ed', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cfd95b4-e852-11e2-a8ec-539d370063dd'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b19fc0b2-e850-11e2-99f9-c79178c158ed', '0cfd95b4-e852-11e2-a8ec-539d370063dd', 'veikune'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b19fc0b2-e850-11e2-99f9-c79178c158ed'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b19fe7c2-e850-11e2-a33a-e36d506e4e17', 'Kolotahi Island', 'Vava''u', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Kolotahi Island' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b1a035e2-e850-11e2-bdbe-6fecc2ee1478', 'b19fe7c2-e850-11e2-a33a-e36d506e4e17', 'VEIKUNE_9', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b1a035e2-e850-11e2-bdbe-6fecc2ee1478'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cfdbcc4-e852-11e2-a3a4-6f14c37a1586', 'b1a035e2-e850-11e2-bdbe-6fecc2ee1478', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cfdbcc4-e852-11e2-a3a4-6f14c37a1586'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b1a035e2-e850-11e2-bdbe-6fecc2ee1478', '0cfdbcc4-e852-11e2-a3a4-6f14c37a1586', 'veikune'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b1a035e2-e850-11e2-bdbe-6fecc2ee1478'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b1a05cf2-e850-11e2-b1f9-1bc47f412fe2', 'Ha''akoka', 'Vava''u', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Ha''akoka' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b1a08402-e850-11e2-9fc1-03480b29c359', 'b1a05cf2-e850-11e2-b1f9-1bc47f412fe2', 'VEIKUNE_10', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b1a08402-e850-11e2-9fc1-03480b29c359'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cfde3d4-e852-11e2-9f7f-37210e2bdb7d', 'b1a08402-e850-11e2-9fc1-03480b29c359', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cfde3d4-e852-11e2-9f7f-37210e2bdb7d'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b1a08402-e850-11e2-9fc1-03480b29c359', '0cfde3d4-e852-11e2-9f7f-37210e2bdb7d', 'veikune'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b1a08402-e850-11e2-9fc1-03480b29c359'); 
INSERT INTO administrative.ba_unit (id, name_firstpart, name_lastpart, name, type_code, status_code, change_user)
 SELECT 'b1a0d222-e850-11e2-865d-a7843c836fec', 'Fangaeva', 'Vava''u', '', 'estateUnit', 'current', 'migration'
 WHERE NOT EXISTS (SELECT id FROM administrative.ba_unit WHERE name_firstpart = 'Fangaeva' AND name_lastpart = 'Vava''u');
 INSERT INTO administrative.rrr(id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, change_user)
  SELECT 'b1a0f932-e850-11e2-a88c-3b374f2c2f64', 'b1a0d222-e850-11e2-865d-a7843c836fec', 'VEIKUNE_11', 'ownership', 'current', 'true', 'migration', 'migration'
  WHERE NOT EXISTS (SELECT id FROM administrative.rrr WHERE id = 'b1a0f932-e850-11e2-a88c-3b374f2c2f64'); 
  INSERT INTO administrative.rrr_share (id, rrr_id, nominator, denominator)
  SELECT '0cfe0ae4-e852-11e2-8cbb-b32dedff0db2', 'b1a0f932-e850-11e2-a88c-3b374f2c2f64', 1, 1
  WHERE NOT EXISTS (SELECT id from administrative.rrr_share WHERE id = '0cfe0ae4-e852-11e2-8cbb-b32dedff0db2'); 
  INSERT INTO administrative.party_for_rrr (rrr_id, share_id, party_id)
  SELECT 'b1a0f932-e850-11e2-a88c-3b374f2c2f64', '0cfe0ae4-e852-11e2-8cbb-b32dedff0db2', 'veikune'
  WHERE NOT EXISTS (SELECT rrr_id FROM administrative.party_for_rrr WHERE rrr_id = 'b1a0f932-e850-11e2-a88c-3b374f2c2f64'); 

-- Link the estates to the appropriate island
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b19dc4d8-e850-11e2-93d0-23a84b74397c', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b19dc4d8-e850-11e2-93d0-23a84b74397c'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b18692fe-e850-11e2-8b35-47d2539e612c', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b18692fe-e850-11e2-8b35-47d2539e612c'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b170729e-e850-11e2-9e7a-73dc97c0c993', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b170729e-e850-11e2-9e7a-73dc97c0c993'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b195604a-e850-11e2-a047-ff44e5446d0f', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b195604a-e850-11e2-a047-ff44e5446d0f'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b1849724-e850-11e2-8f85-07c3cf7a062e', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b1849724-e850-11e2-8f85-07c3cf7a062e'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'niuatoputapu', 'b16b908a-e850-11e2-a12c-e326e22db953', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b16b908a-e850-11e2-a12c-e326e22db953'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'niuatoputapu', 'b16a580a-e850-11e2-9e71-abdcdbfbbdfc', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b16a580a-e850-11e2-9e71-abdcdbfbbdfc'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'niuatoputapu', 'b16f8834-e850-11e2-b317-23c1ff6676bb', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b16f8834-e850-11e2-b317-23c1ff6676bb'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'niuatoputapu', 'b16b1b5a-e850-11e2-bf0e-e720a05329f2', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b16b1b5a-e850-11e2-bf0e-e720a05329f2'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'niuatoputapu', 'b18d49dc-e850-11e2-afe6-43668f03eb37', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b18d49dc-e850-11e2-afe6-43668f03eb37'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b1666056-e850-11e2-86d8-8b6f3a4f23b2', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b1666056-e850-11e2-86d8-8b6f3a4f23b2'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b19c3e2e-e850-11e2-8568-5f53f07eca11', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b19c3e2e-e850-11e2-8568-5f53f07eca11'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'niuatoputapu', 'b18c3862-e850-11e2-a00c-07105db7f1dc', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b18c3862-e850-11e2-a00c-07105db7f1dc'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'haapai', 'b1685c30-e850-11e2-b203-0b711d2d0e0d', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b1685c30-e850-11e2-b203-0b711d2d0e0d'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'niuatoputapu', 'b16f1304-e850-11e2-a5c9-23dcf1760afa', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b16f1304-e850-11e2-a5c9-23dcf1760afa'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b168d160-e850-11e2-8d91-ff477ebf20a5', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b168d160-e850-11e2-8d91-ff477ebf20a5'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b1a0d222-e850-11e2-865d-a7843c836fec', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b1a0d222-e850-11e2-865d-a7843c836fec'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'haapai', 'b18162ca-e850-11e2-9dd5-6b4c94d95359', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b18162ca-e850-11e2-9dd5-6b4c94d95359'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b16e28a4-e850-11e2-8eac-831d0b90fe9b', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b16e28a4-e850-11e2-8eac-831d0b90fe9b'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b187cb88-e850-11e2-a6b2-af54fd4bbe24', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b187cb88-e850-11e2-a6b2-af54fd4bbe24'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b187564e-e850-11e2-b7b3-074f51f352b3', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b187564e-e850-11e2-b7b3-074f51f352b3'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b17b6f46-e850-11e2-8c0a-b78042ea039f', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b17b6f46-e850-11e2-8c0a-b78042ea039f'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'haapai', 'b1922be6-e850-11e2-b7cb-6b8ce5353984', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b1922be6-e850-11e2-b7cb-6b8ce5353984'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'haapai', 'b18e825c-e850-11e2-baa5-0706d2506646', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b18e825c-e850-11e2-baa5-0706d2506646'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b1770262-e850-11e2-ad70-b31e3c6fccfe', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b1770262-e850-11e2-ad70-b31e3c6fccfe'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b19b53ce-e850-11e2-9d95-8f405e012299', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b19b53ce-e850-11e2-9d95-8f405e012299'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b1850c5e-e850-11e2-ac95-df9f1dbae58d', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b1850c5e-e850-11e2-ac95-df9f1dbae58d'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b1799a7c-e850-11e2-8555-d7df5f740174', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b1799a7c-e850-11e2-8555-d7df5f740174'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'niuatoputapu', 'b196239a-e850-11e2-9a54-73fed59cc83b', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b196239a-e850-11e2-9a54-73fed59cc83b'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b195ae6a-e850-11e2-9604-5bfa242e5036', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b195ae6a-e850-11e2-9604-5bfa242e5036'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'haapai', 'b19a1b44-e850-11e2-a362-dffd121eb8ab', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b19a1b44-e850-11e2-a362-dffd121eb8ab'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'niuatoputapu', 'b16ca1fa-e850-11e2-b6ae-4b8fd975ce70', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b16ca1fa-e850-11e2-b6ae-4b8fd975ce70'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b1a05cf2-e850-11e2-b1f9-1bc47f412fe2', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b1a05cf2-e850-11e2-b1f9-1bc47f412fe2'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b161cc62-e850-11e2-8c46-df5e0b296866', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b161cc62-e850-11e2-8c46-df5e0b296866'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'haapai', 'b18ef78c-e850-11e2-9d7e-176f4a5a5e2b', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b18ef78c-e850-11e2-9d7e-176f4a5a5e2b'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b19475e0-e850-11e2-a6c4-331a33518030', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b19475e0-e850-11e2-a6c4-331a33518030'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'haapai', 'b194eb1a-e850-11e2-9f78-8b3f2486d2d2', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b194eb1a-e850-11e2-9f78-8b3f2486d2d2'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b190f366-e850-11e2-96c3-4be474d09f54', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b190f366-e850-11e2-96c3-4be474d09f54'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b191b6b6-e850-11e2-8535-bf3d8e3c4d4e', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b191b6b6-e850-11e2-8535-bf3d8e3c4d4e'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b162dddc-e850-11e2-a17a-7776c68ce54f', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b162dddc-e850-11e2-a17a-7776c68ce54f'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b173ce08-e850-11e2-89a9-838e66cbc3f4', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b173ce08-e850-11e2-89a9-838e66cbc3f4'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b180ed9a-e850-11e2-95b5-aba2cf8a3519', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b180ed9a-e850-11e2-95b5-aba2cf8a3519'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b1696da0-e850-11e2-888f-ab297ecf4aa0', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b1696da0-e850-11e2-888f-ab297ecf4aa0'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b19a907e-e850-11e2-87a1-ef68e931fda4', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b19a907e-e850-11e2-87a1-ef68e931fda4'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'niuatoputapu', 'b17d9230-e850-11e2-841c-3bd4f0435642', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b17d9230-e850-11e2-841c-3bd4f0435642'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b186e11e-e850-11e2-8c25-a3710aa49735', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b186e11e-e850-11e2-8c25-a3710aa49735'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'haapai', 'b18e343c-e850-11e2-ae90-23648743b9ee', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b18e343c-e850-11e2-ae90-23648743b9ee'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'eua', 'b18bc332-e850-11e2-b2ae-e78363bd2ca5', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b18bc332-e850-11e2-b2ae-e78363bd2ca5'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b19ade9e-e850-11e2-984d-878721971a2d', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b19ade9e-e850-11e2-984d-878721971a2d'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b16db374-e850-11e2-8cc1-17687e9cdf89', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b16db374-e850-11e2-8cc1-17687e9cdf89'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'niuatoputapu', 'b17e5580-e850-11e2-891b-a3e0512dd61e', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b17e5580-e850-11e2-891b-a3e0512dd61e'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b19e12f8-e850-11e2-aa74-b742f68292d0', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b19e12f8-e850-11e2-aa74-b742f68292d0'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b18819a8-e850-11e2-81f3-5f8661f364c9', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b18819a8-e850-11e2-81f3-5f8661f364c9'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b181d7fa-e850-11e2-a544-379cbe0eeca3', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b181d7fa-e850-11e2-a544-379cbe0eeca3'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b19fe7c2-e850-11e2-a33a-e36d506e4e17', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b19fe7c2-e850-11e2-a33a-e36d506e4e17'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b16575f6-e850-11e2-81c8-c369f8a66734', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b16575f6-e850-11e2-81c8-c369f8a66734'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b1829b54-e850-11e2-811c-0f32f14c0e7e', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b1829b54-e850-11e2-811c-0f32f14c0e7e'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b174b868-e850-11e2-9bcf-03b950868168', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b174b868-e850-11e2-9bcf-03b950868168'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'eua', 'b17813dc-e850-11e2-8fc4-7774f2dbf8c1', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b17813dc-e850-11e2-8fc4-7774f2dbf8c1'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b1761802-e850-11e2-9bef-e3cceadee359', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b1761802-e850-11e2-9bef-e3cceadee359'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b1752da2-e850-11e2-b79d-a315bfbeed27', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b1752da2-e850-11e2-b79d-a315bfbeed27'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b175a2d2-e850-11e2-865d-1713a06c14f2', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b175a2d2-e850-11e2-865d-1713a06c14f2'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b1768d32-e850-11e2-92ba-2708742450d5', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b1768d32-e850-11e2-92ba-2708742450d5'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b17358d8-e850-11e2-bb28-9b9083583716', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b17358d8-e850-11e2-bb28-9b9083583716'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b16d3e44-e850-11e2-8de4-670ef70a4b88', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b16d3e44-e850-11e2-8de4-670ef70a4b88'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'eua', 'b1724768-e850-11e2-aa58-4f6e66cebef0', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b1724768-e850-11e2-aa58-4f6e66cebef0'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b19f2468-e850-11e2-8b1b-730b51aa0027', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b19f2468-e850-11e2-8b1b-730b51aa0027'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b19f99a2-e850-11e2-be04-d3abcbed3915', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b19f99a2-e850-11e2-be04-d3abcbed3915'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b19d0188-e850-11e2-b255-77e0fc61cf00', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b19d0188-e850-11e2-b255-77e0fc61cf00'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b182e974-e850-11e2-b1a3-774a14aa37fa', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b182e974-e850-11e2-b1a3-774a14aa37fa'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b16e9dd4-e850-11e2-8c5b-db49f7b7fa28', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b16e9dd4-e850-11e2-8c5b-db49f7b7fa28'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'niuatoputapu', 'b16ffd6e-e850-11e2-a688-3743cb7d0b4b', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b16ffd6e-e850-11e2-a688-3743cb7d0b4b'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'niuatoputapu', 'b18cfbbc-e850-11e2-8d70-9f9599fa7603', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b18cfbbc-e850-11e2-8d70-9f9599fa7603'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b18dbf0c-e850-11e2-a419-2f9d2dd8d9ef', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b18dbf0c-e850-11e2-a419-2f9d2dd8d9ef'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b17b2126-e850-11e2-84d1-bf10c478e0c9', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b17b2126-e850-11e2-84d1-bf10c478e0c9'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'haapai', 'b18affe2-e850-11e2-b1a1-27a94ae94b66', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b18affe2-e850-11e2-b1a1-27a94ae94b66'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b18421f4-e850-11e2-8614-6b643ca4a922', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b18421f4-e850-11e2-8614-6b643ca4a922'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b179254c-e850-11e2-a6cc-7b7b1923a507', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b179254c-e850-11e2-a6cc-7b7b1923a507'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'niuatoputapu', 'b18c8682-e850-11e2-ab2d-9bc85c57f80e', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b18c8682-e850-11e2-ab2d-9bc85c57f80e'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b197d154-e850-11e2-b140-9f4b13675f32', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b197d154-e850-11e2-b140-9f4b13675f32'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b1970dfa-e850-11e2-ba5c-a3790a42bebb', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b1970dfa-e850-11e2-ba5c-a3790a42bebb'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b19d4fa8-e850-11e2-ac34-e32eb2efbefb', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b19d4fa8-e850-11e2-ac34-e32eb2efbefb'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b190a546-e850-11e2-b960-db9667e74f63', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b190a546-e850-11e2-b960-db9667e74f63'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b1674ab6-e850-11e2-9add-3bff938b2db8', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b1674ab6-e850-11e2-9add-3bff938b2db8'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b1981f74-e850-11e2-9f8f-cff842d26648', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b1981f74-e850-11e2-9f8f-cff842d26648'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b19894a4-e850-11e2-9e5f-4b29e28b351d', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b19894a4-e850-11e2-9e5f-4b29e28b351d'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b19957f4-e850-11e2-86ad-0f99b2642c30', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b19957f4-e850-11e2-86ad-0f99b2642c30'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b19909d4-e850-11e2-a83e-7f8a587554b9', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b19909d4-e850-11e2-a83e-7f8a587554b9'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'haapai', 'b18fbae6-e850-11e2-9dda-fbcac9dc6cb9', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b18fbae6-e850-11e2-9dda-fbcac9dc6cb9'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b17aabf6-e850-11e2-8373-a7f839ad2035', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b17aabf6-e850-11e2-8373-a7f839ad2035'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b199cd24-e850-11e2-9adc-b7c64564068c', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b199cd24-e850-11e2-9adc-b7c64564068c'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b167e700-e850-11e2-bb6e-834c02b2024e', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b167e700-e850-11e2-bb6e-834c02b2024e'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'eua', 'b172bc98-e850-11e2-bd8d-fbd967a6b845', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b172bc98-e850-11e2-bd8d-fbd967a6b845'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'eua', 'b1715cfe-e850-11e2-8372-07c3c3026b2f', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b1715cfe-e850-11e2-8372-07c3c3026b2f'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'eua', 'b171d22e-e850-11e2-88b2-03da922f2aa9', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b171d22e-e850-11e2-88b2-03da922f2aa9'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b1855a7e-e850-11e2-9472-2b20bd0e1bcf', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b1855a7e-e850-11e2-9472-2b20bd0e1bcf'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'haapai', 'b18b4e02-e850-11e2-bd59-4fd33729d1a7', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b18b4e02-e850-11e2-bd59-4fd33729d1a7'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b19698ca-e850-11e2-9c91-cf98d5596ea4', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b19698ca-e850-11e2-9c91-cf98d5596ea4'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b192ef40-e850-11e2-ad36-8317711b8869', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b192ef40-e850-11e2-ad36-8317711b8869'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b1936470-e850-11e2-8a1a-775e8b2cb24c', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b1936470-e850-11e2-8a1a-775e8b2cb24c'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'niuatoputapu', 'b16c2cca-e850-11e2-bc6a-d7a6d12eeaac', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b16c2cca-e850-11e2-bc6a-d7a6d12eeaac'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b19e8828-e850-11e2-ab53-abe884afe65f', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b19e8828-e850-11e2-ab53-abe884afe65f'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'eua', 'b19c8c4e-e850-11e2-acbc-27823ec003c9', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b19c8c4e-e850-11e2-acbc-27823ec003c9'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'haapai', 'b189c758-e850-11e2-9990-4f0e3cc3158f', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b189c758-e850-11e2-9990-4f0e3cc3158f'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'haapai', 'b18a8ab2-e850-11e2-9e9e-1711c0b59a00', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b18a8ab2-e850-11e2-9e9e-1711c0b59a00'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b183d3d4-e850-11e2-872b-6f6a4c16e1c3', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b183d3d4-e850-11e2-872b-6f6a4c16e1c3'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b185cfae-e850-11e2-8054-43f35879b747', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b185cfae-e850-11e2-8054-43f35879b747'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b17a36c6-e850-11e2-a053-f3a3bcf2a2aa', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b17a36c6-e850-11e2-a053-f3a3bcf2a2aa'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b19427c0-e850-11e2-9f25-cb59af6f40c8', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b19427c0-e850-11e2-9f25-cb59af6f40c8'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b1895228-e850-11e2-9cdb-df0fdeb7bed3', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b1895228-e850-11e2-9cdb-df0fdeb7bed3'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b182261a-e850-11e2-bd82-133e4ee8b1e2', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b182261a-e850-11e2-bd82-133e4ee8b1e2'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b169e2d0-e850-11e2-adba-a331f2c41378', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b169e2d0-e850-11e2-adba-a331f2c41378'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'haapai', 'b18f45ac-e850-11e2-949e-e7346c062269', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b18f45ac-e850-11e2-949e-e7346c062269'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b1835ea4-e850-11e2-abb0-5bc0ddf54ebf', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b1835ea4-e850-11e2-abb0-5bc0ddf54ebf'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b19bc8fe-e850-11e2-8798-5b8015733a0f', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b19bc8fe-e850-11e2-8798-5b8015733a0f'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b1779eac-e850-11e2-a07d-d7433865ce31', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b1779eac-e850-11e2-a07d-d7433865ce31'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b17f18d0-e850-11e2-85d1-b733c3a1177e', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b17f18d0-e850-11e2-85d1-b733c3a1177e'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b178b01c-e850-11e2-9de3-e3fe2eb9eff6', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b178b01c-e850-11e2-9de3-e3fe2eb9eff6'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b19ed648-e850-11e2-b0cb-73e3bab3fefd', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b19ed648-e850-11e2-b0cb-73e3bab3fefd'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b192a120-e850-11e2-8cee-336b9369dc29', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b192a120-e850-11e2-8cee-336b9369dc29'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b1888ed8-e850-11e2-9f32-03aa292b7798', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b1888ed8-e850-11e2-9f32-03aa292b7798'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'haapai', 'b170e7ce-e850-11e2-8a7b-47182afd1e2d', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b170e7ce-e850-11e2-8a7b-47182afd1e2d'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'haapai', 'b18a1578-e850-11e2-b559-638cb5d07001', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b18a1578-e850-11e2-b559-638cb5d07001'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b1648b8c-e850-11e2-aba9-cfc749df2745', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b1648b8c-e850-11e2-aba9-cfc749df2745'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'niuatoputapu', 'b17ea3a0-e850-11e2-a024-030ae55c5ab0', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b17ea3a0-e850-11e2-a024-030ae55c5ab0'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b180786a-e850-11e2-8f12-fb00b87645db', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b180786a-e850-11e2-8f12-fb00b87645db'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b17be476-e850-11e2-b6c0-37cb9500e610', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b17be476-e850-11e2-b6c0-37cb9500e610'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b17f8e0a-e850-11e2-a602-cb1157ff2099', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b17f8e0a-e850-11e2-a602-cb1157ff2099'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b17c59a6-e850-11e2-b0af-6706aaacb376', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b17c59a6-e850-11e2-b0af-6706aaacb376'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b1744338-e850-11e2-8482-13d265211e16', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b1744338-e850-11e2-8482-13d265211e16'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b1861dce-e850-11e2-8350-db1059f95ff3', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b1861dce-e850-11e2-8350-db1059f95ff3'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b1903016-e850-11e2-b3da-c3b9f55056f9', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b1903016-e850-11e2-b3da-c3b9f55056f9'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'haapai', 'b180033a-e850-11e2-9d78-eb395fe07498', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b180033a-e850-11e2-9d78-eb395fe07498'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b163c83c-e850-11e2-8649-bf3de5ab87ba', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b163c83c-e850-11e2-8649-bf3de5ab87ba'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b1916896-e850-11e2-b9a5-53c10d342cb1', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b1916896-e850-11e2-b9a5-53c10d342cb1'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b17ca7c6-e850-11e2-b0e7-1f552caf5ae5', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b17ca7c6-e850-11e2-b0e7-1f552caf5ae5'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'niuatoputapu', 'b17d1d00-e850-11e2-b8eb-97969a11e2b5', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b17d1d00-e850-11e2-b8eb-97969a11e2b5'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'niuatoputapu', 'b17de050-e850-11e2-8a2e-4b81872d36c2', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b17de050-e850-11e2-8a2e-4b81872d36c2'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'tongatapu', 'b1975c1a-e850-11e2-bfa4-0b5d3351639c', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b1975c1a-e850-11e2-bfa4-0b5d3351639c'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b193b290-e850-11e2-aded-2b2fb15b3ae6', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b193b290-e850-11e2-aded-2b2fb15b3ae6'
					AND   relation_code = 'island');
INSERT INTO administrative.required_relationship_baunit (from_ba_unit_id, to_ba_unit_id, relation_code, change_user)
  SELECT 'vavau', 'b1890408-e850-11e2-8535-4b6c46932235', 'island', 'migration'
  WHERE NOT EXISTS (SELECT to_ba_unit_id FROM administrative.required_relationship_baunit 
                    WHERE to_ba_unit_id = 'b1890408-e850-11e2-8535-4b6c46932235'
					AND   relation_code = 'island');
