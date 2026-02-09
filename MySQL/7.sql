-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Exercici 7
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Exercici 7
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Exercici 7` ;
USE `Exercici 7` ;

-- -----------------------------------------------------
-- Table `Exercici 7`.`Tiquets`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 7`.`Tiquets` (
  `id` INT NOT NULL,
  `NumFactura` VARCHAR(45) NULL,
  `Empleat` VARCHAR(255) NULL,
  `Data` INT NULL,
  `Hora` VARCHAR(45) NULL,
  `Total` INT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici 7`.`Empleats`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 7`.`Empleats` (
  `id` INT NOT NULL,
  `Nom` VARCHAR(45) NOT NULL,
  `Cognoms` VARCHAR(100) NULL,
  `Adreça` VARCHAR(100) NULL,
  `Empleatscol` VARCHAR(45) NULL,
  `DataNeixament` VARCHAR(45) NULL,
  `Edad` VARCHAR(2) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici 7`.`LineasDeTiquet`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 7`.`LineasDeTiquet` (
  `id` INT NOT NULL,
  `Descripcio` VARCHAR(255) NULL,
  `CodecProducte` VARCHAR(45) NULL,
  `Unitats` VARCHAR(45) NULL,
  `Descompte` VARCHAR(45) NULL,
  `PreuUnitari` INT NULL,
  `Total` INT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici 7`.`LListaProductes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 7`.`LListaProductes` (
  `id` INT NOT NULL,
  `CodiIntern` VARCHAR(45) NULL,
  `Descripcio` VARCHAR(255) NULL,
  `CodiBarres` VARCHAR(45) NULL,
  `PreuUnitari` VARCHAR(45) NULL,
  `IVA` VARCHAR(45) NULL,
  `PreuVenta` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici 7`.`Client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 7`.`Client` (
  `id` INT NOT NULL,
  `DNI` VARCHAR(9) NULL,
  `Nom` VARCHAR(50) NULL,
  `Cognoms` VARCHAR(100) NULL,
  `Direccio` VARCHAR(45) NULL,
  `Telefon` VARCHAR(13) NULL,
  `Email` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
