DROP DATABASE IF EXISTS `ManuStore`;
CREATE DATABASE IF NOT EXISTS `ManuStore`;


USE `ManuStore`;

DROP TABLE IF EXISTS `Countries`;
CREATE TABLE IF NOT EXISTS `Countries`(
    
    `CountryId` INT NOT NULL AUTO_INCREMENT,
    `CountryName` VARCHAR(255) NOT NULL,

    CONSTRAINT PK_Contries PRIMARY KEY(`CountryId`)
);


DROP TABLE IF EXISTS `Users`;
CREATE TABLE IF NOT EXISTS `Users`(
    
    `UserId` INT NOT NULL AUTO_INCREMENT,
    `FirstName` VARCHAR(255) NOT NULL,
    `LastName` VARCHAR(255) NOT NULL,
    `Email` VARCHAR(255) NOT NULL,
    `PhoneNumber` VARCHAR(255) NOT NULL,
    `CountryId` INT,
    `Password` VARCHAR(255) NOT NULL,
    `DateOfRegistration` DATE,
    `Address` VARCHAR(255) NOT NULL,
    `score` VARCHAR(255),

    CONSTRAINT PK_Users PRIMARY KEY(`UserId`),
    CONSTRAINT FK_Users_Countries FOREIGN KEY(`CountryId`) REFERENCES `Countries`(`CountryId`)
);

DROP TABLE IF EXISTS `Roles`;
CREATE TABLE IF NOT EXISTS `Roles`(

    `RoleId` INT NOT NULL AUTO_INCREMENT,
    `RoleName` VARCHAR(255) NOT NULL,

    CONSTRAINT PK_Users PRIMARY KEY(`RoleId`)

);

DROP TABLE IF EXISTS `UsersRoles`;
CREATE TABLE IF NOT EXISTS `UsersRoles`(

    `UserRoleId` INT NOT NULL AUTO_INCREMENT,
    `UserId` INT,
    `RoleId` INT,

    CONSTRAINT PK_UserRoles PRIMARY KEY(`UserRoleId`),
    CONSTRAINT FK_UserRoles FOREIGN KEY(`UserId`) REFERENCES `Users`(`UserId`)

);

DROP TABLE IF EXISTS `Categories`;
CREATE TABLE IF NOT EXISTS `Categories`(

    `CategoryId` INT NOT NULL AUTO_INCREMENT,
    `CategoryName` VARCHAR(255) NOT NULL,

    CONSTRAINT PK_Categories PRIMARY KEY(`CategoryId`)

);  



DROP TABLE IF EXISTS `Products`;
CREATE TABLE IF NOT EXISTS `Products`(

    `ProductId` INT NOT NULL AUTO_INCREMENT,
    `CategoryId` INT,
    `SubCategoryId` INT,
    `Name` VARCHAR(255) NOT NULL,
    `Description` VARCHAR(255) NOT NULL,
    `stock` INT(255) NOT NULL,
    `Price` INT(255) NOT NULL,
    `DateOfRegistration` DATETIME,
    `DateOfUpdate` DATETIME,

    CONSTRAINT PK_Products PRIMARY KEY(`ProductId`),
    CONSTRAINT FK_Products_Categories FOREIGN KEY(`CategoryId`) REFERENCES `Categories`(`CategoryId`),
    CONSTRAINT FK_Products_SubCategories FOREIGN KEY(`SubCategoryId`) REFERENCES `SubCategories`(`CategoryId`)
);

DROP TABLE IF EXISTS `TechnicalDetails`;
CREATE TABLE IF NOT EXISTS `TechnicalDetails`(

    `TechnicalDetailId` INT NOT NULL AUTO_INCREMENT,
    `ProductId` INT,
    `NameDetail` VARCHAR(255) NOT NULL,
    `Detail` VARCHAR(255) NOT NULL,

    CONSTRAINT PK_TechnicalDetails PRIMARY KEY(`TechnicalDetailId`)

);


DROP TABLE IF EXISTS `Images`;
CREATE TABLE IF NOT EXISTS `Images`(

    `ImageId` INT NOT NULL AUTO_INCREMENT,
    `ProductId` INT,
    `ImagePath` VARCHAR(255) NOT NULL,

    CONSTRAINT PK_Images PRIMARY KEY(`ImageId`),
    CONSTRAINT FK_Images_Products FOREIGN KEY(`ProductId`) REFERENCES `Products`(`ProductId`)

);


DROP TABLE IF EXISTS `Questions`;
CREATE TABLE IF NOT EXISTS `Questions`(

    `QuestionId` INT NOT NULL AUTO_INCREMENT,
    `UserId` INT,
    `ProductId` INT,
    `Question` VARCHAR(255) NOT NULL,
    `DateOfQuestion` DATETIME,

    CONSTRAINT PK_Questions PRIMARY KEY(`QuestionId`),
    CONSTRAINT FK_Questions_Users FOREIGN KEY(`UserId`) REFERENCES `Users`(`UserId`),
    CONSTRAINT FK_Questions_Products FOREIGN KEY(`ProductId`) REFERENCES `Products`(`ProductId`)

);


DROP TABLE IF EXISTS `Answers`;
CREATE TABLE IF NOT EXISTS `Answers`(

    `AnswerId` INT NOT NULL AUTO_INCREMENT,
    `UserId` INT,
    `QuestionId` INT,
    `Answer` VARCHAR(255) NOT NULL,
    `DateOfQuestion` DATETIME,

    CONSTRAINT PK_Answers PRIMARY KEY(`AnswerId`),
    CONSTRAINT FK_Answers_UserId FOREIGN KEY(`UserId`) REFERENCES `Users`(`UserId`),
    CONSTRAINT FK_Answers_Questions FOREIGN KEY(`QuestionId`) REFERENCES `Questions`(`QuestionId`)

);


DROP TABLE IF EXISTS `Sales`;
CREATE TABLE IF NOT EXISTS `Sales`(

    `SaleId` INT NOT NULL AUTO_INCREMENT,
    `UserId` INT,
    `Cost` INT(255),
    `Status` ENUM('done','sending','sent','received'),
    `DateOfSale` DATETIME,

    CONSTRAINT PK_Sales Primary key(`SaleID`),
    CONSTRAINT FK_Sales_Users FOREIGN KEY(`UserId`) REFERENCES `Users`(`UserId`)

);

DROP TABLE IF EXISTS `SalesDetails`;
CREATE TABLE IF NOT EXISTS `SalesDetails`(

    `SaleDetailId` INT NOT NULL AUTO_INCREMENT,
    `SaleId` INT,
    `ProductId` INT,
    `Units` INT(255) NOT NULL,

     CONSTRAINT PK_SalesDetails PRIMARY KEY(`SaleDetailId`),
     CONSTRAINT FK_SalesDetails_Products FOREIGN KEY(`ProductId`) REFERENCES `Products`(`ProductId`),
     CONSTRAINT FK_SalesDetails_Sales FOREIGN KEY(`SaleId`) REFERENCES `Sales`(`SaleId`)

);