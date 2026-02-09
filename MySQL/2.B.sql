-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Exercici 2.B
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Exercici 2.B
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Exercici 2.B` ;
USE `Exercici 2.B` ;

-- -----------------------------------------------------
-- Table `Exercici 2.B`.`Cine`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 2.B`.`Cine` (
  `id` INT NOT NULL,
  `Nom` VARCHAR(45) NOT NULL,
  `Direccio` VARCHAR(255) NULL,
  `Telefon` VARCHAR(13) NULL,
  `Ciutat` VARCHAR(100) NULL,
  `NumeroSalas` INT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici 2.B`.`Pelicula`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 2.B`.`Pelicula` (
  `id` INT NOT NULL,
  `Titol` VARCHAR(100) NOT NULL,
  `Clasificacio` VARCHAR(45) NULL,
  `Genere` VARCHAR(100) NULL,
  `Director` VARCHAR(255) NULL,
  `Duracio` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici 2.B`.`Projeccio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 2.B`.`Projeccio` (
  `id` INT NOT NULL,
  `Data` VARCHAR(45) NULL,
  `Hora` VARCHAR(45) NULL,
  `Sala` VARCHAR(45) NULL,
  `Cine_id` INT NOT NULL,
  `Pelicula_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Projeccio_Cine_idx` (`Cine_id` ASC) VISIBLE,
  INDEX `fk_Projeccio_Pelicula1_idx` (`Pelicula_id` ASC) VISIBLE,
  CONSTRAINT `fk_Projeccio_Cine`
    FOREIGN KEY (`Cine_id`)
    REFERENCES `Exercici 2.B`.`Cine` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Projeccio_Pelicula1`
    FOREIGN KEY (`Pelicula_id`)
    REFERENCES `Exercici 2.B`.`Pelicula` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici 2.B`.`Tarifa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 2.B`.`Tarifa` (
  `id` INT NOT NULL,
  `Nom` VARCHAR(45) NOT NULL,
  `Descripcio` VARCHAR(255) NULL,
  `Preu` INT NULL,
  `Projeccio_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_Tarifa_Projeccio1_idx` (`Projeccio_id` ASC) VISIBLE,
  CONSTRAINT `fk_Tarifa_Projeccio1`
    FOREIGN KEY (`Projeccio_id`)
    REFERENCES `Exercici 2.B`.`Projeccio` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
