-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Exercici 2.C
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Exercici 2.C
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Exercici 2.C` ;
USE `Exercici 2.C` ;

-- -----------------------------------------------------
-- Table `Exercici 2.C`.`Alumne`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 2.C`.`Alumne` (
  `id` INT NOT NULL,
  `Nom` VARCHAR(45) NOT NULL,
  `Cognoms` VARCHAR(100) NOT NULL,
  `DNI` VARCHAR(9) NULL,
  `Direccio` VARCHAR(100) NULL,
  `Telefon` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici 2.C`.`Departament`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 2.C`.`Departament` (
  `id` INT NOT NULL,
  `Nom` VARCHAR(45) NOT NULL,
  `Descripcio` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici 2.C`.`Modul`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 2.C`.`Modul` (
  `id` INT NOT NULL,
  `Nom` VARCHAR(45) NOT NULL,
  `Credits` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici 2.C`.`Professor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 2.C`.`Professor` (
  `id` INT NOT NULL,
  `Nom` VARCHAR(45) NOT NULL,
  `Cognoms` VARCHAR(100) NULL,
  `Direccio` VARCHAR(255) NULL,
  `Telefon` VARCHAR(13) NULL,
  `Especialitat` VARCHAR(100) NULL,
  `Departament_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_Professor_Departament1_idx` (`Departament_id` ASC) VISIBLE,
  CONSTRAINT `fk_Professor_Departament1`
    FOREIGN KEY (`Departament_id`)
    REFERENCES `Exercici 2.C`.`Departament` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici 2.C`.`Matricula`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 2.C`.`Matricula` (
  `id` INT NOT NULL,
  `CursAcademic` VARCHAR(45) NULL,
  `Alumne_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_Matricula_Alumne_idx` (`Alumne_id` ASC) VISIBLE,
  CONSTRAINT `fk_Matricula_Alumne`
    FOREIGN KEY (`Alumne_id`)
    REFERENCES `Exercici 2.C`.`Alumne` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici 2.C`.`ModulMarticula`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 2.C`.`ModulMarticula` (
  `id` INT NOT NULL,
  `Matricula_id` INT NOT NULL,
  `Professor_id` INT NOT NULL,
  `Modul_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `idModulMarticula_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_ModulMarticula_Matricula1_idx` (`Matricula_id` ASC) VISIBLE,
  INDEX `fk_ModulMarticula_Professor1_idx` (`Professor_id` ASC) VISIBLE,
  INDEX `fk_ModulMarticula_Modul1_idx` (`Modul_id` ASC) VISIBLE,
  CONSTRAINT `fk_ModulMarticula_Matricula1`
    FOREIGN KEY (`Matricula_id`)
    REFERENCES `Exercici 2.C`.`Matricula` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ModulMarticula_Professor1`
    FOREIGN KEY (`Professor_id`)
    REFERENCES `Exercici 2.C`.`Professor` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ModulMarticula_Modul1`
    FOREIGN KEY (`Modul_id`)
    REFERENCES `Exercici 2.C`.`Modul` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
