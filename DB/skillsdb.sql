-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema skillsdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `skillsdb` ;

-- -----------------------------------------------------
-- Schema skillsdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `skillsdb` DEFAULT CHARACTER SET utf8 ;
USE `skillsdb` ;

-- -----------------------------------------------------
-- Table `user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `user` ;

CREATE TABLE IF NOT EXISTS `user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `enabled` TINYINT NULL DEFAULT 1,
  `role` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `skill`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `skill` ;

CREATE TABLE IF NOT EXISTS `skill` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `description` TEXT NULL,
  `supplies` TEXT NULL,
  `summary` TEXT NULL,
  `prerequisite_skill_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_skill_skill_idx` (`prerequisite_skill_id` ASC),
  CONSTRAINT `fk_skill_skill`
    FOREIGN KEY (`prerequisite_skill_id`)
    REFERENCES `skill` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `requirement`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `requirement` ;

CREATE TABLE IF NOT EXISTS `requirement` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(1000) NOT NULL,
  `description` TEXT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `profile`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `profile` ;

CREATE TABLE IF NOT EXISTS `profile` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `birthday` DATE NOT NULL,
  `login_time` VARCHAR(45) NULL,
  `image_link` VARCHAR(1000) NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_profile_user_idx` (`user_id` ASC),
  CONSTRAINT `fk_profile_user`
    FOREIGN KEY (`user_id`)
    REFERENCES `user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `resource`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `resource` ;

CREATE TABLE IF NOT EXISTS `resource` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `image_link` VARCHAR(1000) NULL,
  `video_link` VARCHAR(1000) NULL,
  `site_link` VARCHAR(1000) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `achievement`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `achievement` ;

CREATE TABLE IF NOT EXISTS `achievement` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `skill_id` INT NOT NULL,
  `profile_id` INT NOT NULL,
  `date_started` DATE NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_skill_has_profile_profile1_idx` (`profile_id` ASC),
  INDEX `fk_skill_has_profile_skill1_idx` (`skill_id` ASC),
  CONSTRAINT `fk_skill_has_profile_skill1`
    FOREIGN KEY (`skill_id`)
    REFERENCES `skill` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_skill_has_profile_profile1`
    FOREIGN KEY (`profile_id`)
    REFERENCES `profile` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `skill_requirement`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `skill_requirement` ;

CREATE TABLE IF NOT EXISTS `skill_requirement` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `requirement_id` INT NOT NULL,
  `skill_id` INT NOT NULL,
  `step_number` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_requirement_has_skill_skill1_idx` (`skill_id` ASC),
  INDEX `fk_requirement_has_skill_requirement1_idx` (`requirement_id` ASC),
  CONSTRAINT `fk_requirement_has_skill_requirement1`
    FOREIGN KEY (`requirement_id`)
    REFERENCES `requirement` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_requirement_has_skill_skill1`
    FOREIGN KEY (`skill_id`)
    REFERENCES `skill` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `skill_resource`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `skill_resource` ;

