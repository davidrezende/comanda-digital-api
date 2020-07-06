-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema comandadigitaldb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `comandadigitaldb` ;

-- -----------------------------------------------------
-- Schema comandadigitaldb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `comandadigitaldb` DEFAULT CHARACTER SET latin1 ;
USE `comandadigitaldb` ;

-- -----------------------------------------------------
-- Table `comandadigitaldb`.`tb_address`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `comandadigitaldb`.`tb_address` (
  `id_address` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `aditional_info` VARCHAR(50) NOT NULL,
  `city` VARCHAR(80) NOT NULL,
  `neighborhood` VARCHAR(80) NOT NULL,
  `state` VARCHAR(2) NOT NULL,
  `street_name` VARCHAR(180) NOT NULL,
  `zip_code` VARCHAR(9) NOT NULL,
  PRIMARY KEY (`id_address`))
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `comandadigitaldb`.`tb_user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `comandadigitaldb`.`tb_user` (
  `id_user` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `cpf` VARCHAR(14) NOT NULL,
  `dt_registration` DATETIME NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `name` VARCHAR(100) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id_user`))
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = latin1;

CREATE UNIQUE INDEX `UK_869sa3rebuf3nm0d4jwxdtouk` ON `comandadigitaldb`.`tb_user` (`cpf` ASC) ;

CREATE UNIQUE INDEX `UK_4vih17mube9j7cqyjlfbcrk4m` ON `comandadigitaldb`.`tb_user` (`email` ASC) ;


-- -----------------------------------------------------
-- Table `comandadigitaldb`.`tb_store`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `comandadigitaldb`.`tb_store` (
  `id_store` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `cnpj` VARCHAR(18) NOT NULL,
  `name` VARCHAR(100) NOT NULL,
  `phone` VARCHAR(15) NOT NULL,
  `registration_date` DATETIME NOT NULL,
  `status` INT(11) NULL DEFAULT NULL,
  `id_address` BIGINT(20) NULL DEFAULT NULL,
  `id_user` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id_store`),
  CONSTRAINT `FK51ihqj5n8wdxuhqa399a6bsvq`
    FOREIGN KEY (`id_user`)
    REFERENCES `comandadigitaldb`.`tb_user` (`id_user`),
  CONSTRAINT `FKou392n5qgkrevk43jcyo2v6in`
    FOREIGN KEY (`id_address`)
    REFERENCES `comandadigitaldb`.`tb_address` (`id_address`))
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = latin1;

CREATE UNIQUE INDEX `UK_895dx0v93rip3ae00r4ngwarj` ON `comandadigitaldb`.`tb_store` (`cnpj` ASC) ;

CREATE INDEX `FKou392n5qgkrevk43jcyo2v6in` ON `comandadigitaldb`.`tb_store` (`id_address` ASC) ;

CREATE INDEX `FK51ihqj5n8wdxuhqa399a6bsvq` ON `comandadigitaldb`.`tb_store` (`id_user` ASC)   ;


-- -----------------------------------------------------
-- Table `comandadigitaldb`.`tb_card`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `comandadigitaldb`.`tb_card` (
  `id_card` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `amount_people` INT(11) NOT NULL,
  `begin_date` DATETIME NOT NULL,
  `end_date` DATETIME NULL DEFAULT NULL,
  `table_number` INT(11) NOT NULL,
  `id_store` BIGINT(20) NOT NULL,
  `id_user` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id_card`),
  CONSTRAINT `FKj0o7cddauigvranm6itf33wuv`
    FOREIGN KEY (`id_store`)
    REFERENCES `comandadigitaldb`.`tb_store` (`id_store`),
  CONSTRAINT `FKmklbyb3360wv0r33frmtu024s`
    FOREIGN KEY (`id_user`)
    REFERENCES `comandadigitaldb`.`tb_user` (`id_user`))
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = latin1;

CREATE INDEX `FKj0o7cddauigvranm6itf33wuv` ON `comandadigitaldb`.`tb_card` (`id_store` ASC)   ;

