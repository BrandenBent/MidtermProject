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
  `date_started` DATE NULL,
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
INSERT INTO `user` (`id`, `username`, `password`, `enabled`, `role`) VALUES (1, 'tester', 'tester', true, 'user');
INSERT INTO `user` (`id`, `username`, `password`, `enabled`, `role`) VALUES (2, 'joe', 'doe', true, 'user');
INSERT INTO `user` (`id`, `username`, `password`, `enabled`, `role`) VALUES (3, 'josh', 'josh1', true, 'admin');
INSERT INTO `user` (`id`, `username`, `password`, `enabled`, `role`) VALUES (4, 'branden', 'branden1', true, 'admin');
INSERT INTO `user` (`id`, `username`, `password`, `enabled`, `role`) VALUES (5, 'mark', 'mark1', true, 'admin');

COMMIT;


-- -----------------------------------------------------
-- Data for table `skill`
-- -----------------------------------------------------
START TRANSACTION;
USE `skillsdb`;
INSERT INTO `skill` (`id`, `name`, `description`, `supplies`, `summary`, `prerequisite_skill_id`) VALUES (1, 'Knots', 'Learn how to tie knots', 'rope', 'summary about tying knots', NULL);
INSERT INTO `skill` (`id`, `name`, `description`, `supplies`, `summary`, `prerequisite_skill_id`) VALUES (2, 'Chess', 'Learn to play chess', 'chess board', 'summary about playing chess', NULL);
INSERT INTO `skill` (`id`, `name`, `description`, `supplies`, `summary`, `prerequisite_skill_id`) VALUES (3, 'Tent Setup', 'Learn how to pitch a tent', 'basic tent', 'summary about tent', NULL);
INSERT INTO `skill` (`id`, `name`, `description`, `supplies`, `summary`, `prerequisite_skill_id`) VALUES (4, 'Gardening', 'How set up your first garden', 'dirt, wood, seeds', 'summary about garden', NULL);
INSERT INTO `skill` (`id`, `name`, `description`, `supplies`, `summary`, `prerequisite_skill_id`) VALUES (5, 'Saving Money', 'Learn to save money', 'cash', 'summary about saving cash', NULL);
INSERT INTO `skill` (`id`, `name`, `description`, `supplies`, `summary`, `prerequisite_skill_id`) VALUES (6, 'Laundry', 'Learn to do Laundry', 'dirty clothes', 'summary about laundry', NULL);
INSERT INTO `skill` (`id`, `name`, `description`, `supplies`, `summary`, `prerequisite_skill_id`) VALUES (7, 'Gift wrapping', 'How to wrap a gift', 'wrapping paper, a present', 'summary about gift wrapping', NULL);
INSERT INTO `skill` (`id`, `name`, `description`, `supplies`, `summary`, `prerequisite_skill_id`) VALUES (8, 'Map Reading ', 'How to Read a map', 'map', 'summary about map reading', NULL);
INSERT INTO `skill` (`id`, `name`, `description`, `supplies`, `summary`, `prerequisite_skill_id`) VALUES (9, 'Bake a loaf of bread', 'How to bake a loaf of bread', 'go buy ingredients', 'summary about baking bread', NULL);
INSERT INTO `skill` (`id`, `name`, `description`, `supplies`, `summary`, `prerequisite_skill_id`) VALUES (10, 'Clean your room', 'How to clean your room', 'cleaning cloth, vaccum, trash bad', 'summary about cleaning room', NULL);

COMMIT;


