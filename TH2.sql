CREATE DATABASE `TH2`;

USE `TH2`;

CREATE TABLE `users`(
`user_id` INT AUTO_INCREMENT PRIMARY KEY,
`username` VARCHAR(40),
`password` VARCHAR(255),
`email` VARCHAR(255));

CREATE TABLE `role`(
`role_id` INT AUTO_INCREMENT,
`role_name`VARCHAR(50),
PRIMARY KEY(role_id));

CREATE TABLE `userroles`(
`user_id` INT NOT NULL,
`role_id` INT NOT NULL,
PRIMARY KEY(user_id,role_id)
);
