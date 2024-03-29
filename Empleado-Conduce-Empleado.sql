-- MySQL Script generated by MySQL Workbench
-- Tue Feb 27 22:26:14 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema EmpleadoVehiculo3
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `EmpleadoVehiculo3` ;

-- -----------------------------------------------------
-- Schema EmpleadoVehiculo3
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `EmpleadoVehiculo3` DEFAULT CHARACTER SET utf8 ;
USE `EmpleadoVehiculo3` ;

-- -----------------------------------------------------
-- Table `EmpleadoVehiculo3`.`EMPLEADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EmpleadoVehiculo3`.`EMPLEADO` (
  `codemp` INT NOT NULL,
  `nombre` VARCHAR(10) NULL,
  `nombre2` VARCHAR(10) NULL,
  `apellido1` VARCHAR(10) NULL,
  `apellido2` VARCHAR(10) NULL,
  PRIMARY KEY (`codemp`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `EmpleadoVehiculo3`.`VEHICULO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EmpleadoVehiculo3`.`VEHICULO` (
  `matricula` INT NOT NULL,
  `modelo` VARCHAR(45) NULL,
  PRIMARY KEY (`matricula`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `EmpleadoVehiculo3`.`CONDUCE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EmpleadoVehiculo3`.`CONDUCE` (
  `fecha_inicio` INT NULL,
  `EMPLEADO_codemp` INT NOT NULL,
  `VEHICULO_matricula` INT NOT NULL,
  CONSTRAINT `fk_CONDUCE_EMPLEADO`
    FOREIGN KEY (`EMPLEADO_codemp`)
    REFERENCES `EmpleadoVehiculo3`.`EMPLEADO` (`codemp`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_CONDUCE_VEHICULO1`
    FOREIGN KEY (`VEHICULO_matricula`)
    REFERENCES `EmpleadoVehiculo3`.`VEHICULO` (`matricula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_CONDUCE_EMPLEADO_idx` ON `EmpleadoVehiculo3`.`CONDUCE` (`EMPLEADO_codemp` ASC) VISIBLE;

CREATE INDEX `fk_CONDUCE_VEHICULO1_idx` ON `EmpleadoVehiculo3`.`CONDUCE` (`VEHICULO_matricula` ASC) VISIBLE;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