-- -----------------------------------------------------
-- Data for table `requirement`
-- -----------------------------------------------------
START TRANSACTION;
USE `skillsdb`;
INSERT INTO `requirement` (`id`, `name`, `description`) VALUES (1, 'Knot Req 1', 'Tie one knot');
INSERT INTO `requirement` (`id`, `name`, `description`) VALUES (2, 'Knot Req 2', 'Tie one knot');
INSERT INTO `requirement` (`id`, `name`, `description`) VALUES (3, 'Knot Req 3', 'Tie one knot');
INSERT INTO `requirement` (`id`, `name`, `description`) VALUES (4, 'Chess Req 1', 'Chess req');
INSERT INTO `requirement` (`id`, `name`, `description`) VALUES (5, 'Chess Req 2', 'Chess req');
INSERT INTO `requirement` (`id`, `name`, `description`) VALUES (6, 'Chess Req 3', 'Chess req');
INSERT INTO `requirement` (`id`, `name`, `description`) VALUES (7, 'Tent Req 1', 'Tent req');
INSERT INTO `requirement` (`id`, `name`, `description`) VALUES (8, 'Tent Req 2', 'Tent req');
INSERT INTO `requirement` (`id`, `name`, `description`) VALUES (9, 'Tent Req 3', 'Tent req');
INSERT INTO `requirement` (`id`, `name`, `description`) VALUES (10, 'Garden Req 1', 'Garden Req');
INSERT INTO `requirement` (`id`, `name`, `description`) VALUES (11, 'Garden Req 2', 'Garden Req');
INSERT INTO `requirement` (`id`, `name`, `description`) VALUES (12, 'Garden Req 3', 'Garden Req');
INSERT INTO `requirement` (`id`, `name`, `description`) VALUES (13, 'Money Req 1', 'Money Req');
INSERT INTO `requirement` (`id`, `name`, `description`) VALUES (14, 'Money Req 2', 'Money Req');
INSERT INTO `requirement` (`id`, `name`, `description`) VALUES (15, 'Money Req 3', 'Money Req');
INSERT INTO `requirement` (`id`, `name`, `description`) VALUES (16, 'Laundry Req 1', 'Laundry Req');
INSERT INTO `requirement` (`id`, `name`, `description`) VALUES (17, 'Laundry Req 2', 'Laundry Req');
INSERT INTO `requirement` (`id`, `name`, `description`) VALUES (18, 'Laundry Req 3', 'Laundry Req');
INSERT INTO `requirement` (`id`, `name`, `description`) VALUES (19, 'Gift Req 1', 'Gift Req');
INSERT INTO `requirement` (`id`, `name`, `description`) VALUES (20, 'Gift Req 2', 'Gift Req');
INSERT INTO `requirement` (`id`, `name`, `description`) VALUES (21, 'Gift Req 3', 'Gift Req');
INSERT INTO `requirement` (`id`, `name`, `description`) VALUES (22, 'Map Req 1', 'Map Req');
INSERT INTO `requirement` (`id`, `name`, `description`) VALUES (23, 'Map Req 2', 'Map Req');
INSERT INTO `requirement` (`id`, `name`, `description`) VALUES (24, 'Map Req 3', 'Map Req');
INSERT INTO `requirement` (`id`, `name`, `description`) VALUES (25, 'Bread Req 1', 'Bread Req');
INSERT INTO `requirement` (`id`, `name`, `description`) VALUES (26, 'Bread Req 2', 'Bread Req');
INSERT INTO `requirement` (`id`, `name`, `description`) VALUES (27, 'Bread Req 3', 'Bread Req');
INSERT INTO `requirement` (`id`, `name`, `description`) VALUES (28, 'Cleaning Req 1', 'Cleaning Req');
INSERT INTO `requirement` (`id`, `name`, `description`) VALUES (29, 'Cleaning Req 2', 'Cleaning Req');
INSERT INTO `requirement` (`id`, `name`, `description`) VALUES (30, 'Cleaning Req 3', 'Cleaning Req');

COMMIT;


-- -----------------------------------------------------
-- Data for table `profile`
-- -----------------------------------------------------
START TRANSACTION;
USE `skillsdb`;
INSERT INTO `profile` (`id`, `user_id`, `name`, `birthday`, `login_time`, `image_link`) VALUES (1, 1, 'testerprofile', '19900222', NULL, NULL);
INSERT INTO `profile` (`id`, `user_id`, `name`, `birthday`, `login_time`, `image_link`) VALUES (2, 2, 'johnprofile', '19900309', NULL, NULL);
INSERT INTO `profile` (`id`, `user_id`, `name`, `birthday`, `login_time`, `image_link`) VALUES (3, 3, 'joshprofile', '19780307', NULL, NULL);
INSERT INTO `profile` (`id`, `user_id`, `name`, `birthday`, `login_time`, `image_link`) VALUES (4, 4, 'brandenprofile', '19960608', NULL, NULL);
INSERT INTO `profile` (`id`, `user_id`, `name`, `birthday`, `login_time`, `image_link`) VALUES (5, 5, 'markprofile', '19820222', NULL, NULL);

COMMIT;


