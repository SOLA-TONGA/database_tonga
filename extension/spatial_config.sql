DELETE FROM cadastre.level;
INSERT INTO cadastre.level (id, name, register_type_code, structure_code, type_code, change_user)
VALUES ('lease', 'Lease', 'all', 'polygon', 'primaryRight', 'test-id');

INSERT INTO cadastre.level (id, name, register_type_code, structure_code, type_code, change_user)
VALUES ('townAllotment', 'Town Allotment', 'all', 'polygon', 'primaryRight', 'test-id');

INSERT INTO cadastre.level (id, name, register_type_code, structure_code, type_code, change_user)
VALUES ('taxAllotment', 'Tax Allotment', 'all', 'polygon', 'primaryRight', 'test-id');

INSERT INTO cadastre.level (id, name, register_type_code, structure_code, type_code, change_user)
VALUES ('sublease', 'Sublease', 'all', 'polygon', 'primaryRight', 'test-id');