
-- USUÁRIOS PADRÃO
INSERT INTO comandadigitaldb.tb_user (cpf, dt_registration, email, name, password) VALUES ('776.724.310-99', '2020-01-01 00:00:00', 'adm@gmail.com', 'ADMIN', '$2a$10$krOpwrcrg3NZXvGOfSyj/u9nwNlB3sUjW8Mr23VWg9vsl9rueBv46');

INSERT INTO comandadigitaldb.tb_user (cpf, dt_registration, email, name, password) VALUES ('164.533.720-02', '2020-01-01 00:00:00', 'bar@gmail.com', 'DONO ESTABELECIMENTO', '$2a$10$krOpwrcrg3NZXvGOfSyj/u9nwNlB3sUjW8Mr23VWg9vsl9rueBv46');

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
('97.930.661/0001-58', 'LOJA DE TESTE', '61982263998', '2020-01-01 00:00:00', 1, 1, 2);

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
