
-- USUÁRIOS PADRÃO
INSERT INTO comandadigitaldb.tb_user (cpf, dt_registration, email, name, password) VALUES ('776.724.310-99', '2020-01-01 00:00:00', 'adm@gmail.com', 'ADMIN', '$2a$10$krOpwrcrg3NZXvGOfSyj/u9nwNlB3sUjW8Mr23VWg9vsl9rueBv46');

INSERT INTO comandadigitaldb.tb_user (cpf, dt_registration, email, name, password) VALUES ('164.533.720-02', '2020-01-01 00:00:00', 'bar@gmail.com', 'LOJA', '$2a$10$krOpwrcrg3NZXvGOfSyj/u9nwNlB3sUjW8Mr23VWg9vsl9rueBv46');

INSERT INTO comandadigitaldb.tb_user (cpf, dt_registration, email, name, password) VALUES ('054.794.351-24', '2020-01-01 00:00:00', 'cliente@gmail.com', 'CLIENTE', '$2a$10$krOpwrcrg3NZXvGOfSyj/u9nwNlB3sUjW8Mr23VWg9vsl9rueBv46');

-- PERMISSÕES
INSERT INTO  comandadigitaldb.tb_permission (DESCRIPTION)
VALUES
('ROLE_ADM');

INSERT INTO  comandadigitaldb.tb_permission (DESCRIPTION)
VALUES
('ROLE_ESTABELECIMENTO');

INSERT INTO  comandadigitaldb.tb_permission (DESCRIPTION)
VALUES
('ROLE_CLIENTE');

-- PERMISSÕES USUÁRIOS
INSERT INTO  comandadigitaldb.tb_user_permission (ID_USER, ID_PERMISSION)
VALUES
('1','1');

INSERT INTO  comandadigitaldb.tb_user_permission (ID_USER, ID_PERMISSION)
VALUES
('2','2');

INSERT INTO  comandadigitaldb.tb_user_permission (ID_USER, ID_PERMISSION)
VALUES
('3','3');

-- ENDEREÇO LOJA
INSERT INTO comandadigitaldb.tb_address(aditional_info, city, neighborhood, state, street_name, zip_code)
VALUES
('Rua 1', 'Brasilia', 'Sudoeste', 'DF', 'Jaqueiras', '70675-125');

-- LOJA
INSERT INTO comandadigitaldb.tb_store(cnpj, name, phone, registration_date, status, id_address, id_user)
VALUES
('97.930.661/0001-58', 'Loja 1', '61982263998', '2020-01-01 00:00:00', 1, 1, 2);

-- TIPOS DE PRODUTO
INSERT INTO  comandadigitaldb.tb_product_type (DESCRIPTION)
VALUES
('COMIDA');

INSERT INTO  comandadigitaldb.tb_product_type (DESCRIPTION)
VALUES
('BEBIDA');



-- COMIDAS
INSERT INTO comandadigitaldb.tb_product  (  name,	description, status, value, id_store, id_type) VALUES('Camarao empanado', 'Camarao empanado', 1, 20, 1,1);
INSERT INTO comandadigitaldb.tb_product  (  name,	description, status, value, id_store, id_type) VALUES('Porção de calabresa', 'Porção da calabresa frita com cebola', 1, 15, 1,1);
INSERT INTO comandadigitaldb.tb_product  (  name,	description, status, value, id_store, id_type) VALUES('Hamburguer Artesanal', 'Hamburguer Artesanal com bacon', 1, 20, 1,1);
INSERT INTO comandadigitaldb.tb_product  (  name,	description, status, value, id_store, id_type) VALUES('Porção de frango a passarinho', 'Porção de frango a passarinho', 1, 15, 1,1);
INSERT INTO comandadigitaldb.tb_product  (  name,	description, status, value, id_store, id_type) VALUES('Hot Dog da Casa', 'Hot Dog Artesanal', 1, 10, 1,1);
INSERT INTO comandadigitaldb.tb_product  (  name,	description, status, value, id_store, id_type) VALUES('Porção de batata pequena', 'Porção de batata pequena', 1, 12, 1,1);
INSERT INTO comandadigitaldb.tb_product  (  name,	description, status, value, id_store, id_type) VALUES('Porção de carne de Sol', 'Porção de carne de Sol', 1, 20, 1,1);
INSERT INTO comandadigitaldb.tb_product  (  name,	description, status, value, id_store, id_type) VALUES('Caldo de Frango', 'Caldo de Frango', 1, 10, 1,1);
INSERT INTO comandadigitaldb.tb_product  (  name,	description, status, value, id_store, id_type) VALUES('Caldo de Carne', 'Caldo de Carne', 1, 12, 1,1);
INSERT INTO comandadigitaldb.tb_product  (  name,	description, status, value, id_store, id_type) VALUES('Hamburguer Vegano', 'Hamburguer Vegano', 1, 30, 1,1);

-- BEBIDAS
INSERT INTO comandadigitaldb.tb_product  ( name, description, status, value, id_store, id_type)VALUES('Heineken Long Neck', 'Cerveja Heineken Long Neck 330 ML', 1, 8, 1,2);
INSERT INTO comandadigitaldb.tb_product  ( name, description, status, value, id_store, id_type)VALUES('Budweiser Long Neck', 'Cerveja Heineken Long Neck 330 ML', 1, 8, 1,2);
INSERT INTO comandadigitaldb.tb_product  ( name, description, status, value, id_store, id_type)VALUES('Coca Cola Lata', 'Coca Cola Lata 310 ML', 1, 5, 1,2);
INSERT INTO comandadigitaldb.tb_product  ( name, description, status, value, id_store, id_type)VALUES('Antartica 600 ML', 'Cerveja Antartica 600 ML', 1, 9, 1,2);
INSERT INTO comandadigitaldb.tb_product  ( name, description, status, value, id_store, id_type)VALUES('Heineken 600 ML', 'Cerveja Heineken 600 ML', 1, 12, 1,2);
INSERT INTO comandadigitaldb.tb_product  ( name, description, status, value, id_store, id_type)VALUES('Budweiser 600 ML ', 'Cerveja Heineken 600 ML', 1, 12, 1,2);
INSERT INTO comandadigitaldb.tb_product  ( name, description, status, value, id_store, id_type)VALUES('Água Mineral 500 ML ', 'Cerveja Heineken 600 ML', 1, 4, 1,2);
INSERT INTO comandadigitaldb.tb_product  ( name, description, status, value, id_store, id_type)VALUES('Chopp Artesanal 500 ML', 'Chopp Artesanal 500 ML', 1, 10, 1,2);
INSERT INTO comandadigitaldb.tb_product  ( name, description, status, value, id_store, id_type)VALUES('Dose Jack Daniels', 'Dose Jack Daniels', 1, 12, 1,2);
INSERT INTO comandadigitaldb.tb_product  ( name, description, status, value, id_store, id_type)VALUES('Água com gás 500 ML ', 'Água com gás 500 ML', 1, 12, 1,2);
INSERT INTO comandadigitaldb.tb_product  ( name, description, status, value, id_store, id_type)VALUES('AMSTEL Lata 350 ML', 'AMSTEL Lata 350 ML', 1, 12, 1,2);

