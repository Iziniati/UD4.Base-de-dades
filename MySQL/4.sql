-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Exercici 4
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Exercici 4
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Exercici 4` ;
USE `Exercici 4` ;

-- -----------------------------------------------------
-- Table `Exercici 4`.`Clients`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 4`.`Clients` (
  `id` INT NOT NULL,
  `Nom` VARCHAR(45) NOT NULL,
  `Cognoms` VARCHAR(100) NULL,
  `Direccio` VARCHAR(100) NULL,
  `Telefon` VARCHAR(13) NULL,
  `VIP` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici 4`.`Vendedors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 4`.`Vendedors` (
  `id` INT NOT NULL,
  `Nom` VARCHAR(45) NOT NULL,
  `Cognoms` VARCHAR(100) NULL,
  `Direccio` VARCHAR(100) NULL,
  `Telefon` VARCHAR(13) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici 4`.`TipusPolissa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 4`.`TipusPolissa` (
  `id` INT NOT NULL,
  `Nom` VARCHAR(45) NOT NULL,
  `Descripccio` VARCHAR(255) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici 4`.`Polissa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 4`.`Polissa` (
  `id` INT NOT NULL,
  `Numero` VARCHAR(25) NULL,
  `Preu` INT NULL,
  `TipusPagament` VARCHAR(100) NULL,
  `DataContratacio` VARCHAR(50) NULL,
  `DataInici` VARCHAR(50) NULL,
  `DataFi` VARCHAR(50) NULL,
  `Vendedors_id` INT NOT NULL,
  `TipusPolissa_id` INT NOT NULL,
  `Clients_id` INT NOT NULL,
  PRIMARY KEY (`id`, `Vendedors_id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_Polissa_Vendedors_idx` (`Vendedors_id` ASC) VISIBLE,
  INDEX `fk_Polissa_TipusPolissa1_idx` (`TipusPolissa_id` ASC) VISIBLE,
  INDEX `fk_Polissa_Clients1_idx` (`Clients_id` ASC) VISIBLE,
  CONSTRAINT `fk_Polissa_Vendedors`
    FOREIGN KEY (`Vendedors_id`)
    REFERENCES `Exercici 4`.`Vendedors` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Polissa_TipusPolissa1`
    FOREIGN KEY (`TipusPolissa_id`)
    REFERENCES `Exercici 4`.`TipusPolissa` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Polissa_Clients1`
    FOREIGN KEY (`Clients_id`)
    REFERENCES `Exercici 4`.`Clients` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
