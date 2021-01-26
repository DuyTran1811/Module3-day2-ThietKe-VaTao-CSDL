CREATE DATABASE `BT2`;
USE `BT2`;

CREATE TABLE `customer`(
`customerNumber` INT NOT NULL AUTO_INCREMENT,
`customerName` VARCHAR(50)NOT NULL,
`contactLatsName` VARCHAR(50) NOT NULL,
`contactFirstName` VARCHAR(50) NOT NULL,
`phone` VARCHAR(50) NOT NULL,
`addressLine1` VARCHAR(50) NOT NULL,
`addssLine2` VARCHAR(50)NULL,
`city` VARCHAR(50)NOT NULL,
`state` VARCHAR(50)NOT NULL,
`postalCode` VARCHAR(15)NOT NULL,
`counttry` VARCHAR(50)NOT NULL,
`creaditLimit`FLOAT NULL,
PRIMARY KEY (`customerNumber`));

CREATE TABLE `orders`(
`orderNumber` INT NOT NULL,
`orderDate` DATE NOT NULL,
`requiredDate` DATE NOT NULL,
`shippedDate` DATE NOT NULL,
`status` VARCHAR(15)NOT NULL,
`comments` TEXT NOT NULL,
`quantityOrdered` INT NOT NULL,
`priceEach`FLOAT NOT NULL, 
`customerNumber`INT NOT NULL,
 PRIMARY KEY (`orderNumber`));

CREATE TABLE `payments`(
`customerNumber` INT NOT NULL,
`checkNumber` VARCHAR(50)NOT NULL,
`paymentDate` DATE NOT NULL,
`amount` FLOAT NOT NULL,
`customer_id` INT NOT NULL,
PRIMARY KEY(`customer_Number`));

CREATE TABLE `products`(
`productCode` VARCHAR(15)NOT NULL,
`productName` VARCHAR(70)NOT NULL,
`productScale` VARCHAR(10) NOT NULL,
`productVendor` VARCHAR(50) NOT NULL,
`productDescription` TEXT NOT NULL,
`quantityInSrock`INT NOT NULL,
`buyPrice` FLOAT NOT NULL,
`MSRP` FLOAT NOT NULL);

CREATE TABLE `prodictLine`(
`productLine` VARCHAR(50)NOT NULL,
`textSesription` VARCHAR(255) NULL,
`image` VARCHAR(255)NOT NULL);

CREATE TABLE `employee`(
`employeeNumber` INT NOT NULL,
`lastName` VARCHAR(50) NOT NULL,
`firstName` VARCHAR(50) NOT NULL,
`email` VARCHAR(100) NOT NULL,
`jbTitle` VARCHAR(50) NOT NULL,
PRIMARY KEY(`employeeNumber`));

CREATE TABLE `offices`(
`officeCode` VARCHAR(10) NOT NULL,
`city` VARCHAR(50) NOT NULL,
`phone` VARCHAR(50) NOT NULL,
`addressLine1` VARCHAR(255) NOT NULL,
`addressLine2` VARCHAR(255) NULL,
`state` VARCHAR(50) NOT NULL,
`country` VARCHAR(50) NOT NULL,
`postalCode` VARCHAR(15)NOT NULL);

-- Liên kết bảng oders với customer

ALTER TABLE `orders`
ADD FOREIGN KEY (`customerNumber`)
REFERENCES `customer` (`customerNumber`);

ALTER TABLE `payments`
ADD FOREIGN KEY(`customer_id`)
REFERENCES `customer`(customerNumber);



