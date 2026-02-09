-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Exercici 5
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Exercici 5
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Exercici 5` ;
USE `Exercici 5` ;

-- -----------------------------------------------------
-- Table `Exercici 5`.`Client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 5`.`Client` (
  `id` INT NOT NULL,
  `DNI` VARCHAR(9) NULL,
  `Nom` VARCHAR(45) NOT NULL,
  `Cognoms` VARCHAR(100) NULL,
  `Direccio` VARCHAR(100) NULL,
  `Telefon` VARCHAR(13) NULL,
  `Poblacio` VARCHAR(45) NULL,
  `Email` VARCHAR(100) NULL,
  `Usuari` VARCHAR(50) NULL,
  `Contrasenya` VARCHAR(50) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici 5`.`TipusVehicle`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 5`.`TipusVehicle` (
  `id` INT NOT NULL,
  `Nom` VARCHAR(45) NOT NULL,
  `Descripccio` VARCHAR(255) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici 5`.`Vehicle`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 5`.`Vehicle` (
  `id` INT NOT NULL,
  `NumBastidor` VARCHAR(25) NULL,
  `Marca` VARCHAR(50) NULL,
  `Model` VARCHAR(50) NULL,
  `Matricula` VARCHAR(20) NULL,
  `Client_id` INT NOT NULL,
  `TipusVehicle_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_Vehicle_Client_idx` (`Client_id` ASC) VISIBLE,
  INDEX `fk_Vehicle_TipusVehicle1_idx` (`TipusVehicle_id` ASC) VISIBLE,
  CONSTRAINT `fk_Vehicle_Client`
    FOREIGN KEY (`Client_id`)
    REFERENCES `Exercici 5`.`Client` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Vehicle_TipusVehicle1`
    FOREIGN KEY (`TipusVehicle_id`)
    REFERENCES `Exercici 5`.`TipusVehicle` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici 5`.`Cita`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 5`.`Cita` (
  `id` INT NOT NULL,
  `Dia` VARCHAR(45) NULL,
  `Hora` VARCHAR(45) NULL,
  `Vehicle_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_Cita_Vehicle1_idx` (`Vehicle_id` ASC) VISIBLE,
  CONSTRAINT `fk_Cita_Vehicle1`
    FOREIGN KEY (`Vehicle_id`)
    REFERENCES `Exercici 5`.`Vehicle` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