-- CADASTRADAR CLIENTE
INSERT INTO comandadigitaldb.tb_user (cpf, dt_registration, email, name, password) VALUES ('605.869.413-20', '2020-01-01 00:00:00', 'julia@gmail.com', 'Júlia Souza', 		'$2a$10$krOpwrcrg3NZXvGOfSyj/u9nwNlB3sUjW8Mr23VWg9vsl9rueBv46');
INSERT INTO comandadigitaldb.tb_user (cpf, dt_registration, email, name, password) VALUES ('041.903.040-93', '2020-01-01 00:00:00', 'cecília@gmail.com', 'Cecília Rodrigues', 	'$2a$10$krOpwrcrg3NZXvGOfSyj/u9nwNlB3sUjW8Mr23VWg9vsl9rueBv46');
INSERT INTO comandadigitaldb.tb_user (cpf, dt_registration, email, name, password) VALUES ('481.573.968-40', '2020-01-01 00:00:00', 'eloá@gmail.com', 'Eloá Martha', 		'$2a$10$krOpwrcrg3NZXvGOfSyj/u9nwNlB3sUjW8Mr23VWg9vsl9rueBv46');
INSERT INTO comandadigitaldb.tb_user (cpf, dt_registration, email, name, password) VALUES ('484.869.248-20', '2020-01-01 00:00:00', 'lívia@gmail.com', 'Lívia Maria', 		'$2a$10$krOpwrcrg3NZXvGOfSyj/u9nwNlB3sUjW8Mr23VWg9vsl9rueBv46');
INSERT INTO comandadigitaldb.tb_user (cpf, dt_registration, email, name, password) VALUES ('130.763.686-13', '2020-01-01 00:00:00', 'lorena@gmail.com', 'Lorena Cardoso', 		'$2a$10$krOpwrcrg3NZXvGOfSyj/u9nwNlB3sUjW8Mr23VWg9vsl9rueBv46');
INSERT INTO comandadigitaldb.tb_user (cpf, dt_registration, email, name, password) VALUES ('441.439.698-07', '2020-01-01 00:00:00', 'maria@gmail.com', 'Maria Luísa', 		'$2a$10$krOpwrcrg3NZXvGOfSyj/u9nwNlB3sUjW8Mr23VWg9vsl9rueBv46');
INSERT INTO comandadigitaldb.tb_user (cpf, dt_registration, email, name, password) VALUES ('470.377.518-20', '2020-01-01 00:00:00', 'giovanna@gmail.com', 'Giovanna Linda', 		'$2a$10$krOpwrcrg3NZXvGOfSyj/u9nwNlB3sUjW8Mr23VWg9vsl9rueBv46');
INSERT INTO comandadigitaldb.tb_user (cpf, dt_registration, email, name, password) VALUES ('508.985.478-57', '2020-01-01 00:00:00', 'liz@gmail.com', 'Liz Maria', 			'$2a$10$krOpwrcrg3NZXvGOfSyj/u9nwNlB3sUjW8Mr23VWg9vsl9rueBv46');
INSERT INTO comandadigitaldb.tb_user (cpf, dt_registration, email, name, password) VALUES ('383.318.488-45', '2020-01-01 00:00:00', 'antonella@gmail.com', 'Antonella Joana', 	'$2a$10$krOpwrcrg3NZXvGOfSyj/u9nwNlB3sUjW8Mr23VWg9vsl9rueBv46');
INSERT INTO comandadigitaldb.tb_user (cpf, dt_registration, email, name, password) VALUES ('074.999.956-07', '2020-01-01 00:00:00', 'maite@gmail.com', 'Maitê Florença', 		'$2a$10$krOpwrcrg3NZXvGOfSyj/u9nwNlB3sUjW8Mr23VWg9vsl9rueBv46');
INSERT INTO comandadigitaldb.tb_user (cpf, dt_registration, email, name, password) VALUES ('507.034.548-62', '2020-01-01 00:00:00', 'mariana@gmail.com', 'Mariana Souza', 		'$2a$10$krOpwrcrg3NZXvGOfSyj/u9nwNlB3sUjW8Mr23VWg9vsl9rueBv46');
INSERT INTO comandadigitaldb.tb_user (cpf, dt_registration, email, name, password) VALUES ('446.989.018-98', '2020-01-01 00:00:00', 'miguel@gmail.com', 'Miguel Falabela', '$2a$10$krOpwrcrg3NZXvGOfSyj/u9nwNlB3sUjW8Mr23VWg9vsl9rueBv46');
INSERT INTO comandadigitaldb.tb_user (cpf, dt_registration, email, name, password) VALUES ('436.908.598-59', '2020-01-01 00:00:00', 'arthur@gmail.com', 'Arthur Souza', '$2a$10$krOpwrcrg3NZXvGOfSyj/u9nwNlB3sUjW8Mr23VWg9vsl9rueBv46');
INSERT INTO comandadigitaldb.tb_user (cpf, dt_registration, email, name, password) VALUES ('505.400.878-07', '2020-01-01 00:00:00', 'heitor@gmail.com', 'Heitor Rodrigues', '$2a$10$krOpwrcrg3NZXvGOfSyj/u9nwNlB3sUjW8Mr23VWg9vsl9rueBv46');
INSERT INTO comandadigitaldb.tb_user (cpf, dt_registration, email, name, password) VALUES ('464.222.488-22', '2020-01-01 00:00:00', 'bernardo@gmail.com', 'Bernardo Antonio', '$2a$10$krOpwrcrg3NZXvGOfSyj/u9nwNlB3sUjW8Mr23VWg9vsl9rueBv46');
INSERT INTO comandadigitaldb.tb_user (cpf, dt_registration, email, name, password) VALUES ('414.340.858-99', '2020-01-01 00:00:00', 'theo@gmail.com', 'Théo Souza', '$2a$10$krOpwrcrg3NZXvGOfSyj/u9nwNlB3sUjW8Mr23VWg9vsl9rueBv46');
INSERT INTO comandadigitaldb.tb_user (cpf, dt_registration, email, name, password) VALUES ('462.197.478-52', '2020-01-01 00:00:00', 'davi@gmail.com', 'Davi Lucas', '$2a$10$krOpwrcrg3NZXvGOfSyj/u9nwNlB3sUjW8Mr23VWg9vsl9rueBv46');
INSERT INTO comandadigitaldb.tb_user (cpf, dt_registration, email, name, password) VALUES ('472.085.158-40', '2020-01-01 00:00:00', 'gabriel @gmail.com', 'Gabriel Pensador', '$2a$10$krOpwrcrg3NZXvGOfSyj/u9nwNlB3sUjW8Mr23VWg9vsl9rueBv46');
INSERT INTO comandadigitaldb.tb_user (cpf, dt_registration, email, name, password) VALUES ('400.563.748-52', '2020-01-01 00:00:00', 'pedro@gmail.com', 'Pedro Rodrigues', '$2a$10$krOpwrcrg3NZXvGOfSyj/u9nwNlB3sUjW8Mr23VWg9vsl9rueBv46');
INSERT INTO comandadigitaldb.tb_user (cpf, dt_registration, email, name, password) VALUES ('459.893.998-20', '2020-01-01 00:00:00', 'samuel@gmail.com', 'Samuel Castro', '$2a$10$krOpwrcrg3NZXvGOfSyj/u9nwNlB3sUjW8Mr23VWg9vsl9rueBv46');
INSERT INTO comandadigitaldb.tb_user (cpf, dt_registration, email, name, password) VALUES ('057.841.698-40', '2020-01-01 00:00:00', 'lorenzo@gmail.com', 'Lorenzo Fav', '$2a$10$krOpwrcrg3NZXvGOfSyj/u9nwNlB3sUjW8Mr23VWg9vsl9rueBv46');

-- PERMISSÃO PARA OS USUÁRIOS CLIENTES
INSERT INTO  comandadigitaldb.tb_user_permission (ID_USER, ID_PERMISSION)VALUES ('4','3');
INSERT INTO  comandadigitaldb.tb_user_permission (ID_USER, ID_PERMISSION)VALUES ('5','3');
INSERT INTO  comandadigitaldb.tb_user_permission (ID_USER, ID_PERMISSION)VALUES ('6','3');
INSERT INTO  comandadigitaldb.tb_user_permission (ID_USER, ID_PERMISSION)VALUES ('7','3');
INSERT INTO  comandadigitaldb.tb_user_permission (ID_USER, ID_PERMISSION)VALUES ('8','3');
INSERT INTO  comandadigitaldb.tb_user_permission (ID_USER, ID_PERMISSION)VALUES ('9','3');
INSERT INTO  comandadigitaldb.tb_user_permission (ID_USER, ID_PERMISSION)VALUES ('10','3');
INSERT INTO  comandadigitaldb.tb_user_permission (ID_USER, ID_PERMISSION)VALUES ('11','3');
INSERT INTO  comandadigitaldb.tb_user_permission (ID_USER, ID_PERMISSION)VALUES ('12','3');
INSERT INTO  comandadigitaldb.tb_user_permission (ID_USER, ID_PERMISSION)VALUES ('13','3');
INSERT INTO  comandadigitaldb.tb_user_permission (ID_USER, ID_PERMISSION)VALUES ('14','3');
INSERT INTO  comandadigitaldb.tb_user_permission (ID_USER, ID_PERMISSION)VALUES ('16','3');
INSERT INTO  comandadigitaldb.tb_user_permission (ID_USER, ID_PERMISSION)VALUES ('17','3');
INSERT INTO  comandadigitaldb.tb_user_permission (ID_USER, ID_PERMISSION)VALUES ('18','3');
INSERT INTO  comandadigitaldb.tb_user_permission (ID_USER, ID_PERMISSION)VALUES ('19','3');
INSERT INTO  comandadigitaldb.tb_user_permission (ID_USER, ID_PERMISSION)VALUES ('20','3');
INSERT INTO  comandadigitaldb.tb_user_permission (ID_USER, ID_PERMISSION)VALUES ('21','3');
INSERT INTO  comandadigitaldb.tb_user_permission (ID_USER, ID_PERMISSION)VALUES ('22','3');
INSERT INTO  comandadigitaldb.tb_user_permission (ID_USER, ID_PERMISSION)VALUES ('23','3');
                                                                    
-- CADASTRAR COMANDAS


insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 14 , '2020-06-30 22:17:44',null, 6,	 3,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 54 , '2020-06-30 22:17:59',null, 3,	 4,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 23 , '2020-06-30 22:18:15',null, 2,	 5,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 11 , '2020-06-30 22:18:55',null, 1,	 6,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 4  , '2020-06-30 22:19:15',null, 2,	 7,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 6  , '2020-06-30 22:20:57',null, 5,	 8,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 7  , '2020-06-30 22:21:39',null, 3,	 9,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 8  , '2020-06-30 22:21:49',null, 1,	 10, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 42  ,'2020-06-30 22:21:56',null, 3,  11, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 75  ,'2020-06-30 22:22:28',null, 6,	 12, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 36  ,'2020-06-30 22:22:34',null, 10, 13, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 20  ,'2020-06-30 22:33:56',null, 11, 14, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2020-06-30 22:35:49',null, 2,  16, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2020-06-30 22:35:55',null, 3,  17, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2020-06-30 22:36:00',null, 2,  18, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2020-06-30 22:36:15',null, 4,  19, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2020-06-30 22:36:35',null, 2,  20, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2020-06-30 22:36:43',null, 2,  21, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 12 , '2020-06-30 22:36:50',null, 2,  22,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 3  , '2020-06-30 22:37:04',null, 4,  23, 1);



