-- Tạo một Databases
CREATE DATABASE TH1;

-- Sử dụng một bảng Database
USE TH1;

-- Tạo một bảng Table <name>
CREATE TABLE `contacts`(
`contact_id` INT NOT NULL AUTO_INCREMENT,
`last_name` VARCHAR(30) NOT NULL,
`frist_name` VARCHAR(25),
`birthday` DATE,
CONSTRAINT contacts_pk PRIMARY KEY (contact_id)
);

CREATE TABLE `suppliers`(
`supplier_id` INT NOT NULL AUTO_INCREMENT,
`supplier_name` VARCHAR(50) NOT NULL,
`account_rep` VARCHAR(30) NOT NULL DEFAULT 'TBD',
CONSTRAINT `suppliers_pk` PRIMARY KEY (supplier_id));

-- Xoá một bảng hay nhiều bảng Table
DROP TABLE `TH1`.`suppliers`;

-- Thêm một Cột trong bảng
ALTER TABLE `TH1`.`contacts` 
ADD COLUMN `mid_name` VARCHAR(30) NULL AFTER `frist_name`;

-- Sửa một bảng trong bảng
ALTER TABLE `TH1`.`contacts` 
CHANGE COLUMN `lastgname` `last_name` VARCHAR(30) NOT NULL ;