CREATE INDEX `FKmklbyb3360wv0r33frmtu024s` ON `comandadigitaldb`.`tb_card` (`id_user` ASC)   ;


-- -----------------------------------------------------
-- Table `comandadigitaldb`.`tb_permission`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `comandadigitaldb`.`tb_permission` (
  `id_permission` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `description` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id_permission`))
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `comandadigitaldb`.`tb_product_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `comandadigitaldb`.`tb_product_type` (
  `id_product_type` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `description` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id_product_type`))
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `comandadigitaldb`.`tb_product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `comandadigitaldb`.`tb_product` (
  `id_product` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `description` VARCHAR(200) NOT NULL,
  `name` VARCHAR(100) NOT NULL,
  `status` INT(11) NULL DEFAULT NULL,
  `value` DECIMAL(8,2) NOT NULL,
  `id_store` BIGINT(20) NOT NULL,
  `id_type` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id_product`),
  CONSTRAINT `FKe348iw32a1xqq6ps01uqomnii`
    FOREIGN KEY (`id_type`)
    REFERENCES `comandadigitaldb`.`tb_product_type` (`id_product_type`),
  CONSTRAINT `FKrwg57ddicnhrg0rs18arkjedu`
    FOREIGN KEY (`id_store`)
    REFERENCES `comandadigitaldb`.`tb_store` (`id_store`))
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = latin1;

CREATE INDEX `FKrwg57ddicnhrg0rs18arkjedu` ON `comandadigitaldb`.`tb_product` (`id_store` ASC)   ;

CREATE INDEX `FKe348iw32a1xqq6ps01uqomnii` ON `comandadigitaldb`.`tb_product` (`id_type` ASC)   ;


-- -----------------------------------------------------
-- Table `comandadigitaldb`.`tb_product_card`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `comandadigitaldb`.`tb_product_card` (
  `id_product_card` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `amount_product` INT(11) NOT NULL,
  `date_change` DATETIME NULL DEFAULT NULL,
  `date_registration` DATETIME NOT NULL,
  `note` VARCHAR(120) NULL DEFAULT NULL,
  `status` INT(11) NULL DEFAULT NULL,
  `value` DECIMAL(5,2) NULL DEFAULT NULL,
  `id_card` BIGINT(20) NOT NULL,
  `id_product` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id_product_card`),
  CONSTRAINT `FK76a8du8c7ci359ac4nsrurak4`
    FOREIGN KEY (`id_card`)
    REFERENCES `comandadigitaldb`.`tb_card` (`id_card`),
  CONSTRAINT `FKbuf8l27oo8kasww7jsme9npi7`
    FOREIGN KEY (`id_product`)
    REFERENCES `comandadigitaldb`.`tb_product` (`id_product`))
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = latin1;

CREATE INDEX `FK76a8du8c7ci359ac4nsrurak4` ON `comandadigitaldb`.`tb_product_card` (`id_card` ASC)   ;

CREATE INDEX `FKbuf8l27oo8kasww7jsme9npi7` ON `comandadigitaldb`.`tb_product_card` (`id_product` ASC)   ;


-- -----------------------------------------------------
-- Table `comandadigitaldb`.`tb_user_permission`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `comandadigitaldb`.`tb_user_permission` (
  `id_user` BIGINT(20) NOT NULL,
  `id_permission` BIGINT(20) NOT NULL,
  CONSTRAINT `FKqsxlawmvr4dhvmhyhjmjjj3rt`
    FOREIGN KEY (`id_permission`)
    REFERENCES `comandadigitaldb`.`tb_permission` (`id_permission`),
  CONSTRAINT `FKt719rbex1tr7l6pwqytxmsutv`
    FOREIGN KEY (`id_user`)
    REFERENCES `comandadigitaldb`.`tb_user` (`id_user`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE INDEX `FKqsxlawmvr4dhvmhyhjmjjj3rt` ON `comandadigitaldb`.`tb_user_permission` (`id_permission` ASC)   ;

CREATE INDEX `FKt719rbex1tr7l6pwqytxmsutv` ON `comandadigitaldb`.`tb_user_permission` (`id_user` ASC)   ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
