# E2EE Chat Application  
## Setting Up  
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
2. Clone this repository into local machine  
    `git clone https://github.com/Kshitij-Dhakal/E2EE-Chat.git`
3. Go into folder  
    `cd E2EE-Chat/`
4. Clone all the required dependencies
    ```
        git clone https://github.com/Kshitij-Dhakal/E2EE-Chat-Project-Dependencies.git
        git clone https://github.com/Kshitij-Dhakal/Multi-User-Chat-Client.git
        git clone https://github.com/Kshitij-Dhakal/Multi-User-Chat-Server.git
        git clone https://github.com/Kshitij-Dhakal/TDES.git
        git clone https://github.com/Kshitij-Dhakal/User-Handle-Desktop.git
    ```
5. Download mysql-connector-java-5.1.47 and put jar in lib/ folder
***
## Setting up ide
### Jetbrain's IntelliJ  
1. Open E2EE-Chat folder.  
2. Open project structure using <kbd>ctrl</kbd>+<kbd>shift</kbd>+<kbd>alt</kbd>+<kbd>s</kbd>.  
3. Setup Project SDK and Project compiler output in Project.  
4. Add all the cloned dependencies as modules in Modules.  
5. Add  mysql-connector-java-5.1.47.jar in Dependencies in Modules.  
6. Add JAR from modules with dependencies artifacts in Artifacts. Select ChatClientMain from Multi-User-Chat-Client module as Main Class.  
7. Fix dependencies between modules.  
    * Open file showing errors.  
    * Navigate to error.  
    * Press <kbd>alt</kbd>+<kbd>enter</kbd> and select add dependency to ...