-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Exercici 6
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Exercici 6
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Exercici 6` ;
USE `Exercici 6` ;

-- -----------------------------------------------------
-- Table `Exercici 6`.`Avio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 6`.`Avio` (
  `id` INT NOT NULL,
  `Identificador` VARCHAR(45) NULL,
  `Model` VARCHAR(45) NULL,
  `Capacitat` INT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici 6`.`Vols`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 6`.`Vols` (
  `id` INT NOT NULL,
  `Numerovol` VARCHAR(45) NULL,
  `ModelAvio` VARCHAR(45) NULL,
  `Origen` VARCHAR(45) NULL,
  `Desti` VARCHAR(45) NULL,
  `DataSortida` VARCHAR(45) NULL,
  `DataArrivada` VARCHAR(45) NULL,
  `HoraSortida` VARCHAR(45) NULL,
  `HoraArribada` VARCHAR(45) NULL,
  `Avio_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_Vols_Avio_idx` (`Avio_id` ASC) VISIBLE,
  CONSTRAINT `fk_Vols_Avio`
    FOREIGN KEY (`Avio_id`)
    REFERENCES `Exercici 6`.`Avio` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici 6`.`Pasatgers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 6`.`Pasatgers` (
  `id` INT NOT NULL,
  `Nom` VARCHAR(45) NOT NULL,
  `Cognoms` VARCHAR(100) NULL,
  `DNI` VARCHAR(9) NULL,
  `Pasaport` VARCHAR(15) NULL,
  `Telefon` VARCHAR(13) NULL,
  `Email` VARCHAR(100) NULL,
  `Adreça` VARCHAR(100) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici 6`.`Reserva`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 6`.`Reserva` (
  `id` INT NOT NULL,
  `Identificadors` VARCHAR(45) NULL,
  `Pasatgers` VARCHAR(45) NULL,
  `NumVol` VARCHAR(45) NULL,
  `DataReserva` VARCHAR(45) NULL,
  `Import` VARCHAR(45) NULL,
  `Pasatgers_id` INT NOT NULL,
  `Vols_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_Reserva_Pasatgers1_idx` (`Pasatgers_id` ASC) VISIBLE,
  INDEX `fk_Reserva_Vols1_idx` (`Vols_id` ASC) VISIBLE,
  CONSTRAINT `fk_Reserva_Pasatgers1`
    FOREIGN KEY (`Pasatgers_id`)
    REFERENCES `Exercici 6`.`Pasatgers` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Reserva_Vols1`
    FOREIGN KEY (`Vols_id`)
    REFERENCES `Exercici 6`.`Vols` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
