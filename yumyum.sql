DROP DATABASE `YAMYAM`;
CREATE DATABASE `YAMYAM`;
USE `YAMYAM`;

CREATE TABLE `USERS` (
	`id`	BIGINT	PRIMARY KEY AUTO_INCREMENT,
	`user_id`	VARCHAR(255)	NOT NULL UNIQUE,
	`user_pw`	VARCHAR(255)	NOT NULL,
	`user_name`	VARCHAR(255)	NOT NULL,
	`user_email`	VARCHAR(255)	NOT NULL UNIQUE,
	`user_birth`	VARCHAR(255)	NOT NULL,
    `user_phone` VARCHAR(255) NOT NULL,
	`user_business_number`	INT	NOT NULL UNIQUE,
	`privacy_policy_agreed`	BOOLEAN	NOT NULL DEFAULT FALSE,
	`marketing_agreed`	BOOLEAN
);

CREATE TABLE `STORES` (
	`id`	BIGINT	PRIMARY KEY AUTO_INCREMENT,
	`owner_id`	BIGINT	NOT NULL,
	`store_name`	VARCHAR(255)	NOT NULL,
	`logo_url`	VARCHAR(255)	NOT NULL,
	`category` ENUM('치킨', '중식', '돈까스/회', '피자', '패스트푸드', '찜/탕', '족발/보쌈', '분식', '카페/디저트', '한식', '고기', '양식', '아시안', '야식', '도시락'),
	`opening_time`	TIME	NOT NULL,
	`closing_time`	TIME	NOT NULL,
	`break_start_time`	TIME,
	`break_end_time`	TIME,
	`address`	VARCHAR(255),
	`description`	TEXT,
    FOREIGN KEY (owner_id) REFERENCES `USERS` (id)
    
);


CREATE TABLE `MENU_CATEGORYS` (
	`id`	BIGINT PRIMARY KEY AUTO_INCREMENT,
	`store_id`	BIGINT	NOT NULL,
	`category`	VARCHAR(255)	NOT NULL,
    FOREIGN KEY (store_id) REFERENCES `STORES` (id)
);

CREATE TABLE `ORDERS` (
	`id`	BIGINT	PRIMARY KEY AUTO_INCREMENT,
    `store_id`	BIGINT NOT NULL,
	`delivery_address`	VARCHAR(255)	NOT NULL,
	`total_price`	INT	NOT NULL,
	`order_date`	DATETIME	DEFAULT CURRENT_TIMESTAMP	 NOT NULL,
    `order_state`	ENUM('0', '1', '2')		DEFAULT '0'		NOT NULL,
    FOREIGN KEY (store_id) REFERENCES `STORES` (id)
);

CREATE TABLE `MENUS` (
	`id`	BIGINT	PRIMARY KEY AUTO_INCREMENT,
    `store_id` BIGINT NOT NULL,
	`category_id`	BIGINT	NOT NULL,
	`menu_name`	VARCHAR(255)	NOT NULL,
	`image_url`	VARCHAR(255),
	`menu_description`	TEXT,
    `menu_price`	INT		NOT null,
    `is_available` BOOLEAN 	DEFAULT TRUE	NOT NULL,
    FOREIGN KEY (category_id) REFERENCES `MENU_CATEGORYS` (id),
    FOREIGN KEY (store_id) REFERENCES `STORES` (id)
);

CREATE TABLE `ORDER_DETAILS` (
	`id`	BIGINT	PRIMARY KEY AUTO_INCREMENT,
    `order_id` BIGINT NOT NULL,
    `menu_id` BIGINT NOT NULL,
	`order_product_name`	VARCHAR(255)	NOT NULL,
	`quantity`	INT	NOT NULL,
    FOREIGN KEY (order_id) REFERENCES `ORDERS` (id),
    FOREIGN KEY (menu_id) REFERENCES `MENUS` (id)
    
);


-- ---------------------------------------------------------------------------------------------------


CREATE TABLE `reviews` (
	`review_number`	BIGINT	PRIMARY KEY AUTO_INCREMENT,
	`order_number`	BIGINT	NOT NULL,
    `GUEST_NUMBER` BIGINT NOT NULL,
	`review_rating`	INT,
	`review_date`	DATE	NOT NULL,
	`review_comments`	TEXT,
	`review_report`	BOOLEAN	NOT NULL,
    FOREIGN KEY (ORDER_NUMBER) REFERENCES `ORDERS` (ORDER_NUMBER)
    
);


CREATE TABLE `GUEST` (
	`GUEST_NUMBER` BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `ORDER_NUMBER` BIGINT NOT NULL,
    `REVIEW_NUMBER` BIGINT NOT NULL,
    `GUEST_NICKNAME` VARCHAR(255) UNIQUE	NOT NULL,
    `GUSET_IMG` VARCHAR(255),
    
    FOREIGN KEY (ORDER_NUMBER) REFERENCES `ORDERS` (ORDER_NUMBER),
    FOREIGN KEY (REVIEW_NUMBER) REFERENCES `REVIEWS` (REVIEW_NUMBER)
    
);



CREATE TABLE `reviews_photos` (
	`review_number` BIGINT	NOT NULL,
	`review_photo`	VARCHAR(255)	NULL,
    FOREIGN KEY (REVIEW_NUMBER) REFERENCES `REVIEWS` (REVIEW_NUMBER)
);

CREATE TABLE `REVIEW_EVENT_NOTICE` (
	`STORE_NUMBER` BIGINT,
	`REVIEW_NOTICE_PHOTO` VARCHAR(255) NULL,
    `REVIEW_NOTICE_TEXT`	TEXT	NULL,
	FOREIGN KEY (STORE_NUMBER) REFERENCES `STORE` (STORE_NUMBER)
);

CREATE TABLE `REVIEW_COMMENT` (
	`REVIEW_NUMBER` BIGINT NOT NULL,
	`COMMENT` VARCHAR(255),
    `REVIEW_COMMENT_DATE` DATE NOT NULL,
    FOREIGN KEY (REVIEW_NUMBER) REFERENCES `REVIEWS` (REVIEW_NUMBER)
);



# CREATE TABLE `period` (
# 	`period_number`	INT	PRIMARY KEY AUTO_INCREMENT,
# 	`daily_date`	DATE	NULL,
# 	`daily_sales`	INT	NULL
# );

# CREATE TABLE `period1` (
# 	`period_number`	INT	PRIMARY KEY AUTO_INCREMENT,
# 	`period_number2`	INT	NOT NULL,
# 	`month_sales`	DATE	NULL,
# 	`month_date`	DATE	NULL
# );