-- -----------------------------------------------------
-- Data for table `resource`
-- -----------------------------------------------------
START TRANSACTION;
USE `skillsdb`;
INSERT INTO `resource` (`id`, `name`, `image_link`, `video_link`, `site_link`) VALUES (1, 'Knots', 'http://bit.ly/2kzodli', 'https://www.youtube.com/watch?v=3X8drKsdf5E', 'https://www.animatedknots.com');
INSERT INTO `resource` (`id`, `name`, `image_link`, `video_link`, `site_link`) VALUES (2, 'Chess', 'https://upload.wikimedia.org/wikipedia/commons/6/6f/ChessSet.jpg', 'http://bit.ly/2mgRh1j', 'https://learningchess.net/us/index');
INSERT INTO `resource` (`id`, `name`, `image_link`, `video_link`, `site_link`) VALUES (3, 'Tent Setup', 'http://bit.ly/2NfAGaw', 'http://bit.ly/2USYhyr', 'http://bit.ly/2Ne1kAe');
INSERT INTO `resource` (`id`, `name`, `image_link`, `video_link`, `site_link`) VALUES (4, 'Gardening', 'http://bit.ly/2NedpFF', 'http://bit.ly/2NjtPwJ', 'http://bit.ly/2NdHkxY');
INSERT INTO `resource` (`id`, `name`, `image_link`, `video_link`, `site_link`) VALUES (5, 'Saving Money', 'http://bit.ly/2Ndc0zi', 'http://bit.ly/2USsgqp', 'http://bit.ly/2NcGSQz');
INSERT INTO `resource` (`id`, `name`, `image_link`, `video_link`, `site_link`) VALUES (6, 'Laundry', 'http://bit.ly/2LvQDXK & http://bit.ly/32MNiJV', 'http://bit.ly/2LvQDXK', 'http://bit.ly/32Nm2L1');
INSERT INTO `resource` (`id`, `name`, `image_link`, `video_link`, `site_link`) VALUES (7, 'Gift wrapping', 'http://bit.ly/32G6HvV', 'http://bit.ly/32JC092', 'http://bit.ly/32HLrpv');
INSERT INTO `resource` (`id`, `name`, `image_link`, `video_link`, `site_link`) VALUES (8, 'Map Reading', 'http://bit.ly/32Pd54d', 'http://bit.ly/32JHUqU', 'http://bit.ly/2LA7VDr');
INSERT INTO `resource` (`id`, `name`, `image_link`, `video_link`, `site_link`) VALUES (9, 'Baking bread', 'http://bit.ly/2kKQcOR', 'http://bit.ly/32Ll3v3', 'https://foodlets.com/2018/10/22/the-easy-bread-recipe-your-kids-can-make-themselves/');
INSERT INTO `resource` (`id`, `name`, `image_link`, `video_link`, `site_link`) VALUES (10, 'Clean your room', ' http://bit.ly/2kO2hmr', 'http://bit.ly/2LvxDsA', 'https://www.mollymaid.com/cleaning-tips/kids-rooms/');

COMMIT;


-- -----------------------------------------------------
-- Data for table `achievement`
-- -----------------------------------------------------
START TRANSACTION;
USE `skillsdb`;
INSERT INTO `achievement` (`id`, `skill_id`, `profile_id`, `date_started`) VALUES (1, 1, 1, '20190913');
INSERT INTO `achievement` (`id`, `skill_id`, `profile_id`, `date_started`) VALUES (2, 2, 1, '20190914');
INSERT INTO `achievement` (`id`, `skill_id`, `profile_id`, `date_started`) VALUES (3, 3, 1, '20190915');
INSERT INTO `achievement` (`id`, `skill_id`, `profile_id`, `date_started`) VALUES (4, 6, 2, '20190914');
INSERT INTO `achievement` (`id`, `skill_id`, `profile_id`, `date_started`) VALUES (5, 8, 3, '20190915');
INSERT INTO `achievement` (`id`, `skill_id`, `profile_id`, `date_started`) VALUES (6, 10, 4, '20190914');
INSERT INTO `achievement` (`id`, `skill_id`, `profile_id`, `date_started`) VALUES (7, 8, 5, '20190915');

COMMIT;


