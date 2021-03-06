CREATE TABLE `ORDER` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `CLIENT_ID` int,
  `status` ENUM ('order_accepted', 'order_in_process', 'order_completed', 'order_cancelled'),
  `MANAGER_ID` int,
  `STORE_ID` int,
  `WAREHOUSE_ID` int,
  `created_at` timestamp
);

CREATE TABLE `STORE` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `address` varchar(255)
);

CREATE TABLE `PRODUCT` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` varchar(255),
  `price` int,
  `description` varchar(255),
  `status` ENUM ('out_of_stock', 'in_stock', 'running_low'),
  `category_id` int
);

CREATE TABLE `PRODUCT_IMAGE` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `PRODUCT_ID` int,
  `image_src` varchar(255)
);

CREATE TABLE `PRODUCT_CATEGORY` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` varchar(255)
);

CREATE TABLE `CLIENT` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `firstName` varchar(20),
  `surName` varchar(20),
  `phoneNumber` int,
  `email` varchar(255),
  `address` varchar(255),
  `CLIENT_TYPE` ENUM ('retail', 'wholesale'),
  `created_at` date
);

CREATE TABLE `EMPLOYEE` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `firstName` varchar(20),
  `surName` varchar(20),
  `login` varchar(15),
  `password` varchar(8),
  `salary` int,
  `POSITION_ID` int,
  `created_at` date,
  `Emp_Factory` int,
  `Emp_Store` int,
  `Emp_Warehouse` int
);

CREATE TABLE `POSITION` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` varchar(255)
);

CREATE TABLE `SUPPLIER` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` varchar(40),
  `email` varchar(255),
  `phoneNumber` int,
  `MANAGER_ID` int,
  `address` varchar(255)
);

