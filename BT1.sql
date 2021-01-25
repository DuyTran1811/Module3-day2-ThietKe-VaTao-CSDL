CREATE DATABASE `BT1`;

USE `BT1`;

CREATE TABLE `customers`(
`id`INT NOT NULL AUTO_INCREMENT,
`fullName`VARCHAR(20) NOT NULL,
`address`VARCHAR(30) NOT NULL,
`email`VARCHAR(30),
`phone`VARCHAR(15)UNIQUE,
PRIMARY KEY(`id`));


CREATE TABLE `accouts`(
`ac_id`INT NOT NULL AUTO_INCREMENT,
`ac_type`VARCHAR(10)NOT NULL,
`ac_date`DATE NOT NULL,
`balance`FLOAT NULL,
`customer_id`INT NOT NULL,
PRIMARY KEY (`ac_id`));

CREATE TABLE`transactions`(
`tran_id`INT NOT NULL AUTO_INCREMENT,
`account_id`INT NOT NULL,
`tran_date`DATE NOT NULL,
`amounts`FLOAT,
`description`VARCHAR(255),
PRIMARY KEY(`tran_id`));

ALTER TABLE `accounts`
ADD FOREIGN KEY(`customer_id`)
 REFERENCES `customers`(`id`);

ALTER TABLE `transactions`
ADD FOREIGN KEY(`account_id`)
REFERENCES `accounts`(`ac_id`);