-- -----------------------------------------------------
-- Data for table `skill_requirement`
-- -----------------------------------------------------
START TRANSACTION;
USE `skillsdb`;
INSERT INTO `skill_requirement` (`id`, `requirement_id`, `skill_id`, `step_number`) VALUES (1, 1, 1, 1);
INSERT INTO `skill_requirement` (`id`, `requirement_id`, `skill_id`, `step_number`) VALUES (2, 2, 1, 2);
INSERT INTO `skill_requirement` (`id`, `requirement_id`, `skill_id`, `step_number`) VALUES (3, 3, 1, 3);
INSERT INTO `skill_requirement` (`id`, `requirement_id`, `skill_id`, `step_number`) VALUES (4, 4, 2, 1);
INSERT INTO `skill_requirement` (`id`, `requirement_id`, `skill_id`, `step_number`) VALUES (5, 5, 2, 2);
INSERT INTO `skill_requirement` (`id`, `requirement_id`, `skill_id`, `step_number`) VALUES (6, 6, 2, 3);
INSERT INTO `skill_requirement` (`id`, `requirement_id`, `skill_id`, `step_number`) VALUES (7, 7, 3, 1);
INSERT INTO `skill_requirement` (`id`, `requirement_id`, `skill_id`, `step_number`) VALUES (8, 8, 3, 2);
INSERT INTO `skill_requirement` (`id`, `requirement_id`, `skill_id`, `step_number`) VALUES (9, 9, 3, 3);
INSERT INTO `skill_requirement` (`id`, `requirement_id`, `skill_id`, `step_number`) VALUES (10, 10, 4, 1);
INSERT INTO `skill_requirement` (`id`, `requirement_id`, `skill_id`, `step_number`) VALUES (11, 11, 4, 2);
INSERT INTO `skill_requirement` (`id`, `requirement_id`, `skill_id`, `step_number`) VALUES (12, 12, 4, 3);
INSERT INTO `skill_requirement` (`id`, `requirement_id`, `skill_id`, `step_number`) VALUES (13, 13, 5, 1);
INSERT INTO `skill_requirement` (`id`, `requirement_id`, `skill_id`, `step_number`) VALUES (14, 14, 5, 2);
INSERT INTO `skill_requirement` (`id`, `requirement_id`, `skill_id`, `step_number`) VALUES (15, 15, 5, 3);
INSERT INTO `skill_requirement` (`id`, `requirement_id`, `skill_id`, `step_number`) VALUES (16, 16, 6, 1);
INSERT INTO `skill_requirement` (`id`, `requirement_id`, `skill_id`, `step_number`) VALUES (17, 17, 6, 2);
INSERT INTO `skill_requirement` (`id`, `requirement_id`, `skill_id`, `step_number`) VALUES (18, 18, 6, 3);
INSERT INTO `skill_requirement` (`id`, `requirement_id`, `skill_id`, `step_number`) VALUES (19, 19, 7, 1);
INSERT INTO `skill_requirement` (`id`, `requirement_id`, `skill_id`, `step_number`) VALUES (20, 20, 7, 2);
INSERT INTO `skill_requirement` (`id`, `requirement_id`, `skill_id`, `step_number`) VALUES (21, 21, 7, 3);
INSERT INTO `skill_requirement` (`id`, `requirement_id`, `skill_id`, `step_number`) VALUES (22, 22, 8, 1);
INSERT INTO `skill_requirement` (`id`, `requirement_id`, `skill_id`, `step_number`) VALUES (23, 23, 8, 2);
INSERT INTO `skill_requirement` (`id`, `requirement_id`, `skill_id`, `step_number`) VALUES (24, 24, 8, 3);
INSERT INTO `skill_requirement` (`id`, `requirement_id`, `skill_id`, `step_number`) VALUES (25, 25, 9, 1);
INSERT INTO `skill_requirement` (`id`, `requirement_id`, `skill_id`, `step_number`) VALUES (26, 26, 9, 2);
INSERT INTO `skill_requirement` (`id`, `requirement_id`, `skill_id`, `step_number`) VALUES (27, 27, 9, 3);
INSERT INTO `skill_requirement` (`id`, `requirement_id`, `skill_id`, `step_number`) VALUES (28, 28, 10, 1);
INSERT INTO `skill_requirement` (`id`, `requirement_id`, `skill_id`, `step_number`) VALUES (29, 29, 10, 2);
INSERT INTO `skill_requirement` (`id`, `requirement_id`, `skill_id`, `step_number`) VALUES (30, 30, 10, 3);

COMMIT;


-- -----------------------------------------------------
-- Data for table `skill_resource`
-- -----------------------------------------------------
START TRANSACTION;
USE `skillsdb`;
INSERT INTO `skill_resource` (`skill_id`, `resources_id`) VALUES (1, 1);
INSERT INTO `skill_resource` (`skill_id`, `resources_id`) VALUES (2, 2);
INSERT INTO `skill_resource` (`skill_id`, `resources_id`) VALUES (3, 3);
INSERT INTO `skill_resource` (`skill_id`, `resources_id`) VALUES (4, 4);
INSERT INTO `skill_resource` (`skill_id`, `resources_id`) VALUES (5, 5);
INSERT INTO `skill_resource` (`skill_id`, `resources_id`) VALUES (6, 6);
INSERT INTO `skill_resource` (`skill_id`, `resources_id`) VALUES (7, 7);
INSERT INTO `skill_resource` (`skill_id`, `resources_id`) VALUES (8, 8);
INSERT INTO `skill_resource` (`skill_id`, `resources_id`) VALUES (9, 9);
INSERT INTO `skill_resource` (`skill_id`, `resources_id`) VALUES (10, 10);

