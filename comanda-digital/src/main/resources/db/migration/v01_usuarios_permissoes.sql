
INSERT INTO `comandadigitaldb`.`tb_user` (`cpf`, `dt_registration`, `email`, `name`, `password`) VALUES ('13200068680', '2020-01-01 00:00:00', 'david@gmail.com', 'David', '$2a$10$krOpwrcrg3NZXvGOfSyj/u9nwNlB3sUjW8Mr23VWg9vsl9rueBv46');


INSERT INTO  `comandadigitaldb`.TB_PERMISSION (DESCRIPTION)
VALUES
('ROLE_LISTAR_ESTABELECIMENTO');

INSERT INTO  `comandadigitaldb`.TB_PERMISSION (DESCRIPTION)
VALUES
('ROLE_CADASTRAR_ESTABELECIMENTO');

INSERT INTO  `comandadigitaldb`.TB_PERMISSION (DESCRIPTION)
VALUES
('ROLE_ATUALIZAR_ESTABELECIMENTO');

INSERT INTO  `comandadigitaldb`.TB_USER_PERMISSION (ID_USER, ID_PERMISSION)
VALUES
('1','1');


INSERT INTO  `comandadigitaldb`.TB_USER_PERMISSION (ID_USER, ID_PERMISSION)
VALUES
('1','2');

INSERT INTO  `comandadigitaldb`.TB_USER_PERMISSION (ID_USER, ID_PERMISSION)
VALUES
('1','3');