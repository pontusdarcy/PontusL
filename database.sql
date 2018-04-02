-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema PontusL
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema PontusL
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `PontusL` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci ;
USE `PontusL` ;

-- -----------------------------------------------------
-- Table `PontusL`.`addresses`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PontusL`.`addresses` (
  `addressID` INT NOT NULL AUTO_INCREMENT,
  `streetAddress` VARCHAR(45) NULL,
  `postalCode` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  PRIMARY KEY (`addressID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PontusL`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PontusL`.`customers` (
  `customerID` INT NOT NULL AUTO_INCREMENT,
  `firstName` VARCHAR(45) NULL,
  `lastName` VARCHAR(45) NULL,
  `birthday` DATE NULL,
  `email` VARCHAR(45) NULL,
  `phone` VARCHAR(45) NULL,
  `addressID` INT NOT NULL,
  PRIMARY KEY (`customerID`),
  INDEX `fk_customers_addresses1_idx` (`addressID` ASC),
  CONSTRAINT `fk_customers_addresses1`
    FOREIGN KEY (`addressID`)
    REFERENCES `PontusL`.`addresses` (`addressID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PontusL`.`employees`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PontusL`.`employees` (
  `employeeID` INT NOT NULL AUTO_INCREMENT,
  `firstName` VARCHAR(45) NULL,
  `lastName` VARCHAR(45) NULL,
  `phone` VARCHAR(45) NULL,
  `addressID` INT NOT NULL,
  PRIMARY KEY (`employeeID`),
  INDEX `fk_employees_addresses1_idx` (`addressID` ASC),
  CONSTRAINT `fk_employees_addresses1`
    FOREIGN KEY (`addressID`)
    REFERENCES `PontusL`.`addresses` (`addressID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PontusL`.`salaries`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PontusL`.`salaries` (
  `salaryID` INT NOT NULL AUTO_INCREMENT,
  `employeeID` INT NOT NULL,
  `amount` DOUBLE NULL,
  `startDate` DATE NULL,
  `endDate` DATE NULL,
  PRIMARY KEY (`salaryID`),
  INDEX `fk_salaries_employees1_idx` (`employeeID` ASC),
  CONSTRAINT `fk_salaries_employees1`
    FOREIGN KEY (`employeeID`)
    REFERENCES `PontusL`.`employees` (`employeeID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PontusL`.`movies`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PontusL`.`movies` (
  `movieID` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NULL,
  `length` INT NULL,
  `releaseDate` DATE NULL,
  PRIMARY KEY (`movieID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PontusL`.`copies`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PontusL`.`copies` (
  `copyID` INT NOT NULL AUTO_INCREMENT,
  `movieID` INT NOT NULL,
  `format` ENUM('BLU-RAY', 'DVD') NULL,
  PRIMARY KEY (`copyID`),
  INDEX `fk_copies_movies1_idx` (`movieID` ASC),
  CONSTRAINT `fk_copies_movies1`
    FOREIGN KEY (`movieID`)
    REFERENCES `PontusL`.`movies` (`movieID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PontusL`.`directors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PontusL`.`directors` (
  `directorID` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `birthday` DATE NULL,
  `deathday` DATE NULL,
  PRIMARY KEY (`directorID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PontusL`.`rented`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PontusL`.`rented` (
  `rentingID` INT NOT NULL AUTO_INCREMENT,
  `copyID` INT NOT NULL,
  `customerID` INT NOT NULL,
  `employeeID` INT NOT NULL,
  `rentDate` DATE NULL,
  `dueDate` DATE NULL,
  `comment` ENUM('LATE', 'ON TIME') NULL,
  PRIMARY KEY (`rentingID`),
  INDEX `fk_rented_copies1_idx` (`copyID` ASC),
  INDEX `fk_rented_customers1_idx` (`customerID` ASC),
  INDEX `fk_rented_employees1_idx` (`employeeID` ASC),
  CONSTRAINT `fk_rented_copies1`
    FOREIGN KEY (`copyID`)
    REFERENCES `PontusL`.`copies` (`copyID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_rented_customers1`
    FOREIGN KEY (`customerID`)
    REFERENCES `PontusL`.`customers` (`customerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_rented_employees1`
    FOREIGN KEY (`employeeID`)
    REFERENCES `PontusL`.`employees` (`employeeID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PontusL`.`genres`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PontusL`.`genres` (
  `genreID` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`genreID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PontusL`.`actors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PontusL`.`actors` (
  `actorID` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `brithday` DATE NULL,
  `deathday` DATE NULL,
  PRIMARY KEY (`actorID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PontusL`.`countries`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PontusL`.`countries` (
  `countryID` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`countryID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PontusL`.`awards`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PontusL`.`awards` (
  `awardID` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`awardID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PontusL`.`movies_has_directors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PontusL`.`movies_has_directors` (
  `movieID` INT NOT NULL,
  `directorID` INT NOT NULL,
  PRIMARY KEY (`movieID`, `directorID`),
  INDEX `fk_movies_has_directors_directors1_idx` (`directorID` ASC),
  INDEX `fk_movies_has_directors_movies1_idx` (`movieID` ASC),
  CONSTRAINT `fk_movies_has_directors_movies1`
    FOREIGN KEY (`movieID`)
    REFERENCES `PontusL`.`movies` (`movieID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_movies_has_directors_directors1`
    FOREIGN KEY (`directorID`)
    REFERENCES `PontusL`.`directors` (`directorID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PontusL`.`movies_has_genres`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PontusL`.`movies_has_genres` (
  `movieID` INT NOT NULL,
  `genreID` INT NOT NULL,
  PRIMARY KEY (`movieID`, `genreID`),
  INDEX `fk_movies_has_genres_genres1_idx` (`genreID` ASC),
  INDEX `fk_movies_has_genres_movies1_idx` (`movieID` ASC),
  CONSTRAINT `fk_movies_has_genres_movies1`
    FOREIGN KEY (`movieID`)
    REFERENCES `PontusL`.`movies` (`movieID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_movies_has_genres_genres1`
    FOREIGN KEY (`genreID`)
    REFERENCES `PontusL`.`genres` (`genreID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PontusL`.`movies_has_awards`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PontusL`.`movies_has_awards` (
  `movieID` INT NOT NULL,
  `awardID` INT NOT NULL,
  PRIMARY KEY (`movieID`, `awardID`),
  INDEX `fk_movies_has_awards_awards1_idx` (`awardID` ASC),
  INDEX `fk_movies_has_awards_movies1_idx` (`movieID` ASC),
  CONSTRAINT `fk_movies_has_awards_movies1`
    FOREIGN KEY (`movieID`)
    REFERENCES `PontusL`.`movies` (`movieID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_movies_has_awards_awards1`
    FOREIGN KEY (`awardID`)
    REFERENCES `PontusL`.`awards` (`awardID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PontusL`.`movies_has_actors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PontusL`.`movies_has_actors` (
  `movieID` INT NOT NULL,
  `actorID` INT NOT NULL,
  PRIMARY KEY (`movieID`, `actorID`),
  INDEX `fk_movies_has_actors_actors1_idx` (`actorID` ASC),
  INDEX `fk_movies_has_actors_movies1_idx` (`movieID` ASC),
  CONSTRAINT `fk_movies_has_actors_movies1`
    FOREIGN KEY (`movieID`)
    REFERENCES `PontusL`.`movies` (`movieID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_movies_has_actors_actors1`
    FOREIGN KEY (`actorID`)
    REFERENCES `PontusL`.`actors` (`actorID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PontusL`.`movies_has_countries`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PontusL`.`movies_has_countries` (
  `movies_movieID` INT NOT NULL,
  `countries_countryID` INT NOT NULL,
  PRIMARY KEY (`movies_movieID`, `countries_countryID`),
  INDEX `fk_movies_has_countries_countries1_idx` (`countries_countryID` ASC),
  INDEX `fk_movies_has_countries_movies1_idx` (`movies_movieID` ASC),
  CONSTRAINT `fk_movies_has_countries_movies1`
    FOREIGN KEY (`movies_movieID`)
    REFERENCES `PontusL`.`movies` (`movieID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_movies_has_countries_countries1`
    FOREIGN KEY (`countries_countryID`)
    REFERENCES `PontusL`.`countries` (`countryID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
