CREATE TABLE `e2eechat`.`USERS`(
    `user_handle` VARCHAR(64) NOT NULL,
    `first_name` VARCHAR(64) NOT NULL,
    `last_name` VARCHAR(64) NOT NULL,
    `password` VARCHAR(128) NOT NULL,
    `status` ENUM('ADMIN', 'MODERATOR', 'USER') NOT NULL DEFAULT 'USER',
    PRIMARY KEY(`user_handle`)
) ENGINE = InnoDB;