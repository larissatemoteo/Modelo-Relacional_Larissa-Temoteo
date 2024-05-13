-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'user'
-- 
-- ---

DROP TABLE IF EXISTS `user`;
		
CREATE TABLE `user` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `name` VARCHAR(50) NULL DEFAULT NULL,
  `email` VARCHAR(50) NULL DEFAULT NULL,
  `password` VARCHAR(25) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'user_forms'
-- 
-- ---

DROP TABLE IF EXISTS `user_forms`;
		
CREATE TABLE `user_forms` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `social_name` VARCHAR(30) NULL DEFAULT NULL,
  `email` VARCHAR(50) NULL DEFAULT NULL,
  `cellphone` INTEGER NULL DEFAULT NULL,
  `first_name` VARCHAR(30) NULL DEFAULT NULL,
  `last_name` VARCHAR(30) NULL DEFAULT NULL,
  `id_users` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'general_forms'
-- 
-- ---

DROP TABLE IF EXISTS `general_forms`;
		
CREATE TABLE `general_forms` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `age` INTEGER NULL DEFAULT NULL,
  `gender` VARCHAR(30) NULL DEFAULT NULL,
  `education` VARCHAR(30) NULL DEFAULT NULL,
  `type_of_housing` VARCHAR(30) NULL DEFAULT NULL,
  `family_constitution` VARCHAR(50) NULL DEFAULT NULL,
  `home_income` DECIMAL NULL DEFAULT NULL,
  `residents` INTEGER NULL DEFAULT NULL,
  `address` VARCHAR(30) NULL DEFAULT NULL,
  `typo_of_forms` VARCHAR(30) NULL DEFAULT NULL,
  `id_users` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'forms_had_dogs'
-- 
-- ---

DROP TABLE IF EXISTS `forms_had_dogs`;
		
CREATE TABLE `forms_had_dogs` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `dogs_name` VARCHAR(30) NULL DEFAULT NULL,
  `who_belonged` VARCHAR(30) NULL DEFAULT NULL,
  `dog_personality` VARCHAR(50) NULL DEFAULT NULL,
  `duration_time` INTEGER NULL DEFAULT NULL,
  `first_dog` VARCHAR(10) NULL DEFAULT NULL,
  `are_others_pets` VARCHAR(30) NULL DEFAULT NULL,
  `pet_age` INTEGER NULL DEFAULT NULL,
  `castrated` VARCHAR(30) NULL DEFAULT NULL,
  `when_castred` INTEGER NULL DEFAULT NULL,
  `breed` VARCHAR(30) NULL DEFAULT NULL,
  `where_came_from` VARCHAR(30) NULL DEFAULT NULL,
  `price` DECIMAL NULL DEFAULT NULL,
  `motivation` VARCHAR(30) NULL DEFAULT NULL,
  `characteristics` VARCHAR(50) NULL DEFAULT NULL,
  `who_decided` VARCHAR(30) NULL DEFAULT NULL,
  `most_like` VARCHAR(50) NULL DEFAULT NULL,
  `dont_like` VARCHAR(30) NULL DEFAULT NULL,
  `vet` VARCHAR(10) NULL DEFAULT NULL,
  `vet_motivation` VARCHAR(50) NULL DEFAULT NULL,
  `stopped_living` VARCHAR(30) NULL DEFAULT NULL,
  `age_dog_was` VARCHAR(30) NULL DEFAULT NULL,
  `reason_for_disconnection` VARCHAR(50) NULL DEFAULT NULL,
  `id_users` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'forms_have_dogs'
-- 
-- ---

DROP TABLE IF EXISTS `forms_have_dogs`;
		
CREATE TABLE `forms_have_dogs` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `dog_name` VARCHAR(30) NULL DEFAULT NULL,
  `gender` VARCHAR(20) NULL DEFAULT NULL,
  `who_belongs` VARCHAR(20) NULL DEFAULT NULL,
  `castreted` VARCHAR(10) NULL DEFAULT NULL,
  `dog_age` INTEGER NULL DEFAULT NULL,
  `first_dog` VARCHAR(30) NULL DEFAULT NULL,
  `have_others_pets` INTEGER NULL DEFAULT NULL,
  `age_dog` INTEGER NULL DEFAULT NULL,
  `breed` VARCHAR(20) NULL DEFAULT NULL,
  `where_got` VARCHAR(30) NULL DEFAULT NULL,
  `pride` DECIMAL NULL DEFAULT NULL,
  `dog_age_arrived` INTEGER NULL DEFAULT NULL,
  `dog_personality` VARCHAR(30) NULL DEFAULT NULL,
  `motivation` VARCHAR(80) NULL DEFAULT NULL,
  `characteristics` VARCHAR(50) NULL DEFAULT NULL,
  `couldn't_keep` VARCHAR(30) NULL DEFAULT NULL,
  `vet` VARCHAR(10) NULL DEFAULT NULL,
  `about` VARCHAR(50) NULL DEFAULT NULL,
  `id_users` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'forms_want_dogs'