CREATE TABLE IF NOT EXISTS `skill_resource` (
  `skill_id` INT NOT NULL,
  `resources_id` INT NOT NULL,
  PRIMARY KEY (`skill_id`, `resources_id`),
  INDEX `fk_skill_has_resources_resources1_idx` (`resources_id` ASC),
  INDEX `fk_skill_has_resources_skill1_idx` (`skill_id` ASC),
  CONSTRAINT `fk_skill_has_resources_skill1`
    FOREIGN KEY (`skill_id`)
    REFERENCES `skill` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_skill_has_resources_resources1`
    FOREIGN KEY (`resources_id`)
    REFERENCES `resource` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `achievement_requirement`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `achievement_requirement` ;

CREATE TABLE IF NOT EXISTS `achievement_requirement` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `achievement_id` INT NOT NULL,
  `skill_requirement_id` INT NOT NULL,
  `date_started` INT NULL,
  `date_completed` DATE NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_achievement_requirement_requirement_idx` (`skill_requirement_id` ASC),
  CONSTRAINT `fk_achievement_requirement_achievement`
    FOREIGN KEY (`achievement_id`)
    REFERENCES `achievement` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_achievement_requirement_requirement`
    FOREIGN KEY (`skill_requirement_id`)
    REFERENCES `skill_requirement` (`requirement_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS skilluser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'skilluser'@'localhost' IDENTIFIED BY 'skilluser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'skilluser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `user`
-- -----------------------------------------------------
START TRANSACTION;
USE `skillsdb`;
INSERT INTO `user` (`id`, `username`, `password`, `enabled`, `role`) VALUES (1, 'tester', 'tester', true, NULL);
INSERT INTO `user` (`id`, `username`, `password`, `enabled`, `role`) VALUES (2, 'joe', 'doe', true, NULL);

COMMIT;


-- -----------------------------------------------------
-- Data for table `skill`
-- -----------------------------------------------------
START TRANSACTION;
USE `skillsdb`;
INSERT INTO `skill` (`id`, `name`, `description`, `supplies`, `summary`, `prerequisite_skill_id`) VALUES (1, 'Knots', 'learn how to tie knots', 'rope', 'summary about tying knots', NULL);
INSERT INTO `skill` (`id`, `name`, `description`, `supplies`, `summary`, `prerequisite_skill_id`) VALUES (2, 'Chess', 'learn to play chess', 'chess board', 'summary about playing chess', NULL);

COMMIT;


-- -----------------------------------------------------
-- Data for table `requirement`
-- -----------------------------------------------------
START TRANSACTION;
USE `skillsdb`;
INSERT INTO `requirement` (`id`, `name`, `description`) VALUES (1, 'knot 1', 'Tie one knot');

COMMIT;


-- -----------------------------------------------------
-- Data for table `profile`
-- -----------------------------------------------------
START TRANSACTION;
USE `skillsdb`;
INSERT INTO `profile` (`id`, `user_id`, `name`, `birthday`, `login_time`, `image_link`) VALUES (1, 1, 'testerprofile', '19900222', NULL, NULL);
INSERT INTO `profile` (`id`, `user_id`, `name`, `birthday`, `login_time`, `image_link`) VALUES (2, 2, 'johnprofile', '19900309', NULL, NULL);

COMMIT;


-- -----------------------------------------------------
-- Data for table `resource`
-- -----------------------------------------------------
START TRANSACTION;
USE `skillsdb`;
INSERT INTO `resource` (`id`, `name`, `image_link`, `video_link`, `site_link`) VALUES (1, 'knots', 'http://bit.ly/2kzodli', 'https://www.youtube.com/watch?v=3X8drKsdf5E', 'https://www.animatedknots.com');
INSERT INTO `resource` (`id`, `name`, `image_link`, `video_link`, `site_link`) VALUES (2, 'chess', 'https://upload.wikimedia.org/wikipedia/commons/6/6f/ChessSet.jpg', 'http://bit.ly/2mgRh1j', 'https://learningchess.net/us/index');

COMMIT;


-- -----------------------------------------------------
-- Data for table `achievement`
-- -----------------------------------------------------
START TRANSACTION;
USE `skillsdb`;
INSERT INTO `achievement` (`id`, `skill_id`, `profile_id`, `date_started`) VALUES (1, 1, 1, '20190913');

COMMIT;


-- -----------------------------------------------------
-- Data for table `skill_requirement`
-- -----------------------------------------------------
START TRANSACTION;
USE `skillsdb`;
INSERT INTO `skill_requirement` (`id`, `requirement_id`, `skill_id`, `step_number`) VALUES (DEFAULT, 1, 1, 1);

COMMIT;


-- -----------------------------------------------------
-- Data for table `skill_resource`
-- -----------------------------------------------------
START TRANSACTION;
USE `skillsdb`;
INSERT INTO `skill_resource` (`skill_id`, `resources_id`) VALUES (1, 1);
INSERT INTO `skill_resource` (`skill_id`, `resources_id`) VALUES (2, 2);

COMMIT;


-- -----------------------------------------------------
-- Data for table `achievement_requirement`
-- -----------------------------------------------------
START TRANSACTION;
USE `skillsdb`;
INSERT INTO `achievement_requirement` (`id`, `achievement_id`, `skill_requirement_id`, `date_started`, `date_completed`) VALUES (DEFAULT, 1, 1, 20190913, '20190913');

COMMIT;