-- INSERT PRODUCT CARD parte 1
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-06-30 22:17:44',	'Sem limão.	',	2,	20.00,	1,	1  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-06-30 22:17:59',	'Sem limão.	',	1,	9.00,	1,	14 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-06-30 22:18:15',	'Sem limão.	',	1,	12.00,	1,	21 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(1,		'2020-06-30 22:18:55',	'Sem cebola.',	3,	15.00,	2,	2  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(1,		'2020-06-30 22:19:15',	'Sem cebola.',	1,	20.00,	2,	3  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(8,		'2020-06-30 22:20:57',		NULL,		1,	8.00,	2,	12 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-06-30 22:21:39',		NULL,		1,	10.00,	3,	5  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2020-06-30 22:21:49',		NULL,		3,	12.00,	3,	6  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2020-06-30 22:21:56',		NULL,		1,	5.00,	3,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(4,		'2020-06-30 22:22:28',		NULL,		1,	10.00,	4,	18 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-06-30 22:22:34',		NULL,		2,	30.00,	4,	10 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(4,		'2020-06-30 22:33:56',		NULL,		1,	12.00,	4,	21 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-06-30 22:35:49',		NULL,		1,	12.00,	5,	19 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2020-06-30 22:35:55',		NULL,		3,	15.00,	5,	4  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(9,		'2020-06-30 22:36:00',		NULL,		1,	12.00,	5,	15 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-06-30 22:36:15',		NULL,		1,	12.00,	5,	20 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-06-30 22:36:35',		NULL,		1,	15.00,	6,	2  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(8,		'2020-06-30 22:36:43',		NULL,		1,	8.00,	6,	12 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-06-30 22:36:50',		NULL,		3,	10.00,	6,	8  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-06-30 22:37:04',		NULL,		1,	5.00,	7,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-06-30 22:37:10',		NULL,		1,	4.00,	7,	17 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2020-06-30 22:37:15',		NULL,		1,	9.00,	7,	14 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-06-30 22:38:05',		NULL,		2,	30.00,	8,	10 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-06-30 22:38:13',		NULL,		2,	12.00,	8,	9  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2020-06-30 22:38:17',		NULL,		1,	5.00,	8,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-06-30 22:38:24',		NULL,		1,	10.00,	8,	18 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-06-30 22:38:39',		NULL,		2,	15.00,	9,	2  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2020-06-30 22:38:46',		NULL,		1,	12.00,	9,	15 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-06-30 22:38:50',		NULL,		1,	12.00,	9,	21 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-06-30 22:39:03',		NULL,		1,	12.00,	10,	20 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-06-30 22:39:07',		NULL,		1,	10.00,	10,	5  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(8,		'2020-06-30 22:39:11',		NULL,		1,	12.00,	10,	15 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-06-30 22:39:56',		NULL,		1,	5.00,	11,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(8,		'2020-06-30 22:40:01',		NULL,		1,	9.00,	11,	14 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(12,		'2020-06-30 22:40:15',		NULL,		1,	12.00,	12,	15 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(12,		'2020-06-30 22:40:40',		NULL,		1,	12.00,	13,	16 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2020-06-30 22:40:53',		NULL,		1,	8.00,	14,	11 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2020-06-30 22:41:05',		NULL,		1,	8.00,	15,	12 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-06-30 22:41:17',		NULL,		1,	12.00,	16,	19 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-06-30 22:41:22',		NULL,		1,	20.00,	16,	1  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(4,		'2020-06-30 22:42:13',		NULL,		1,	15.00,	17,	4  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-06-30 22:42:18',		NULL,		1,	9.00,	17,	14 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-06-30 22:42:32',		NULL,		1,	10.00,	18,	5  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-06-30 22:42:37',		NULL,		1,	5.00,	18,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-06-30 22:43:05',		NULL,		1,	12.00,	19,	20 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(1,		'2020-06-30 22:43:09',		NULL,		3,	15.00,	19,	2  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-06-30 22:43:15',		NULL,		1,	12.00,	19,	16 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(4,		'2020-06-30 22:43:26',		NULL,		1,	12.00,	20,	15 );


-- CADASTRAR COMANDAS PARTE 2

insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 14 , '2020-05-30 22:17:44','2020-05-30 22:59:44', 6,	 3,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 54 , '2020-05-30 22:17:59','2020-05-30 22:59:59', 3,	 4,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 23 , '2020-05-30 22:18:15','2020-05-30 22:59:15', 2,	 5,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 11 , '2020-05-30 22:18:55','2020-05-30 22:59:55', 1,	 6,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 4  , '2020-05-30 22:19:15','2020-05-30 22:59:15', 2,	 7,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 6  , '2020-05-30 22:20:57','2020-05-30 22:59:57', 5,	 8,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 7  , '2020-05-30 22:21:39','2020-05-30 22:59:39', 3,	 9,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 8  , '2020-05-30 22:21:49','2020-05-30 22:59:49', 1,	 10, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 42  ,'2020-05-30 22:21:56','2020-05-30 22:59:56', 3,  11, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 75  ,'2020-05-30 22:22:28','2020-05-30 22:59:28', 6,	 12, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 36  ,'2020-05-30 22:22:34','2020-05-30 22:59:34', 10, 13, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 20  ,'2020-05-30 22:33:56','2020-05-30 22:59:56', 11, 14, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2020-05-30 22:35:49','2020-05-30 22:59:49', 2,  16, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2020-05-30 22:35:55','2020-05-30 22:59:55', 3,  17, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2020-05-30 22:36:00','2020-05-30 22:59:00', 2,  18, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2020-05-30 22:36:15','2020-05-30 22:59:15', 4,  19, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2020-05-30 22:36:35','2020-05-30 22:59:35', 2,  20, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2020-05-30 22:36:43','2020-05-30 22:59:43', 2,  21, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 12 , '2020-05-30 22:36:50','2020-05-30 22:59:50', 2,  22,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 3  , '2020-05-30 22:37:04','2020-05-30 22:59:04', 4,  23, 1);


-- INSERT PRODUCT CARD PARTE 2

insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-05-30 22:17:44',	'Sem limão.	',	2,	20.00,	21,	1  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-05-30 22:17:59',	'Sem limão.	',	1,	9.00,	21,	14 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-05-30 22:18:15',	'Sem limão.	',	1,	12.00,	21,	21 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(1,		'2020-05-30 22:18:55',	'Sem cebola.',	3,	15.00,	22,	2  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(1,		'2020-05-30 22:19:15',	'Sem cebola.',	1,	20.00,	22,	3  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(8,		'2020-05-30 22:20:57',		NULL,		1,	8.00,	22,	12 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-05-30 22:21:39',		NULL,		1,	10.00,	23,	5  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2020-05-30 22:21:49',		NULL,		3,	12.00,	23,	6  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2020-05-30 22:21:56',		NULL,		1,	5.00,	23,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(4,		'2020-05-30 22:22:28',		NULL,		1,	10.00,	24,	18 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-05-30 22:22:34',		NULL,		2,	30.00,	24,	10 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(4,		'2020-05-30 22:33:56',		NULL,		1,	12.00,	24,	21 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-05-30 22:35:49',		NULL,		1,	12.00,	25,	19 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2020-05-30 22:35:55',		NULL,		3,	15.00,	25,	4  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(9,		'2020-05-30 22:36:00',		NULL,		1,	12.00,	25,	15 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-05-30 22:36:15',		NULL,		1,	12.00,	25,	20 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-05-30 22:36:35',		NULL,		1,	15.00,	26,	2  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(8,		'2020-05-30 22:36:43',		NULL,		1,	8.00,	26,	12 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-05-30 22:36:50',		NULL,		3,	10.00,	26,	8  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-05-30 22:37:04',		NULL,		1,	5.00,	27,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-05-30 22:37:10',		NULL,		1,	4.00,	27,	17 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2020-05-30 22:37:15',		NULL,		1,	9.00,	27,	14 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-05-30 22:38:05',		NULL,		2,	30.00,	28,	10 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-05-30 22:38:13',		NULL,		2,	12.00,	28,	9  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2020-05-30 22:38:17',		NULL,		1,	5.00,	28,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-05-30 22:38:24',		NULL,		1,	10.00,	28,	18 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-05-30 22:38:39',		NULL,		2,	15.00,	29,	2  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2020-05-30 22:38:46',		NULL,		1,	12.00,	29,	15 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-05-30 22:38:50',		NULL,		1,	12.00,	29,	21 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-05-30 22:39:03',		NULL,		1,	12.00,	30,	20 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-05-30 22:39:07',		NULL,		1,	10.00,	30,	5  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(8,		'2020-05-30 22:39:11',		NULL,		1,	12.00,	30,	15 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-05-30 22:39:56',		NULL,		1,	5.00,	31,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(8,		'2020-05-30 22:40:01',		NULL,		1,	9.00,	31,	14 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(12,		'2020-05-30 22:40:15',		NULL,		1,	12.00,	32,	15 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(12,		'2020-05-30 22:40:40',		NULL,		1,	12.00,	33,	16 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2020-05-30 22:40:53',		NULL,		1,	8.00,	34,	11 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2020-05-30 22:41:05',		NULL,		1,	8.00,	35,	12 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-05-30 22:41:17',		NULL,		1,	12.00,	36,	19 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-05-30 22:41:22',		NULL,		1,	20.00,	36,	1  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(4,		'2020-05-30 22:42:13',		NULL,		1,	15.00,	37,	4  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-05-30 22:42:18',		NULL,		1,	9.00,	37,	14 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-05-30 22:42:32',		NULL,		1,	10.00,	38,	5  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-05-30 22:42:37',		NULL,		1,	5.00,	38,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-05-30 22:43:05',		NULL,		1,	12.00,	39,	20 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(1,		'2020-05-30 22:43:09',		NULL,		3,	15.00,	39,	2  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-05-30 22:43:15',		NULL,		1,	12.00,	39,	16 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(4,		'2020-05-30 22:43:26',		NULL,		1,	12.00,	40,	15 );


-- CADASTRAR COMANDAS PARTE 3

insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 14 , '2020-04-25 22:17:44','2020-04-25 23:17:44', 6,	 3,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 54 , '2020-04-25 22:17:59','2020-04-25 23:17:59', 3,	 4,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 23 , '2020-04-25 22:18:15','2020-04-25 23:18:15', 2,	 5,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 11 , '2020-04-25 22:18:55','2020-04-25 23:18:55', 1,	 6,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 4  , '2020-04-25 22:19:15','2020-04-25 23:19:15', 2,	 7,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 6  , '2020-04-25 22:20:57','2020-04-25 23:20:57', 5,	 8,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 7  , '2020-04-28 22:21:39','2020-04-28 23:21:39', 3,	 9,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 8  , '2020-04-28 22:21:49','2020-04-28 23:21:49', 1,	 10, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 42  ,'2020-04-28 22:21:56','2020-04-28 23:21:56', 3,  11, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 75  ,'2020-04-28 22:22:28','2020-04-28 23:22:28', 6,	 12, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 36  ,'2020-04-28 22:22:34','2020-04-28 23:22:34', 10, 13, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 20  ,'2020-04-28 22:33:56','2020-04-28 23:33:56', 11, 14, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2020-04-28 22:35:49','2020-04-28 23:35:49', 2,  16, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2020-04-28 22:35:55','2020-04-28 23:35:55', 3,  17, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2020-04-28 22:36:00','2020-04-28 23:36:00', 2,  18, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2020-04-28 22:36:15','2020-04-28 23:36:15', 4,  19, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2020-04-30 22:36:35','2020-04-30 23:36:35', 2,  20, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2020-04-30 22:36:43','2020-04-30 23:36:43', 2,  21, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 12 , '2020-04-30 22:36:50','2020-04-30 23:36:50', 2,  22,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 3  , '2020-04-30 22:37:04','2020-04-30 23:37:04', 4,  23, 1);


-- INSERT PRODUCT CARD PARTE 3

insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-04-25 22:17:44',	'Sem limão.	',	2,	20.00,	41,	1  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-04-25 22:17:59',	'Sem limão.	',	1,	9.00,	41,	14 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-04-25 22:18:15',	'Sem limão.	',	1,	12.00,	41,	21 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(1,		'2020-04-25 22:18:55',	'Sem cebola.',	3,	15.00,	42,	2  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(1,		'2020-04-25 22:19:15',	'Sem cebola.',	1,	20.00,	42,	3  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(8,		'2020-04-25 22:20:57',		NULL,		1,	8.00,	42,	12 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-04-25 22:21:39',		NULL,		1,	10.00,	43,	5  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2020-04-25 22:21:49',		NULL,		3,	12.00,	43,	6  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2020-04-25 22:21:56',		NULL,		1,	5.00,	43,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(4,		'2020-04-25 22:22:28',		NULL,		1,	10.00,	44,	18 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-04-25 22:22:34',		NULL,		2,	30.00,	44,	10 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(4,		'2020-04-25 22:33:56',		NULL,		1,	12.00,	44,	21 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-04-25 22:35:49',		NULL,		1,	12.00,	45,	19 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2020-04-25 22:35:55',		NULL,		3,	15.00,	45,	4  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(9,		'2020-04-25 22:36:00',		NULL,		1,	12.00,	45,	15 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-04-25 22:36:15',		NULL,		1,	12.00,	45,	20 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-04-25 22:36:35',		NULL,		1,	15.00,	46,	2  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(8,		'2020-04-25 22:36:43',		NULL,		1,	8.00,	46,	12 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-04-25 22:36:50',		NULL,		3,	10.00,	46,	8  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-04-28 22:37:04',		NULL,		1,	5.00,	47,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-04-28 22:37:10',		NULL,		1,	4.00,	47,	17 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2020-04-28 22:37:15',		NULL,		1,	9.00,	47,	14 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-04-28 22:38:05',		NULL,		2,	30.00,	48,	10 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-04-28 22:38:13',		NULL,		2,	12.00,	48,	9  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2020-04-28 22:38:17',		NULL,		1,	5.00,	48,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-04-28 22:38:24',		NULL,		1,	10.00,	48,	18 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-04-28 22:38:39',		NULL,		2,	15.00,	49,	2  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2020-04-28 22:38:46',		NULL,		1,	12.00,	49,	15 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-04-28 22:38:50',		NULL,		1,	12.00,	49,	21 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-04-28 22:39:03',		NULL,		1,	12.00,	50,	20 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-04-28 22:39:07',		NULL,		1,	10.00,	50,	5  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(8,		'2020-04-28 22:39:11',		NULL,		1,	12.00,	50,	15 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-04-28 22:39:56',		NULL,		1,	5.00,	51,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(8,		'2020-04-28 22:40:01',		NULL,		1,	9.00,	51,	14 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(12,		'2020-04-28 22:40:15',		NULL,		1,	12.00,	52,	15 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(12,		'2020-04-28 22:40:40',		NULL,		1,	12.00,	53,	16 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2020-04-28 22:40:53',		NULL,		1,	8.00,	54,	11 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2020-04-30 22:41:05',		NULL,		1,	8.00,	55,	12 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-04-30 22:41:17',		NULL,		1,	12.00,	56,	19 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-04-30 22:41:22',		NULL,		1,	20.00,	56,	1  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(4,		'2020-04-30 22:42:13',		NULL,		1,	15.00,	57,	4  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-04-30 22:42:18',		NULL,		1,	9.00,	57,	14 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-04-30 22:42:32',		NULL,		1,	10.00,	58,	5  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-04-30 22:42:37',		NULL,		1,	5.00,	58,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-04-30 22:43:05',		NULL,		1,	12.00,	59,	20 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(1,		'2020-04-30 22:43:09',		NULL,		3,	15.00,	59,	2  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-04-30 22:43:15',		NULL,		1,	12.00,	59,	16 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(4,		'2020-04-30 22:43:26',		NULL,		1,	12.00,	60,	15 );

-- CADASTRAR COMANDAS PARTE 4
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 14 , '2020-03-25 22:17:44','2020-03-25 23:17:44', 6,	 3,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 54 , '2020-03-25 22:17:59','2020-03-25 23:17:59', 3,	 4,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 23 , '2020-03-25 22:18:15','2020-03-25 23:18:15', 2,	 5,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 11 , '2020-03-25 22:18:55','2020-03-25 23:18:55', 1,	 6,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 4  , '2020-03-25 22:19:15','2020-03-25 23:19:15', 2,	 7,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 6  , '2020-03-25 22:20:57','2020-03-25 23:20:57', 5,	 8,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 7  , '2020-03-28 22:21:39','2020-03-28 23:21:39', 3,	 9,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 8  , '2020-03-28 22:21:49','2020-03-28 23:21:49', 1,	 10, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 42  ,'2020-03-28 22:21:56','2020-03-28 23:21:56', 3,  11, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 75  ,'2020-03-28 22:22:28','2020-03-28 23:22:28', 6,	 12, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 36  ,'2020-03-28 22:22:34','2020-03-28 23:22:34', 10, 13, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 20  ,'2020-03-28 22:33:56','2020-03-28 23:33:56', 11, 14, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2020-03-28 22:35:49','2020-03-28 23:35:49', 2,  16, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2020-03-28 22:35:55','2020-03-28 23:35:55', 3,  17, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2020-03-28 22:36:00','2020-03-28 23:36:00', 2,  18, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2020-03-28 22:36:15','2020-03-28 23:36:15', 4,  19, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2020-03-30 22:36:35','2020-03-30 23:36:35', 2,  20, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2020-03-30 22:36:43','2020-03-30 23:36:43', 2,  21, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 12 , '2020-03-30 22:36:50','2020-03-30 23:36:50', 2,  22,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 3  , '2020-03-30 22:37:04','2020-03-30 23:37:04', 4,  23, 1);

-- INSERT PRODUCT CARD PARTE 4
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-03-25 22:17:44',	'Sem limão.	',	2,	20.00,	61,	1  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-03-25 22:17:59',	'Sem limão.	',	1,	9.00,	61,	14 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-03-25 22:18:15',	'Sem limão.	',	1,	12.00,	61,	21 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(1,		'2020-03-25 22:18:55',	'Sem cebola.',	3,	15.00,	62,	2  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(1,		'2020-03-25 22:19:15',	'Sem cebola.',	1,	20.00,	62,	3  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(8,		'2020-03-25 22:20:57',		NULL,		1,	8.00,	62,	12 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-03-25 22:21:39',		NULL,		1,	10.00,	63,	5  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2020-03-25 22:21:49',		NULL,		3,	12.00,	63,	6  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2020-03-25 22:21:56',		NULL,		1,	5.00,	63,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(4,		'2020-03-25 22:22:28',		NULL,		1,	10.00,	64,	18 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-03-25 22:22:34',		NULL,		2,	30.00,	64,	10 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(4,		'2020-03-25 22:33:56',		NULL,		1,	12.00,	64,	21 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-03-25 22:35:49',		NULL,		1,	12.00,	65,	19 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2020-03-25 22:35:55',		NULL,		3,	15.00,	65,	4  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(9,		'2020-03-25 22:36:00',		NULL,		1,	12.00,	65,	15 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-03-25 22:36:15',		NULL,		1,	12.00,	65,	20 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-03-25 22:36:35',		NULL,		1,	15.00,	66,	2  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(8,		'2020-03-25 22:36:43',		NULL,		1,	8.00,	66,	12 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-03-25 22:36:50',		NULL,		3,	10.00,	66,	8  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-03-28 22:37:04',		NULL,		1,	5.00,	67,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-03-28 22:38:39',		NULL,		2,	15.00,	69,	2  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2020-03-28 22:38:46',		NULL,		1,	12.00,	69,	15 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-03-28 22:38:50',		NULL,		1,	12.00,	69,	21 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-03-28 22:39:03',		NULL,		1,	12.00,	70,	20 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-03-28 22:39:07',		NULL,		1,	10.00,	70,	5  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(8,		'2020-03-28 22:39:11',		NULL,		1,	12.00,	70,	15 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-03-28 22:39:56',		NULL,		1,	5.00,	71,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(8,		'2020-03-28 22:40:01',		NULL,		1,	9.00,	71,	14 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(12,		'2020-03-28 22:40:15',		NULL,		1,	12.00,	72,	15 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(12,		'2020-03-28 22:40:40',		NULL,		1,	12.00,	73,	16 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2020-03-28 22:40:53',		NULL,		1,	8.00,	74,	11 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2020-03-30 22:41:05',		NULL,		1,	8.00,	75,	12 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-03-30 22:41:17',		NULL,		1,	12.00,	76,	19 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-03-30 22:41:22',		NULL,		1,	20.00,	76,	1  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(4,		'2020-03-30 22:42:13',		NULL,		1,	15.00,	77,	4  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-03-30 22:42:18',		NULL,		1,	9.00,	77,	14 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-03-30 22:42:32',		NULL,		1,	10.00,	78,	5  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-03-30 22:42:37',		NULL,		1,	5.00,	78,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-03-30 22:43:05',		NULL,		1,	12.00,	79,	20 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(1,		'2020-03-30 22:43:09',		NULL,		3,	15.00,	79,	2  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-03-30 22:43:15',		NULL,		1,	12.00,	79,	16 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(4,		'2020-03-30 22:43:26',		NULL,		1,	12.00,	80,	15 );


-- CADASTRAR COMANDAS PARTE 5
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 14 , '2020-02-25 22:17:44','2020-02-25 23:17:44', 6,	 3,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 54 , '2020-02-25 22:17:59','2020-02-25 23:17:59', 3,	 4,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 23 , '2020-02-25 22:18:15','2020-02-25 23:18:15', 2,	 5,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 11 , '2020-02-25 22:18:55','2020-02-25 23:18:55', 1,	 6,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 4  , '2020-02-25 22:19:15','2020-02-25 23:19:15', 2,	 7,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 6  , '2020-02-25 22:20:57','2020-02-25 23:20:57', 5,	 8,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 7  , '2020-02-28 22:21:39','2020-02-28 23:21:39', 3,	 9,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 8  , '2020-02-28 22:21:49','2020-02-28 23:21:49', 1,	 10, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 42  ,'2020-02-28 22:21:56','2020-02-28 23:21:56', 3,  11, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 75  ,'2020-02-28 22:22:28','2020-02-28 23:22:28', 6,	 12, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 36  ,'2020-02-28 22:22:34','2020-02-28 23:22:34', 10, 13, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 20  ,'2020-02-28 22:33:56','2020-02-28 23:33:56', 11, 14, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2020-02-28 22:35:49','2020-02-28 23:35:49', 2,  16, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2020-02-28 22:35:55','2020-02-28 23:35:55', 3,  17, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2020-02-28 22:36:00','2020-02-28 23:36:00', 2,  18, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2020-02-28 22:36:15','2020-02-28 23:36:15', 4,  19, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2020-02-27 22:36:35','2020-02-27 23:36:35', 2,  20, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2020-02-27 22:36:43','2020-02-27 23:36:43', 2,  21, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 12 , '2020-02-27 22:36:50','2020-02-27 23:36:50', 2,  22,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 3  , '2020-02-27 22:37:04','2020-02-27 23:37:04', 4,  23, 1);

-- INSERT PRODUCT CARD PARTE 5
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-02-25 22:17:44',	'Sem limão.	',	2,	20.00,	81,	1  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-02-25 22:17:59',	'Sem limão.	',	1,	9.00,	81,	14 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-02-25 22:18:15',	'Sem limão.	',	1,	12.00,	81,	21 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(1,		'2020-02-25 22:18:55',	'Sem cebola.',	3,	15.00,	82,	2  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(1,		'2020-02-25 22:19:15',	'Sem cebola.',	1,	20.00,	82,	3  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(8,		'2020-02-25 22:20:57',		NULL,		1,	8.00,	82,	12 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-02-25 22:21:39',		NULL,		1,	10.00,	83,	5  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2020-02-25 22:21:49',		NULL,		3,	12.00,	83,	6  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2020-02-25 22:21:56',		NULL,		1,	5.00,	83,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(4,		'2020-02-25 22:22:28',		NULL,		1,	10.00,	84,	18 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-02-25 22:22:34',		NULL,		2,	30.00,	84,	10 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(4,		'2020-02-25 22:33:56',		NULL,		1,	12.00,	84,	21 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-02-25 22:35:49',		NULL,		1,	12.00,	85,	19 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2020-02-25 22:35:55',		NULL,		3,	15.00,	85,	4  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(9,		'2020-02-25 22:36:00',		NULL,		1,	12.00,	85,	15 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-02-25 22:36:15',		NULL,		1,	12.00,	85,	20 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-02-25 22:36:35',		NULL,		1,	15.00,	86,	2  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(8,		'2020-02-25 22:36:43',		NULL,		1,	8.00,	86,	12 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-02-25 22:36:50',		NULL,		3,	10.00,	86,	8  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-02-28 22:37:04',		NULL,		1,	5.00,	87,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-02-28 22:37:10',		NULL,		1,	4.00,	87,	17 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2020-02-28 22:37:15',		NULL,		1,	9.00,	87,	14 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-02-28 22:38:05',		NULL,		2,	30.00,	88,	10 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-02-28 22:38:13',		NULL,		2,	12.00,	88,	9  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2020-02-28 22:38:17',		NULL,		1,	5.00,	88,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-02-28 22:38:24',		NULL,		1,	10.00,	88,	18 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-02-28 22:38:39',		NULL,		2,	15.00,	89,	2  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2020-02-28 22:38:46',		NULL,		1,	12.00,	89,	15 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-02-28 22:38:50',		NULL,		1,	12.00,	89,	21 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-02-28 22:39:03',		NULL,		1,	12.00,	90,	20 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-02-28 22:39:07',		NULL,		1,	10.00,	90,	5  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(8,		'2020-02-28 22:39:11',		NULL,		1,	12.00,	90,	15 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-02-28 22:39:56',		NULL,		1,	5.00,	91,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(8,		'2020-02-28 22:40:01',		NULL,		1,	9.00,	91,	14 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(12,		'2020-02-28 22:40:15',		NULL,		1,	12.00,	92,	15 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(12,		'2020-02-28 22:40:40',		NULL,		1,	12.00,	93,	16 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2020-02-28 22:40:53',		NULL,		1,	8.00,	94,	11 );



-- CADASTRAR COMANDAS PARTE 6
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 14 , '2020-01-25 22:17:44','2020-01-25 23:17:44', 6,	 3,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 54 , '2020-01-25 22:17:59','2020-01-25 23:17:59', 3,	 4,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 23 , '2020-01-25 22:18:15','2020-01-25 23:18:15', 2,	 5,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 11 , '2020-01-25 22:18:55','2020-01-25 23:18:55', 1,	 6,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 4  , '2020-01-25 22:19:15','2020-01-25 23:19:15', 2,	 7,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 6  , '2020-01-25 22:20:57','2020-01-25 23:20:57', 5,	 8,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 7  , '2020-01-28 22:21:39','2020-01-28 23:21:39', 3,	 9,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 8  , '2020-01-28 22:21:49','2020-01-28 23:21:49', 1,	 10, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 42  ,'2020-01-28 22:21:56','2020-01-28 23:21:56', 3,  11, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 75  ,'2020-01-28 22:22:28','2020-01-28 23:22:28', 6,	 12, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 36  ,'2020-01-28 22:22:34','2020-01-28 23:22:34', 10, 13, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 20  ,'2020-01-28 22:33:56','2020-01-28 23:33:56', 11, 14, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2020-01-28 22:35:49','2020-01-28 23:35:49', 2,  16, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2020-01-28 22:35:55','2020-01-28 23:35:55', 3,  17, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2020-01-28 22:36:00','2020-01-28 23:36:00', 2,  18, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2020-01-28 22:36:15','2020-01-28 23:36:15', 4,  19, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2020-01-30 22:36:35','2020-01-30 23:36:35', 2,  20, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2020-01-30 22:36:43','2020-01-30 23:36:43', 2,  21, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 12 , '2020-01-30 22:36:50','2020-01-30 23:36:50', 2,  22,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 3  , '2020-01-30 22:37:04','2020-01-30 23:37:04', 4,  23, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2020-01-28 22:36:15','2020-01-28 23:36:15', 4,  19, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2020-01-30 22:36:35','2020-01-30 23:36:35', 2,  20, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2020-01-30 22:36:43','2020-01-30 23:36:43', 2,  21, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 12 , '2020-01-30 22:36:50','2020-01-30 23:36:50', 2,  22,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 3  , '2020-01-30 22:37:04','2020-01-30 23:37:04', 4,  23, 1);

-- INSERT PRODUCT CARD PARTE 6
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-01-25 22:17:44',	'Sem limão.	',	2,	20.00,	101,	1  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-01-25 22:17:59',	'Sem limão.	',	1,	9.00,	101,	14 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-01-25 22:18:15',	'Sem limão.	',	1,	12.00,	101,	21 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(1,		'2020-01-25 22:18:55',	'Sem cebola.',	3,	15.00,	102,	2  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(1,		'2020-01-25 22:19:15',	'Sem cebola.',	1,	20.00,	102,	3  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(8,		'2020-01-25 22:20:57',		NULL,		1,	8.00,	102,	12 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-01-25 22:21:39',		NULL,		1,	10.00,	103,	5  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2020-01-25 22:21:49',		NULL,		3,	12.00,	103,	6  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2020-01-25 22:21:56',		NULL,		1,	5.00,	103,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(4,		'2020-01-25 22:22:28',		NULL,		1,	10.00,	104,	18 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-01-25 22:22:34',		NULL,		2,	30.00,	104,	10 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(4,		'2020-01-25 22:33:56',		NULL,		1,	12.00,	104,	21 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-01-25 22:35:49',		NULL,		1,	12.00,	105,	19 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2020-01-25 22:35:55',		NULL,		3,	15.00,	105,	4  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(9,		'2020-01-25 22:36:00',		NULL,		1,	12.00,	105,	15 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-01-25 22:36:15',		NULL,		1,	12.00,	105,	20 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-01-25 22:36:35',		NULL,		1,	15.00,	106,	2  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(8,		'2020-01-25 22:36:43',		NULL,		1,	8.00,	106,	12 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-01-25 22:36:50',		NULL,		3,	10.00,	106,	8  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-01-28 22:37:04',		NULL,		1,	5.00,	107,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-01-28 22:37:10',		NULL,		1,	4.00,	107,	17 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2020-01-28 22:37:15',		NULL,		1,	9.00,	107,	14 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-01-28 22:38:05',		NULL,		2,	30.00,	108,	10 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-01-28 22:38:13',		NULL,		2,	12.00,	108,	9  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2020-01-28 22:38:17',		NULL,		1,	5.00,	108,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-01-28 22:38:24',		NULL,		1,	10.00,	108,	18 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-01-28 22:38:39',		NULL,		2,	15.00,	109,	2  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2020-01-28 22:38:46',		NULL,		1,	12.00,	109,	15 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-01-28 22:38:50',		NULL,		1,	12.00,	109,	21 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-01-28 22:39:03',		NULL,		1,	12.00,	110,	20 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-01-28 22:39:07',		NULL,		1,	10.00,	110,	5  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(8,		'2020-01-28 22:39:11',		NULL,		1,	12.00,	110,	15 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-01-28 22:39:56',		NULL,		1,	5.00,	111,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(8,		'2020-01-28 22:40:01',		NULL,		1,	9.00,	111,	14 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-01-30 22:41:17',		NULL,		1,	12.00,	116,	19 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-01-30 22:41:22',		NULL,		1,	20.00,	116,	1  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(4,		'2020-01-30 22:42:13',		NULL,		1,	15.00,	117,	4  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-01-30 22:42:18',		NULL,		1,	9.00,	117,	14 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-01-30 22:42:37',		NULL,		1,	5.00,	118,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2020-01-30 22:43:05',		NULL,		1,	12.00,	119,	20 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(1,		'2020-01-30 22:43:09',		NULL,		3,	15.00,	119,	2  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2020-01-30 22:43:15',		NULL,		1,	12.00,	119,	16 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(4,		'2020-01-30 22:43:26',		NULL,		1,	12.00,	120,	15 );

-- CADASTRAR COMANDAS PARTE 7
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 14 , '2019-12-25 22:17:44','2019-12-25 23:17:44', 6,	 3,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 54 , '2019-12-25 22:17:59','2019-12-25 23:17:59', 3,	 4,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 23 , '2019-12-25 22:18:15','2019-12-25 23:18:15', 2,	 5,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 11 , '2019-12-25 22:18:55','2019-12-25 23:18:55', 1,	 6,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 4  , '2019-12-25 22:19:15','2019-12-25 23:19:15', 2,	 7,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 6  , '2019-12-25 22:20:57','2019-12-25 23:20:57', 5,	 8,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 7  , '2019-12-28 22:21:39','2019-12-28 23:21:39', 3,	 9,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 8  , '2019-12-28 22:21:49','2019-12-28 23:21:49', 1,	 10, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 42  ,'2019-12-28 22:21:56','2019-12-28 23:21:56', 3,  11, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 75  ,'2019-12-28 22:22:28','2019-12-28 23:22:28', 6,	 12, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 36  ,'2019-12-28 22:22:34','2019-12-28 23:22:34', 10, 13, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 20  ,'2019-12-28 22:33:56','2019-12-28 23:33:56', 11, 14, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2019-12-28 22:35:49','2019-12-28 23:35:49', 2,  16, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2019-12-28 22:35:55','2019-12-28 23:35:55', 3,  17, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2019-12-28 22:36:00','2019-12-28 23:36:00', 2,  18, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2019-12-28 22:36:15','2019-12-28 23:36:15', 4,  19, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2019-12-30 22:36:35','2019-12-30 23:36:35', 2,  20, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2019-12-30 22:36:43','2019-12-30 23:36:43', 2,  21, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 12 , '2019-12-30 22:36:50','2019-12-30 23:36:50', 2,  22,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 3  , '2019-12-30 22:37:04','2019-12-30 23:37:04', 4,  23, 1);

-- INSERT PRODUCT CARD PARTE 7
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-12-25 22:17:44',	'Sem limão.	',	2,	20.00,	121,	1  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-12-25 22:17:59',	'Sem limão.	',	1,	9.00,	121,	14 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-12-25 22:18:15',	'Sem limão.	',	1,	12.00,	121,	21 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(1,		'2019-12-25 22:18:55',	'Sem cebola.',	3,	15.00,	122,	2  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(1,		'2019-12-25 22:19:15',	'Sem cebola.',	1,	20.00,	122,	3  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(8,		'2019-12-25 22:20:57',		NULL,		1,	8.00,	122,	12 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-12-25 22:21:39',		NULL,		1,	10.00,	123,	5  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2019-12-25 22:21:49',		NULL,		3,	12.00,	123,	6  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2019-12-25 22:21:56',		NULL,		1,	5.00,	123,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-12-28 22:38:50',		NULL,		1,	12.00,	129,	21 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-12-28 22:39:03',		NULL,		1,	12.00,	130,	20 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-12-28 22:39:07',		NULL,		1,	10.00,	130,	5  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(8,		'2019-12-28 22:39:11',		NULL,		1,	12.00,	130,	15 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-12-28 22:39:56',		NULL,		1,	5.00,	131,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(8,		'2019-12-28 22:40:01',		NULL,		1,	9.00,	131,	14 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(12,		'2019-12-28 22:40:15',		NULL,		1,	12.00,	132,	15 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(12,		'2019-12-28 22:40:40',		NULL,		1,	12.00,	133,	16 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2019-12-28 22:40:53',		NULL,		1,	8.00,	134,	11 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2019-12-30 22:41:05',		NULL,		1,	8.00,	135,	12 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-12-30 22:41:17',		NULL,		1,	12.00,	136,	19 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-12-30 22:41:22',		NULL,		1,	20.00,	136,	1  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(4,		'2019-12-30 22:42:13',		NULL,		1,	15.00,	137,	4  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-12-30 22:42:18',		NULL,		1,	9.00,	137,	14 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-12-30 22:42:32',		NULL,		1,	10.00,	138,	5  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-12-30 22:42:37',		NULL,		1,	5.00,	138,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-12-30 22:43:05',		NULL,		1,	12.00,	139,	20 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(1,		'2019-12-30 22:43:09',		NULL,		3,	15.00,	139,	2  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-12-30 22:43:15',		NULL,		1,	12.00,	139,	16 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(4,		'2019-12-30 22:43:26',		NULL,		1,	12.00,	140,	15 );



-- CADASTRAR COMANDAS PARTE 8
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 14 , '2019-11-25 22:17:44','2019-11-25 23:17:44', 6,	 3,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 54 , '2019-11-25 22:17:59','2019-11-25 23:17:59', 3,	 4,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 23 , '2019-11-25 22:18:15','2019-11-25 23:18:15', 2,	 5,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 11 , '2019-11-25 22:18:55','2019-11-25 23:18:55', 1,	 6,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 4  , '2019-11-25 22:19:15','2019-11-25 23:19:15', 2,	 7,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 6  , '2019-11-25 22:20:57','2019-11-25 23:20:57', 5,	 8,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 7  , '2019-11-28 22:21:39','2019-11-28 23:21:39', 3,	 9,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 8  , '2019-11-28 22:21:49','2019-11-28 23:21:49', 1,	 10, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 42  ,'2019-11-28 22:21:56','2019-11-28 23:21:56', 3,  11, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 75  ,'2019-11-28 22:22:28','2019-11-28 23:22:28', 6,	 12, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 36  ,'2019-11-28 22:22:34','2019-11-28 23:22:34', 10, 13, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 20  ,'2019-11-28 22:33:56','2019-11-28 23:33:56', 11, 14, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2019-11-28 22:35:49','2019-11-28 23:35:49', 2,  16, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2019-11-28 22:35:55','2019-11-28 23:35:55', 3,  17, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2019-11-28 22:36:00','2019-11-28 23:36:00', 2,  18, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2019-11-28 22:36:15','2019-11-28 23:36:15', 4,  19, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2019-11-30 22:36:35','2019-11-30 23:36:35', 2,  20, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2019-11-30 22:36:43','2019-11-30 23:36:43', 2,  21, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 12 , '2019-11-30 22:36:50','2019-11-30 23:36:50', 2,  22,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 3  , '2019-11-30 22:37:04','2019-11-30 23:37:04', 4,  23, 1);

-- INSERT PRODUCT CARD PARTE 8
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-11-25 22:17:44',	'Sem limão.	',	2,	20.00,	141,	1  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-11-25 22:17:59',	'Sem limão.	',	1,	9.00,	141,	14 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-11-25 22:18:15',	'Sem limão.	',	1,	12.00,	141,	21 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(1,		'2019-11-25 22:18:55',	'Sem cebola.',	3,	15.00,	142,	2  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(1,		'2019-11-25 22:19:15',	'Sem cebola.',	1,	20.00,	142,	3  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(8,		'2019-11-25 22:20:57',		NULL,		1,	8.00,	142,	12 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-11-25 22:21:39',		NULL,		1,	10.00,	143,	5  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2019-11-25 22:21:49',		NULL,		3,	12.00,	143,	6  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2019-11-25 22:21:56',		NULL,		1,	5.00,	143,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(4,		'2019-11-25 22:22:28',		NULL,		1,	10.00,	144,	18 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-11-25 22:22:34',		NULL,		2,	30.00,	144,	10 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(4,		'2019-11-25 22:33:56',		NULL,		1,	12.00,	144,	21 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-11-25 22:35:49',		NULL,		1,	12.00,	145,	19 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2019-11-25 22:35:55',		NULL,		3,	15.00,	145,	4  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(9,		'2019-11-25 22:36:00',		NULL,		1,	12.00,	145,	15 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-11-25 22:36:15',		NULL,		1,	12.00,	145,	20 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-11-25 22:36:35',		NULL,		1,	15.00,	146,	2  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(8,		'2019-11-25 22:36:43',		NULL,		1,	8.00,	146,	12 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-11-25 22:36:50',		NULL,		3,	10.00,	146,	8  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-11-28 22:37:04',		NULL,		1,	5.00,	147,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-11-28 22:37:10',		NULL,		1,	4.00,	147,	17 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2019-11-28 22:37:15',		NULL,		1,	9.00,	147,	14 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-11-28 22:38:05',		NULL,		2,	30.00,	148,	10 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-11-28 22:38:13',		NULL,		2,	12.00,	148,	9  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2019-11-28 22:38:17',		NULL,		1,	5.00,	148,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-11-28 22:38:24',		NULL,		1,	10.00,	148,	18 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-11-28 22:38:39',		NULL,		2,	15.00,	149,	2  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2019-11-28 22:38:46',		NULL,		1,	12.00,	149,	15 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-11-28 22:38:50',		NULL,		1,	12.00,	129,	21 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-11-28 22:39:03',		NULL,		1,	12.00,	150,	20 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-11-28 22:39:07',		NULL,		1,	10.00,	150,	5  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(12,		'2019-11-28 22:40:15',		NULL,		1,	12.00,	152,	15 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(12,		'2019-11-28 22:40:40',		NULL,		1,	12.00,	153,	16 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2019-11-28 22:40:53',		NULL,		1,	8.00,	154,	11 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2019-11-30 22:41:05',		NULL,		1,	8.00,	155,	12 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-11-30 22:41:17',		NULL,		1,	12.00,	156,	19 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-11-30 22:41:22',		NULL,		1,	20.00,	156,	1  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(4,		'2019-11-30 22:42:13',		NULL,		1,	15.00,	157,	4  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-11-30 22:42:18',		NULL,		1,	9.00,	157,	14 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-11-30 22:42:32',		NULL,		1,	10.00,	158,	5  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-11-30 22:42:37',		NULL,		1,	5.00,	158,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-11-30 22:43:05',		NULL,		1,	12.00,	159,	20 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(1,		'2019-11-30 22:43:09',		NULL,		3,	15.00,	159,	2  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-11-30 22:43:15',		NULL,		1,	12.00,	159,	16 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(4,		'2019-11-30 22:43:26',		NULL,		1,	12.00,	160,	15 );


-- CADASTRAR COMANDAS PARTE 9
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 14 , '2019-10-25 22:17:44','2019-10-25 23:17:44', 6,	 3,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 54 , '2019-10-25 22:17:59','2019-10-25 23:17:59', 3,	 4,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 23 , '2019-10-25 22:18:15','2019-10-25 23:18:15', 2,	 5,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 11 , '2019-10-25 22:18:55','2019-10-25 23:18:55', 1,	 6,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 4  , '2019-10-25 22:19:15','2019-10-25 23:19:15', 2,	 7,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 6  , '2019-10-25 22:20:57','2019-10-25 23:20:57', 5,	 8,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 7  , '2019-10-28 22:21:39','2019-10-28 23:21:39', 3,	 9,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 8  , '2019-10-28 22:21:49','2019-10-28 23:21:49', 1,	 10, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 42  ,'2019-10-28 22:21:56','2019-10-28 23:21:56', 3,  11, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 75  ,'2019-10-28 22:22:28','2019-10-28 23:22:28', 6,	 12, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 36  ,'2019-10-28 22:22:34','2019-10-28 23:22:34', 10, 13, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 20  ,'2019-10-28 22:33:56','2019-10-28 23:33:56', 11, 14, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2019-10-28 22:35:49','2019-10-28 23:35:49', 2,  16, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2019-10-28 22:35:55','2019-10-28 23:35:55', 3,  17, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2019-10-28 22:36:00','2019-10-28 23:36:00', 2,  18, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2019-10-28 22:36:15','2019-10-28 23:36:15', 4,  19, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2019-10-30 22:36:35','2019-10-30 23:36:35', 2,  20, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2019-10-30 22:36:43','2019-10-30 23:36:43', 2,  21, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 12 , '2019-10-30 22:36:50','2019-10-30 23:36:50', 2,  22,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 3  , '2019-10-30 22:37:04','2019-10-30 23:37:04', 4,  23, 1);

-- INSERT PRODUCT CARD PARTE 9
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-10-25 22:17:44',	'Sem limão.	',	2,	20.00,	161,	1  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-10-25 22:17:59',	'Sem limão.	',	1,	9.00,	161,	14 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-10-25 22:18:15',	'Sem limão.	',	1,	12.00,	161,	21 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(1,		'2019-10-25 22:18:55',	'Sem cebola.',	3,	15.00,	162,	2  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(1,		'2019-10-25 22:19:15',	'Sem cebola.',	1,	20.00,	162,	3  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(8,		'2019-10-25 22:20:57',		NULL,		1,	8.00,	162,	12 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-10-25 22:21:39',		NULL,		1,	10.00,	163,	5  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2019-10-25 22:21:49',		NULL,		3,	12.00,	163,	6  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2019-10-25 22:21:56',		NULL,		1,	5.00,	163,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(4,		'2019-10-25 22:22:28',		NULL,		1,	10.00,	164,	18 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-10-25 22:22:34',		NULL,		2,	30.00,	164,	10 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(4,		'2019-10-25 22:33:56',		NULL,		1,	12.00,	164,	21 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-10-25 22:35:49',		NULL,		1,	12.00,	165,	19 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2019-10-25 22:35:55',		NULL,		3,	15.00,	165,	4  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(9,		'2019-10-25 22:36:00',		NULL,		1,	12.00,	165,	15 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-10-25 22:36:15',		NULL,		1,	12.00,	165,	20 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-10-25 22:36:35',		NULL,		1,	15.00,	166,	2  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(8,		'2019-10-25 22:36:43',		NULL,		1,	8.00,	166,	12 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-10-25 22:36:50',		NULL,		3,	10.00,	166,	8  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-10-28 22:37:04',		NULL,		1,	5.00,	167,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-10-28 22:37:10',		NULL,		1,	4.00,	167,	17 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2019-10-28 22:37:15',		NULL,		1,	9.00,	167,	14 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-10-28 22:38:05',		NULL,		2,	30.00,	168,	10 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-10-28 22:38:13',		NULL,		2,	12.00,	168,	9  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2019-10-28 22:38:17',		NULL,		1,	5.00,	168,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-10-28 22:38:24',		NULL,		1,	10.00,	168,	18 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-10-28 22:38:39',		NULL,		2,	15.00,	169,	2  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2019-10-28 22:38:46',		NULL,		1,	12.00,	169,	15 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-10-28 22:38:50',		NULL,		1,	12.00,	169,	21 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-10-28 22:39:03',		NULL,		1,	12.00,	170,	20 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-10-28 22:39:07',		NULL,		1,	10.00,	170,	5  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-10-30 22:42:32',		NULL,		1,	10.00,	178,	5  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-10-30 22:42:37',		NULL,		1,	5.00,	178,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-10-30 22:43:05',		NULL,		1,	12.00,	179,	20 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(1,		'2019-10-30 22:43:09',		NULL,		3,	15.00,	179,	2  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-10-30 22:43:15',		NULL,		1,	12.00,	179,	16 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(4,		'2019-10-30 22:43:26',		NULL,		1,	12.00,	180,	15 );

-- CADASTRAR COMANDAS PARTE 10
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 14 , '2019-09-25 22:17:44','2019-09-25 23:17:44', 6,	 3,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 54 , '2019-09-25 22:17:59','2019-09-25 23:17:59', 3,	 4,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 23 , '2019-09-25 22:18:15','2019-09-25 23:18:15', 2,	 5,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 11 , '2019-09-25 22:18:55','2019-09-25 23:18:55', 1,	 6,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 4  , '2019-09-25 22:19:15','2019-09-25 23:19:15', 2,	 7,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 6  , '2019-09-25 22:20:57','2019-09-25 23:20:57', 5,	 8,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 7  , '2019-09-28 22:21:39','2019-09-28 23:21:39', 3,	 9,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 8  , '2019-09-28 22:21:49','2019-09-28 23:21:49', 1,	 10, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 42  ,'2019-09-28 22:21:56','2019-09-28 23:21:56', 3,  11, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 75  ,'2019-09-28 22:22:28','2019-09-28 23:22:28', 6,	 12, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 36  ,'2019-09-28 22:22:34','2019-09-28 23:22:34', 10, 13, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 20  ,'2019-09-28 22:33:56','2019-09-28 23:33:56', 11, 14, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2019-09-28 22:35:49','2019-09-28 23:35:49', 2,  16, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2019-09-28 22:35:55','2019-09-28 23:35:55', 3,  17, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2019-09-28 22:36:00','2019-09-28 23:36:00', 2,  18, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2019-09-28 22:36:15','2019-09-28 23:36:15', 4,  19, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2019-09-30 22:36:35','2019-09-30 23:36:35', 2,  20, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2019-09-30 22:36:43','2019-09-30 23:36:43', 2,  21, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 12 , '2019-09-30 22:36:50','2019-09-30 23:36:50', 2,  22,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 3  , '2019-09-30 22:37:04','2019-09-30 23:37:04', 4,  23, 1);

-- INSERT PRODUCT CARD PARTE 10
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-09-25 22:17:44',	'Sem limão.	',	2,	20.00,	181,	1  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-09-25 22:17:59',	'Sem limão.	',	1,	9.00,	181,	14 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-09-25 22:18:15',	'Sem limão.	',	1,	12.00,	181,	21 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(1,		'2019-09-25 22:18:55',	'Sem cebola.',	3,	15.00,	182,	2  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(1,		'2019-09-25 22:19:15',	'Sem cebola.',	1,	20.00,	182,	3  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(8,		'2019-09-25 22:20:57',		NULL,		1,	8.00,	182,	12 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-09-25 22:21:39',		NULL,		1,	10.00,	183,	5  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2019-09-25 22:21:49',		NULL,		3,	12.00,	183,	6  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2019-09-25 22:21:56',		NULL,		1,	5.00,	183,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(4,		'2019-09-25 22:22:28',		NULL,		1,	10.00,	184,	18 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-09-25 22:22:34',		NULL,		2,	30.00,	184,	10 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(4,		'2019-09-25 22:33:56',		NULL,		1,	12.00,	184,	21 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-09-25 22:35:49',		NULL,		1,	12.00,	185,	19 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2019-09-25 22:35:55',		NULL,		3,	15.00,	185,	4  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(9,		'2019-09-25 22:36:00',		NULL,		1,	12.00,	185,	15 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-09-25 22:36:15',		NULL,		1,	12.00,	185,	20 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-09-25 22:36:35',		NULL,		1,	15.00,	186,	2  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(8,		'2019-09-25 22:36:43',		NULL,		1,	8.00,	186,	12 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-09-28 22:38:50',		NULL,		1,	12.00,	189,	21 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-09-28 22:39:03',		NULL,		1,	12.00,	190,	20 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-09-28 22:39:07',		NULL,		1,	10.00,	190,	5  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2019-09-30 22:41:05',		NULL,		1,	8.00,	195,	12 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-09-30 22:41:17',		NULL,		1,	12.00,	196,	19 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-09-30 22:41:22',		NULL,		1,	20.00,	196,	1  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(4,		'2019-09-30 22:42:13',		NULL,		1,	15.00,	197,	4  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-09-30 22:42:18',		NULL,		1,	9.00,	197,	14 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-09-30 22:42:32',		NULL,		1,	10.00,	198,	5  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-09-30 22:42:37',		NULL,		1,	5.00,	198,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-09-30 22:43:05',		NULL,		1,	12.00,	199,	20 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(1,		'2019-09-30 22:43:09',		NULL,		3,	15.00,	199,	2  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-09-30 22:43:15',		NULL,		1,	12.00,	199,	16 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(4,		'2019-09-30 22:43:26',		NULL,		1,	12.00,	200,	15 );


-- CADASTRAR COMANDAS PARTE 11
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 14 , '2019-08-25 22:17:44','2019-08-25 23:17:44', 6,	 3,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 54 , '2019-08-25 22:17:59','2019-08-25 23:17:59', 3,	 4,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 23 , '2019-08-25 22:18:15','2019-08-25 23:18:15', 2,	 5,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 11 , '2019-08-25 22:18:55','2019-08-25 23:18:55', 1,	 6,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 4  , '2019-08-25 22:19:15','2019-08-25 23:19:15', 2,	 7,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 6  , '2019-08-25 22:20:57','2019-08-25 23:20:57', 5,	 8,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 7  , '2019-08-28 22:21:39','2019-08-28 23:21:39', 3,	 9,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 8  , '2019-08-28 22:21:49','2019-08-28 23:21:49', 1,	 10, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 42  ,'2019-08-28 22:21:56','2019-08-28 23:21:56', 3,  11, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 75  ,'2019-08-28 22:22:28','2019-08-28 23:22:28', 6,	 12, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 36  ,'2019-08-28 22:22:34','2019-08-28 23:22:34', 10, 13, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 20  ,'2019-08-28 22:33:56','2019-08-28 23:33:56', 11, 14, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2019-08-28 22:35:49','2019-08-28 23:35:49', 2,  16, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2019-08-28 22:35:55','2019-08-28 23:35:55', 3,  17, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2019-08-28 22:36:00','2019-08-28 23:36:00', 2,  18, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2019-08-28 22:36:15','2019-08-28 23:36:15', 4,  19, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2019-08-30 22:36:35','2019-08-30 23:36:35', 2,  20, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2019-08-30 22:36:43','2019-08-30 23:36:43', 2,  21, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 12 , '2019-08-30 22:36:50','2019-08-30 23:36:50', 2,  22,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 3  , '2019-08-30 22:37:04','2019-08-30 23:37:04', 4,  23, 1);

-- INSERT PRODUCT CARD PARTE 11
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-08-25 22:17:44',	'Sem limão.	',	2,	20.00,	201,	1  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-08-25 22:17:59',	'Sem limão.	',	1,	9.00,	201,	14 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-08-25 22:18:15',	'Sem limão.	',	1,	12.00,	201,	21 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(1,		'2019-08-25 22:18:55',	'Sem cebola.',	3,	15.00,	202,	2  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(1,		'2019-08-25 22:19:15',	'Sem cebola.',	1,	20.00,	202,	3  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(8,		'2019-08-25 22:20:57',		NULL,		1,	8.00,	202,	12 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-08-25 22:21:39',		NULL,		1,	10.00,	203,	5  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2019-08-25 22:21:49',		NULL,		3,	12.00,	203,	6  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2019-08-25 22:21:56',		NULL,		1,	5.00,	203,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(4,		'2019-08-25 22:22:28',		NULL,		1,	10.00,	204,	18 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-08-25 22:22:34',		NULL,		2,	30.00,	204,	10 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(4,		'2019-08-25 22:33:56',		NULL,		1,	12.00,	204,	21 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-08-25 22:35:49',		NULL,		1,	12.00,	205,	19 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2019-08-25 22:35:55',		NULL,		3,	15.00,	205,	4  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(9,		'2019-08-25 22:36:00',		NULL,		1,	12.00,	205,	15 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-08-25 22:36:15',		NULL,		1,	12.00,	205,	20 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-08-28 22:38:05',		NULL,		2,	30.00,	208,	10 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-08-28 22:38:13',		NULL,		2,	12.00,	208,	9  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2019-08-28 22:38:17',		NULL,		1,	5.00,	208,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-08-28 22:38:24',		NULL,		1,	10.00,	208,	18 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-08-28 22:38:39',		NULL,		2,	15.00,	209,	2  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2019-08-28 22:38:46',		NULL,		1,	12.00,	209,	15 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-08-28 22:38:50',		NULL,		1,	12.00,	209,	21 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-08-28 22:39:03',		NULL,		1,	12.00,	210,	20 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-08-28 22:39:07',		NULL,		1,	10.00,	210,	5  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(8,		'2019-08-28 22:39:11',		NULL,		1,	12.00,	210,	15 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-08-28 22:39:56',		NULL,		1,	5.00,	211,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(8,		'2019-08-28 22:40:01',		NULL,		1,	9.00,	211,	14 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(12,		'2019-08-28 22:40:15',		NULL,		1,	12.00,	212,	15 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(12,		'2019-08-28 22:40:40',		NULL,		1,	12.00,	213,	16 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(4,		'2019-08-30 22:42:13',		NULL,		1,	15.00,	217,	4  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-08-30 22:42:18',		NULL,		1,	9.00,	217,	14 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-08-30 22:42:32',		NULL,		1,	10.00,	218,	5  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-08-30 22:42:37',		NULL,		1,	5.00,	218,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-08-30 22:43:05',		NULL,		1,	12.00,	219,	20 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(1,		'2019-08-30 22:43:09',		NULL,		3,	15.00,	219,	2  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-08-30 22:43:15',		NULL,		1,	12.00,	219,	16 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(4,		'2019-08-30 22:43:26',		NULL,		1,	12.00,	220,	15 );


-- CADASTRAR COMANDAS PARTE 12
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 14 , '2019-07-25 22:17:44','2019-07-25 23:17:44', 6,	 3,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 54 , '2019-07-25 22:17:59','2019-07-25 23:17:59', 3,	 4,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 23 , '2019-07-25 22:18:15','2019-07-25 23:18:15', 2,	 5,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 11 , '2019-07-25 22:18:55','2019-07-25 23:18:55', 1,	 6,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 4  , '2019-07-25 22:19:15','2019-07-25 23:19:15', 2,	 7,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 6  , '2019-07-25 22:20:57','2019-07-25 23:20:57', 5,	 8,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 7  , '2019-07-28 22:21:39','2019-07-28 23:21:39', 3,	 9,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 8  , '2019-07-28 22:21:49','2019-07-28 23:21:49', 1,	 10, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 42  ,'2019-07-28 22:21:56','2019-07-28 23:21:56', 3,  11, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 75  ,'2019-07-28 22:22:28','2019-07-28 23:22:28', 6,	 12, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 36  ,'2019-07-28 22:22:34','2019-07-28 23:22:34', 10, 13, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 20  ,'2019-07-28 22:33:56','2019-07-28 23:33:56', 11, 14, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2019-07-28 22:35:49','2019-07-28 23:35:49', 2,  16, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2019-07-28 22:35:55','2019-07-28 23:35:55', 3,  17, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2019-07-28 22:36:00','2019-07-28 23:36:00', 2,  18, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2019-07-28 22:36:15','2019-07-28 23:36:15', 4,  19, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2019-07-30 22:36:35','2019-07-30 23:36:35', 2,  20, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 19  ,'2019-07-30 22:36:43','2019-07-30 23:36:43', 2,  21, 1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 12 , '2019-07-30 22:36:50','2019-07-30 23:36:50', 2,  22,  1);
insert into comandadigitaldb.tb_card(table_number, begin_date, end_date, amount_people, id_user, id_store) VALUES ( 3  , '2019-07-30 22:37:04','2019-07-30 23:37:04', 4,  23, 1);

-- INSERT PRODUCT CARD PARTE 12
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-07-25 22:17:44',	'Sem limão.	',	2,	20.00,	221,	1  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-07-25 22:17:59',	'Sem limão.	',	1,	9.00,	221,	14 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-07-25 22:18:15',	'Sem limão.	',	1,	12.00,	221,	21 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(1,		'2019-07-25 22:18:55',	'Sem cebola.',	3,	15.00,	222,	2  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(1,		'2019-07-25 22:19:15',	'Sem cebola.',	1,	20.00,	222,	3  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(8,		'2019-07-25 22:20:57',		NULL,		1,	8.00,	222,	12 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-07-25 22:21:39',		NULL,		1,	10.00,	223,	5  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2019-07-25 22:21:49',		NULL,		3,	12.00,	223,	6  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2019-07-25 22:21:56',		NULL,		1,	5.00,	223,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(4,		'2019-07-25 22:22:28',		NULL,		1,	10.00,	224,	18 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-07-25 22:22:34',		NULL,		2,	30.00,	224,	10 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(4,		'2019-07-25 22:33:56',		NULL,		1,	12.00,	224,	21 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-07-25 22:35:49',		NULL,		1,	12.00,	225,	19 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2019-07-25 22:35:55',		NULL,		3,	15.00,	225,	4  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(9,		'2019-07-25 22:36:00',		NULL,		1,	12.00,	225,	15 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-07-25 22:36:15',		NULL,		1,	12.00,	225,	20 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-07-25 22:36:35',		NULL,		1,	15.00,	226,	2  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(8,		'2019-07-25 22:36:43',		NULL,		1,	8.00,	226,	12 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-07-25 22:36:50',		NULL,		3,	10.00,	226,	8  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-07-28 22:37:04',		NULL,		1,	5.00,	227,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-07-28 22:37:10',		NULL,		1,	4.00,	227,	17 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2019-07-28 22:37:15',		NULL,		1,	9.00,	227,	14 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-07-28 22:38:05',		NULL,		2,	30.00,	228,	10 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-07-28 22:38:13',		NULL,		2,	12.00,	228,	9  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2019-07-28 22:38:17',		NULL,		1,	5.00,	228,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-07-28 22:38:24',		NULL,		1,	10.00,	228,	18 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-07-28 22:38:39',		NULL,		2,	15.00,	229,	2  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(6,		'2019-07-28 22:38:46',		NULL,		1,	12.00,	229,	15 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-07-28 22:38:50',		NULL,		1,	12.00,	229,	21 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-07-28 22:39:03',		NULL,		1,	12.00,	230,	20 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-07-28 22:39:07',		NULL,		1,	10.00,	230,	5  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-07-30 22:41:22',		NULL,		1,	20.00,	236,	1  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(4,		'2019-07-30 22:42:13',		NULL,		1,	15.00,	237,	4  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-07-30 22:42:18',		NULL,		1,	9.00,	237,	14 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-07-30 22:42:32',		NULL,		1,	10.00,	238,	5  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-07-30 22:42:37',		NULL,		1,	5.00,	238,	13 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(2,		'2019-07-30 22:43:05',		NULL,		1,	12.00,	239,	20 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(1,		'2019-07-30 22:43:09',		NULL,		3,	15.00,	239,	2  );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(3,		'2019-07-30 22:43:15',		NULL,		1,	12.00,	239,	16 );
insert into comandadigitaldb.tb_product_card (amount_product, date_registration, note, status, value, id_card, id_product) values(4,		'2019-07-30 22:43:26',		NULL,		1,	12.00,	240,	15 );