COMMIT;


-- -----------------------------------------------------
-- Data for table `achievement_requirement`
-- -----------------------------------------------------
START TRANSACTION;
USE `skillsdb`;
INSERT INTO `achievement_requirement` (`id`, `achievement_id`, `skill_requirement_id`, `date_started`, `date_completed`) VALUES (1, 1, 1, '20190913', '20190913');
INSERT INTO `achievement_requirement` (`id`, `achievement_id`, `skill_requirement_id`, `date_started`, `date_completed`) VALUES (2, 1, 2, '20190913', '20190913');
INSERT INTO `achievement_requirement` (`id`, `achievement_id`, `skill_requirement_id`, `date_started`, `date_completed`) VALUES (3, 1, 3, '20190913', '20190913');
INSERT INTO `achievement_requirement` (`id`, `achievement_id`, `skill_requirement_id`, `date_started`, `date_completed`) VALUES (4, 2, 4, '20190914', '20190915');
INSERT INTO `achievement_requirement` (`id`, `achievement_id`, `skill_requirement_id`, `date_started`, `date_completed`) VALUES (5, 2, 5, '20190915', NULL);
INSERT INTO `achievement_requirement` (`id`, `achievement_id`, `skill_requirement_id`, `date_started`, `date_completed`) VALUES (6, 2, 6, '20190916', NULL);
INSERT INTO `achievement_requirement` (`id`, `achievement_id`, `skill_requirement_id`, `date_started`, `date_completed`) VALUES (7, 3, 7, '20190914', '20190915');
INSERT INTO `achievement_requirement` (`id`, `achievement_id`, `skill_requirement_id`, `date_started`, `date_completed`) VALUES (8, 3, 8, '20190914', '20190915');
INSERT INTO `achievement_requirement` (`id`, `achievement_id`, `skill_requirement_id`, `date_started`, `date_completed`) VALUES (9, 3, 9, '20190914', '20190915');
INSERT INTO `achievement_requirement` (`id`, `achievement_id`, `skill_requirement_id`, `date_started`, `date_completed`) VALUES (10, 4, 10, '20190914', '20190916');
INSERT INTO `achievement_requirement` (`id`, `achievement_id`, `skill_requirement_id`, `date_started`, `date_completed`) VALUES (11, 4, 11, '20190914', '20190916');
INSERT INTO `achievement_requirement` (`id`, `achievement_id`, `skill_requirement_id`, `date_started`, `date_completed`) VALUES (12, 4, 12, '20190914', '20190916');
INSERT INTO `achievement_requirement` (`id`, `achievement_id`, `skill_requirement_id`, `date_started`, `date_completed`) VALUES (13, 5, 13, '20190915', '20190916');
INSERT INTO `achievement_requirement` (`id`, `achievement_id`, `skill_requirement_id`, `date_started`, `date_completed`) VALUES (14, 5, 14, '20190915', NULL);
INSERT INTO `achievement_requirement` (`id`, `achievement_id`, `skill_requirement_id`, `date_started`, `date_completed`) VALUES (15, 5, 15, '20190915', NULL);
INSERT INTO `achievement_requirement` (`id`, `achievement_id`, `skill_requirement_id`, `date_started`, `date_completed`) VALUES (16, 6, 16, '20190915', '20190916');
INSERT INTO `achievement_requirement` (`id`, `achievement_id`, `skill_requirement_id`, `date_started`, `date_completed`) VALUES (17, 6, 17, '20190915', NULL);
INSERT INTO `achievement_requirement` (`id`, `achievement_id`, `skill_requirement_id`, `date_started`, `date_completed`) VALUES (18, 6, 18, '20190915', NULL);
INSERT INTO `achievement_requirement` (`id`, `achievement_id`, `skill_requirement_id`, `date_started`, `date_completed`) VALUES (19, 7, 19, '20190914', '20190916');
INSERT INTO `achievement_requirement` (`id`, `achievement_id`, `skill_requirement_id`, `date_started`, `date_completed`) VALUES (20, 7, 20, '20190914', '20190916');
INSERT INTO `achievement_requirement` (`id`, `achievement_id`, `skill_requirement_id`, `date_started`, `date_completed`) VALUES (21, 7, 21, '20190914', '20190916');

COMMIT;

