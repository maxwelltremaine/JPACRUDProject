-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema cooking_crimes_db
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `cooking_crimes_db` ;

-- -----------------------------------------------------
-- Schema cooking_crimes_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cooking_crimes_db` DEFAULT CHARACTER SET utf8 ;
USE `cooking_crimes_db` ;

-- -----------------------------------------------------
-- Table `cooking_crime`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cooking_crime` ;

CREATE TABLE IF NOT EXISTS `cooking_crime` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `food` VARCHAR(100) NULL,
  `nickname` VARCHAR(45) NULL,
  `description` TEXT NULL,
  `recipe` TEXT NULL,
  `level_of_crime` VARCHAR(45) NULL,
  `overall_cost` DECIMAL(4,2) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS chef@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'chef'@'localhost' IDENTIFIED BY 'chef';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'chef'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `cooking_crime`
-- -----------------------------------------------------
START TRANSACTION;
USE `cooking_crimes_db`;
INSERT INTO `cooking_crime` (`id`, `food`, `nickname`, `description`, `recipe`, `level_of_crime`, `overall_cost`) VALUES (1, 'jello surprise', 'nightmare', 'nightmares', 'jello', 'war crime', 12.99);

COMMIT;