CREATE TABLE `MATERIAL` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` varchar(255)
);

CREATE TABLE `SUPPLIER_CONTRACT` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `SUPPLIER_ID` int,
  `contract_src` varchar(255)
);

CREATE TABLE `WAREHOUSE` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `address` varchar(255)
);

CREATE TABLE `FACTORY` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `address` varchar(255)
);

CREATE TABLE `ORDER_PRODUCT` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `ORDER_ID` int,
  `PRODUCT_ID` int,
  `quantity` int
);

CREATE TABLE `STORE_PRODUCT` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `STORE_ID` int,
  `PRODUCT_ID` int,
  `quantity` int
);

CREATE TABLE `CONTRACT_MATERIAL` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `CONTRACT_ID` int,
  `MATERIAL_ID` int,
  `quantity` int
);

CREATE TABLE `WAREHOUSE_MATERIAL` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `WAREHOUSE_ID` int,
  `MATERIAL_ID` int,
  `quantity` int
);

CREATE TABLE `WAREHOUSE_PRODUCT` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `WAREHOUSE_ID` int,
  `PRODUCT_ID` int,
  `quantity` int
);

CREATE TABLE `MATERIAL_TO_FACTORY` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `WAREHOUSE_ID` int,
  `FACTORY_ID` int,
  `MATERIAL_ID` int,
  `quantity` int,
  `supplied_at` date
);

CREATE TABLE `WAREHOUSE_TO_STORE` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `WAREHOUSE_ID` int,
  `STORE_ID` int,
  `PRODUCT_ID` int,
  `quantity` int,
  `supplied_at` date
);

CREATE TABLE `PRODUCTION` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `FACTORY_ID` int,
  `WAREHOUSE_ID` int,
  `PRODUCT_ID` int,
  `quantity` int,
  `produced_at` date
);

ALTER TABLE `ORDER` ADD FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`id`);

ALTER TABLE `ORDER` ADD FOREIGN KEY (`MANAGER_ID`) REFERENCES `EMPLOYEE` (`id`);

ALTER TABLE `ORDER` ADD FOREIGN KEY (`STORE_ID`) REFERENCES `STORE` (`id`);

ALTER TABLE `ORDER` ADD FOREIGN KEY (`WAREHOUSE_ID`) REFERENCES `WAREHOUSE` (`id`);

ALTER TABLE `PRODUCT` ADD FOREIGN KEY (`category_id`) REFERENCES `PRODUCT_CATEGORY` (`id`);

ALTER TABLE `PRODUCT_IMAGE` ADD FOREIGN KEY (`PRODUCT_ID`) REFERENCES `PRODUCT` (`id`);

ALTER TABLE `EMPLOYEE` ADD FOREIGN KEY (`POSITION_ID`) REFERENCES `POSITION` (`id`);

ALTER TABLE `EMPLOYEE` ADD FOREIGN KEY (`Emp_Factory`) REFERENCES `FACTORY` (`id`);

ALTER TABLE `EMPLOYEE` ADD FOREIGN KEY (`Emp_Store`) REFERENCES `STORE` (`id`);

ALTER TABLE `EMPLOYEE` ADD FOREIGN KEY (`Emp_Warehouse`) REFERENCES `WAREHOUSE` (`id`);

ALTER TABLE `SUPPLIER` ADD FOREIGN KEY (`MANAGER_ID`) REFERENCES `EMPLOYEE` (`id`);

ALTER TABLE `SUPPLIER_CONTRACT` ADD FOREIGN KEY (`SUPPLIER_ID`) REFERENCES `SUPPLIER` (`id`);

ALTER TABLE `ORDER_PRODUCT` ADD FOREIGN KEY (`ORDER_ID`) REFERENCES `ORDER` (`id`);

ALTER TABLE `ORDER_PRODUCT` ADD FOREIGN KEY (`PRODUCT_ID`) REFERENCES `PRODUCT` (`id`);

ALTER TABLE `STORE_PRODUCT` ADD FOREIGN KEY (`STORE_ID`) REFERENCES `STORE` (`id`);

ALTER TABLE `STORE_PRODUCT` ADD FOREIGN KEY (`PRODUCT_ID`) REFERENCES `PRODUCT` (`id`);

ALTER TABLE `CONTRACT_MATERIAL` ADD FOREIGN KEY (`CONTRACT_ID`) REFERENCES `SUPPLIER_CONTRACT` (`id`);

ALTER TABLE `CONTRACT_MATERIAL` ADD FOREIGN KEY (`MATERIAL_ID`) REFERENCES `MATERIAL` (`id`);

ALTER TABLE `WAREHOUSE_MATERIAL` ADD FOREIGN KEY (`WAREHOUSE_ID`) REFERENCES `WAREHOUSE` (`id`);

ALTER TABLE `WAREHOUSE_MATERIAL` ADD FOREIGN KEY (`MATERIAL_ID`) REFERENCES `MATERIAL` (`id`);

ALTER TABLE `WAREHOUSE_PRODUCT` ADD FOREIGN KEY (`WAREHOUSE_ID`) REFERENCES `WAREHOUSE` (`id`);

ALTER TABLE `WAREHOUSE_PRODUCT` ADD FOREIGN KEY (`PRODUCT_ID`) REFERENCES `PRODUCT` (`id`);

ALTER TABLE `MATERIAL_TO_FACTORY` ADD FOREIGN KEY (`WAREHOUSE_ID`) REFERENCES `WAREHOUSE` (`id`);

ALTER TABLE `MATERIAL_TO_FACTORY` ADD FOREIGN KEY (`FACTORY_ID`) REFERENCES `FACTORY` (`id`);

ALTER TABLE `MATERIAL_TO_FACTORY` ADD FOREIGN KEY (`MATERIAL_ID`) REFERENCES `MATERIAL` (`id`);

ALTER TABLE `WAREHOUSE_TO_STORE` ADD FOREIGN KEY (`WAREHOUSE_ID`) REFERENCES `WAREHOUSE` (`id`);

ALTER TABLE `WAREHOUSE_TO_STORE` ADD FOREIGN KEY (`STORE_ID`) REFERENCES `STORE` (`id`);

ALTER TABLE `WAREHOUSE_TO_STORE` ADD FOREIGN KEY (`PRODUCT_ID`) REFERENCES `MATERIAL` (`id`);

ALTER TABLE `PRODUCTION` ADD FOREIGN KEY (`FACTORY_ID`) REFERENCES `FACTORY` (`id`);

ALTER TABLE `PRODUCTION` ADD FOREIGN KEY (`WAREHOUSE_ID`) REFERENCES `WAREHOUSE` (`id`);

ALTER TABLE `PRODUCTION` ADD FOREIGN KEY (`PRODUCT_ID`) REFERENCES `PRODUCT` (`id`);

ALTER TABLE `perfect_tools`.`contract_material` 
CHANGE COLUMN `quantity` `quantity` INT UNSIGNED NULL DEFAULT NULL ;

ALTER TABLE `perfect_tools`.`material_to_factory` 
CHANGE COLUMN `quantity` `quantity` INT UNSIGNED NULL DEFAULT NULL ;

ALTER TABLE `perfect_tools`.`order_product` 
CHANGE COLUMN `quantity` `quantity` INT UNSIGNED NULL DEFAULT NULL ;

ALTER TABLE `perfect_tools`.`production` 
CHANGE COLUMN `quantity` `quantity` INT UNSIGNED NULL DEFAULT NULL ;

ALTER TABLE `perfect_tools`.`store_product` 
CHANGE COLUMN `quantity` `quantity` INT UNSIGNED NULL DEFAULT NULL ;

ALTER TABLE `perfect_tools`.`warehouse_material` 
CHANGE COLUMN `quantity` `quantity` INT UNSIGNED NULL DEFAULT NULL ;

ALTER TABLE `perfect_tools`.`warehouse_product` 
CHANGE COLUMN `quantity` `quantity` INT UNSIGNED NULL DEFAULT NULL ;

ALTER TABLE `perfect_tools`.`warehouse_to_store` 
CHANGE COLUMN `quantity` `quantity` INT UNSIGNED NULL DEFAULT NULL ;