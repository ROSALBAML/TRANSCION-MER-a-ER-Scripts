-- MySQL Script generated by MySQL Workbench
-- Tue Feb 27 22:43:12 2024
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
-- Table `mydb`.`DEPARTAMENTO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`DEPARTAMENTO` (
  `Cod-Dpto` INT NOT NULL,
  `Nombre-Dpto` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Cod-Dpto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`PROFESOR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`PROFESOR` (
  `nombre` VARCHAR(10) NOT NULL,
  `nombre2` VARCHAR(10) NOT NULL,
  `apellido` VARCHAR(10) NOT NULL,
  `apellido2` VARCHAR(10) NOT NULL,
  `función` VARCHAR(45) NOT NULL,
  `Nif` INT NOT NULL,
  `DEPARTAMENTO_Cod-Dpto` INT NOT NULL,
  PRIMARY KEY (`DEPARTAMENTO_Cod-Dpto`),
  CONSTRAINT `fk_PROFESOR_DEPARTAMENTO`
    FOREIGN KEY (`DEPARTAMENTO_Cod-Dpto`)
    REFERENCES `mydb`.`DEPARTAMENTO` (`Cod-Dpto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