-- 
-- ---

DROP TABLE IF EXISTS `forms_want_dogs`;
		
CREATE TABLE `forms_want_dogs` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `dog_size` VARCHAR(10) NULL DEFAULT NULL,
  `dog_coat` VARCHAR(10) NULL DEFAULT NULL,
  `dog_color` VARCHAR(20) NULL DEFAULT NULL,
  `dog_gender` VARCHAR(10) NULL DEFAULT NULL,
  `dog_age` INTEGER NULL DEFAULT NULL,
  `brred` VARCHAR(20) NULL DEFAULT NULL,
  `why` VARCHAR(30) NULL DEFAULT NULL,
  `name` VARCHAR(30) NULL DEFAULT NULL,
  `intend_to_buy` VARCHAR(10) NULL DEFAULT NULL,
  `when_have` VARCHAR(10) NULL DEFAULT NULL,
  ` which_personality` VARCHAR(100) NULL DEFAULT NULL,
  `research_expense` VARCHAR(30) NULL DEFAULT NULL,
  `id_users` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'forms_null'
-- 
-- ---

DROP TABLE IF EXISTS `forms_null`;
		
CREATE TABLE `forms_null` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `dont_want` VARCHAR(100) NULL DEFAULT NULL,
  `id_users` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `user_forms` ADD FOREIGN KEY (id_users) REFERENCES `user` (`id`);
ALTER TABLE `general_forms` ADD FOREIGN KEY (id_users) REFERENCES `user` (`id`);
ALTER TABLE `forms_had_dogs` ADD FOREIGN KEY (id_users) REFERENCES `user` (`id`);
ALTER TABLE `forms_have_dogs` ADD FOREIGN KEY (id_users) REFERENCES `user` (`id`);
ALTER TABLE `forms_want_dogs` ADD FOREIGN KEY (id_users) REFERENCES `user` (`id`);
ALTER TABLE `forms_null` ADD FOREIGN KEY (id_users) REFERENCES `user` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `user` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `user_forms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `general_forms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `forms_had_dogs` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `forms_have_dogs` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `forms_want_dogs` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `forms_null` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `user` (`id`,`name`,`email`,`password`) VALUES
-- ('','','','');
-- INSERT INTO `user_forms` (`id`,`social_name`,`email`,`cellphone`,`first_name`,`last_name`,`id_users`) VALUES
-- ('','','','','','','');
-- INSERT INTO `general_forms` (`id`,`age`,`gender`,`education`,`type_of_housing`,`family_constitution`,`home_income`,`residents`,`address`,`typo_of_forms`,`id_users`) VALUES
-- ('','','','','','','','','','','');
-- INSERT INTO `forms_had_dogs` (`id`,`dogs_name`,`who_belonged`,`dog_personality`,`duration_time`,`first_dog`,`are_others_pets`,`pet_age`,`castrated`,`when_castred`,`breed`,`where_came_from`,`price`,`motivation`,`characteristics`,`who_decided`,`most_like`,`dont_like`,`vet`,`vet_motivation`,`stopped_living`,`age_dog_was`,`reason_for_disconnection`,`id_users`) VALUES
-- ('','','','','','','','','','','','','','','','','','','','','','','','');
-- INSERT INTO `forms_have_dogs` (`id`,`dog_name`,`gender`,`who_belongs`,`castreted`,`dog_age`,`first_dog`,`have_others_pets`,`age_dog`,`breed`,`where_got`,`pride`,`dog_age_arrived`,`dog_personality`,`motivation`,`characteristics`,`couldn't_keep`,`vet`,`about`,`id_users`) VALUES
-- ('','','','','','','','','','','','','','','','','','','','');
-- INSERT INTO `forms_want_dogs` (`id`,`dog_size`,`dog_coat`,`dog_color`,`dog_gender`,`dog_age`,`brred`,`why`,`name`,`intend_to_buy`,`when_have`,` which_personality`,`research_expense`,`id_users`) VALUES
-- ('','','','','','','','','','','','','','');
-- INSERT INTO `forms_null` (`id`,`dont_want`,`id_users`) VALUES
-- ('','','');

