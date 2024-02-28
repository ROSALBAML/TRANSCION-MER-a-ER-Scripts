-- MySQL Script generated by MySQL Workbench
-- Tue Feb 27 22:30:32 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`EMPLEADO-EMPLEADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`EMPLEADO-EMPLEADO` (
  `Nif` VARCHAR(20) NOT NULL,
  `Departamento` VARCHAR(50) NULL,
  `Nif_tieneResponsable` VARCHAR(50) NULL,
  PRIMARY KEY (`Nif`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`EMPLEADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`EMPLEADO` (
  `Nif` VARCHAR(20) NOT NULL,
  `Nombre` VARCHAR(10) NULL,
  `Nombre 2` VARCHAR(10) NULL,
  `Apellido 1` VARCHAR(10) NULL,
  `Apellido 2` VARCHAR(10) NULL,
  `EMPLEADO-EMPLEADO_Nif` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`Nif`, `EMPLEADO-EMPLEADO_Nif`),
  CONSTRAINT `fk_EMPLEADO_EMPLEADO-EMPLEADO`
    FOREIGN KEY (`EMPLEADO-EMPLEADO_Nif`)
    REFERENCES `mydb`.`EMPLEADO-EMPLEADO` (`Nif`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_EMPLEADO_EMPLEADO-EMPLEADO_idx` ON `mydb`.`EMPLEADO` (`EMPLEADO-EMPLEADO_Nif` ASC) VISIBLE;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
