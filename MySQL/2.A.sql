-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Exercici 2.A
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Exercici 2.A
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Exercici 2.A` ;
USE `Exercici 2.A` ;

-- -----------------------------------------------------
-- Table `Exercici 2.A`.`Pacient`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 2.A`.`Pacient` (
  `id` INT NOT NULL,
  `DNI` VARCHAR(9) NOT NULL,
  `Nom` VARCHAR(45) NOT NULL,
  `Cognoms` VARCHAR(100) NOT NULL,
  `Mobil` VARCHAR(13) NULL,
  `direccio` VARCHAR(100) NULL,
  `NumeroSS` VARCHAR(25) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici 2.A`.`Metge`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 2.A`.`Metge` (
  `id` INT NOT NULL,
  `Nom` VARCHAR(45) NOT NULL,
  `Cognoms` VARCHAR(100) NOT NULL,
  `Numcolegiat` VARCHAR(25) NOT NULL,
  `Especialitat` VARCHAR(45) NULL,
  `Carreg` VARCHAR(100) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici 2.A`.`Consulta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 2.A`.`Consulta` (
  `Data` DATE NULL,
  `Despatx` VARCHAR(45) NULL,
  `Diagnostic` VARCHAR(255) NULL,
  `Pacient_id` INT NOT NULL,
  `Metge_id` INT NOT NULL,
  `Id` INT NOT NULL,
  INDEX `fk_Consulta_Pacient_idx` (`Pacient_id` ASC) VISIBLE,
  INDEX `fk_Consulta_Metge1_idx` (`Metge_id` ASC) VISIBLE,
  PRIMARY KEY (`Id`),
  CONSTRAINT `fk_Consulta_Pacient`
    FOREIGN KEY (`Pacient_id`)
    REFERENCES `Exercici 2.A`.`Pacient` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Consulta_Metge1`
    FOREIGN KEY (`Metge_id`)
    REFERENCES `Exercici 2.A`.`Metge` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
