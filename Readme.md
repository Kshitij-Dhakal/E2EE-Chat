#E2EE Chat Application  

##Setting Up  
1. Run following sql code in browser to create a users table.
    ```
    CREATE TABLE `e2eechat`.`USERS`(  
        `user_id` int NOT NULL AUTO_INCREMENT,  
        `user_handle` VARCHAR(64) NOT NULL UNIQUE,  
        `first_name` VARCHAR(64) NOT NULL,  
        `last_name` VARCHAR(64) NOT NULL,  
        `password` VARCHAR(128) NOT NULL,  
        `status` ENUM('ADMIN', 'MODERATOR', 'USER') NOT NULL   DEFAULT 'USER',  
        PRIMARY KEY(`user_id`)  
    ) ENGINE = InnoDB;  
    ```