DROP DATABASE IF EXISTS `YAMYAM`;
CREATE DATABASE `YAMYAM`;
USE `YAMYAM`;

-- 회원 정보 테이블
CREATE TABLE `users` (
                         `id` BIGINT	PRIMARY KEY AUTO_INCREMENT,
                         `user_id` VARCHAR(255) NOT NULL UNIQUE,
                         `user_pw` VARCHAR(255) NOT NULL,
                         `user_name`	VARCHAR(255) NOT NULL,
                         `user_email` VARCHAR(255) NOT NULL,
                         `user_phone` VARCHAR(30) NOT NULL,
                         `user_business_number` VARCHAR(20) NOT NULL UNIQUE,
                         `privacy_policy_agreed`	BOOLEAN	NOT NULL DEFAULT FALSE, -- 개인 정보 동의
                         `marketing_agreed` BOOLEAN NOT NULL DEFAULT FALSE -- 마케팅 수신 동의
);


-- 가게 정보 테이블
CREATE TABLE `stores` (
                          `id` BIGINT	PRIMARY KEY AUTO_INCREMENT,
                          `owner_id` BIGINT NOT NULL,
                          `store_name` VARCHAR(255) NOT NULL,
                          `logo_url`	VARCHAR(255) NOT NULL DEFAULT '/images/profile/default2.png',
                          `category` ENUM('치킨', '중식', '돈까스_회', '피자', '패스트푸드', '찜_탕', '족발_보쌈', '분식', '카페_디저트', '한식', '고기', '양식', '아시안', '야식', '도시락') NOT NULL,
                          `opening_time` DATETIME	NOT NULL,
                          `closing_time` DATETIME NOT NULL,
                          `break_start_time` DATETIME,
                          `break_end_time` DATETIME,
                          `address` VARCHAR(255),
                          `description` TEXT,
                          FOREIGN KEY (owner_id) REFERENCES `users` (id) ON DELETE CASCADE
);


-- 메뉴별 카테고리 테이블 (인기 메뉴, 세트 메뉴, 사이드메뉴, 음료 ...)
CREATE TABLE `menu_categories` (
                                   `id` BIGINT PRIMARY KEY AUTO_INCREMENT,
                                   `menu_category` VARCHAR(255)	NOT NULL
);


-- 메뉴 정보 테이블
CREATE TABLE `menus` (
                         `id` BIGINT	PRIMARY KEY AUTO_INCREMENT,
                         `store_id` BIGINT NOT NULL,
                         `category_id` BIGINT NOT NULL,
                         `menu_name`	VARCHAR(255) NOT NULL,
                         `image_url`	VARCHAR(255) DEFAULT '/images/profile/default1.png',
                         `menu_description` TEXT,
                         `menu_price` INT NOT NULL,
                         `is_available` BOOLEAN NOT NULL	DEFAULT TRUE,
                         FOREIGN KEY (store_id) REFERENCES `stores` (id) ON DELETE CASCADE,
                         FOREIGN KEY (category_id) REFERENCES `menu_categories` (id) ON DELETE CASCADE
);


-- 메뉴 옵션(사이즈, 추가 토핑 등)
CREATE TABLE `menu_options`(
                               `id` BIGINT	PRIMARY KEY AUTO_INCREMENT,
                               `option_name` VARCHAR(255) NOT NULL
);


-- 메뉴, 메뉴 옵션 연결 테이블
CREATE TABLE `menu_option_group` (
                                     `id` BIGINT PRIMARY KEY AUTO_INCREMENT,
                                     `menu_id` BIGINT NOT NULL,
                                     `menu_option_id` BIGINT NOT NULL
);


-- 주문 정보 테이블
CREATE TABLE `orders` (
                          `id` BIGINT	PRIMARY KEY AUTO_INCREMENT,
                          `store_id` BIGINT NOT NULL,
                          `delivery_address` VARCHAR(255) NOT NULL,
                          `order_date` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
                          `order_state` ENUM('0', '1', '2') NOT NULL DEFAULT '0', -- 주문 상태 (0: 접수대기 / 1: 처리중 / 2: 주문완료)
                          FOREIGN KEY (store_id) REFERENCES `stores` (id) ON DELETE CASCADE
);


-- 주문 목록 내 주문 1개 상세 정보 테이블
CREATE TABLE `order_details` (
                                 `id` BIGINT	PRIMARY KEY AUTO_INCREMENT,
                                 `order_id` BIGINT NOT NULL,
                                 `menu_id` BIGINT NOT NULL,
                                 FOREIGN KEY (order_id) REFERENCES `orders` (id) ON DELETE CASCADE,
                                 FOREIGN KEY (menu_id) REFERENCES `menus` (id) ON DELETE CASCADE
);


-- 메뉴 옵션의 세부사항(S, M, L ... 등)
CREATE TABLE `menu_option_details`(
                                      `id` BIGINT PRIMARY KEY AUTO_INCREMENT,
                                      `menu_option_id` BIGINT NOT NULL, -- 메뉴 옵션 테이블 id
                                      `order_detail_name` BIGINT NOT NULL,
                                      `additional_fee` INT NOT NULL DEFAULT 0,
                                      FOREIGN KEY (menu_option_id) REFERENCES `menu_options` (id) ON DELETE CASCADE
);


-- 주문한 메뉴 옵션 연결 테이블
CREATE TABLE `order_menu_option` (
                                     `id` BIGINT PRIMARY KEY AUTO_INCREMENT,
                                     `order_detail_id` BIGINT NOT NULL,
                                     `menu_option_detail_id` BIGINT NOT NULL
);


-- 손님 정보 테이블
CREATE TABLE `guests` (
                          `id` BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
                          `order_id` BIGINT NOT NULL,
                          `guest_nickname` VARCHAR(255) NOT NULL UNIQUE,
                          `profile_image` VARCHAR(255) DEFAULT '/images/profile/default.png',
                          FOREIGN KEY (order_id) REFERENCES `orders` (id) ON DELETE CASCADE
);


-- 리뷰 정보 테이블
CREATE TABLE `reviews` (
                           `id` BIGINT	PRIMARY KEY AUTO_INCREMENT,
                           `order_id` BIGINT NOT NULL,
                           `guest_id` BIGINT NOT NULL,
                           `rating` INT, -- 별점
                           `review_date` DATE NOT NULL,
                           `review_content` TEXT,
                           `is_reported` BOOLEAN DEFAULT FALSE, -- 신고 기능
                           FOREIGN KEY (order_id) REFERENCES `orders` (id) ON DELETE CASCADE,
                           FOREIGN KEY (guest_id) REFERENCES `guests` (id) ON DELETE CASCADE
);

-- 리뷰 사진 테이블
CREATE TABLE `review_photos` (
                                 `id` BIGINT PRIMARY KEY AUTO_INCREMENT,
                                 `review_id` BIGINT	NOT NULL,
                                 `photo_url`	VARCHAR(255),
                                 FOREIGN KEY (review_id) REFERENCES `reviews` (id) ON DELETE CASCADE
);

-- 리뷰 이벤트 공지사항 정보 테이블
CREATE TABLE `review_event_notices` (
                                        `id` BIGINT PRIMARY KEY AUTO_INCREMENT,
                                        `store_id` BIGINT,
                                        `notice_photo_url` VARCHAR(255),
                                        `notice_text`	TEXT,
                                        FOREIGN KEY (store_id) REFERENCES `stores` (id) ON DELETE CASCADE
);

-- 작성된 리뷰에 대한 답글 테이블
CREATE TABLE `review_comments` (
                                   `id` BIGINT PRIMARY KEY AUTO_INCREMENT,
                                   `review_id` BIGINT NOT NULL,
                                   `comment` TEXT NOT NULL,
                                   `comment_date` DATE NOT NULL,
                                   FOREIGN KEY (review_id) REFERENCES `reviews` (id) ON DELETE CASCADE
);
-- users 테이블 데이터 삽입
INSERT INTO `users` (`user_id`, `user_pw`, `user_name`, `user_email`, `user_phone`, `user_business_number`, `privacy_policy_agreed`, `marketing_agreed`)
VALUES
    ('user001', 'pw001', 'Alice', 'alice@example.com', '010-1234-5678', '0001112222', TRUE, FALSE),
    ('user002', 'pw002', 'Bob', 'bob@example.com', '010-2345-6789', '1112223333', TRUE, TRUE),
    ('user003', 'pw003', 'Charlie', 'charlie@example.com', '010-3456-7890', '2223334444', FALSE, FALSE),
    ('user004', 'pw004', 'Diana', 'diana@example.com', '010-4567-8901', '3334445555', TRUE, FALSE),
    ('user005', 'pw005', 'Ethan', 'ethan@example.com', '010-5678-9012', '4445556666', FALSE, TRUE);


-- menu_categories 테이블 데이터 삽입
INSERT INTO `menu_categories` (`menu_category`)
VALUES
    ('인기메뉴'),
    ('세트메뉴'),
    ('사이드메뉴'),
    ('음료'),
    ('디저트');


-- menu_options 테이블 데이터 삽입
INSERT INTO `menu_options` (`option_name`)
VALUES
    ('사이즈'),
    ('추가치즈'),
    ('음료변경'),
    ('토핑추가'),
    ('매운맛조절');


-- stores 테이블 데이터 삽입 (owner_id는 users의 id 참조)
-- 위 users에서 id는 AUTO_INCREMENT로 1~5가 될 것이라 가정
INSERT INTO `stores` (`owner_id`, `store_name`, `category`, `opening_time`, `closing_time`, `break_start_time`, `break_end_time`, `address`, `description`)
VALUES
    (1, '알찬치킨', '치킨', '2024-12-18 10:00:00', '2024-12-18 22:00:00', '2024-12-18 15:00:00', '2024-12-18 16:00:00', '서울시 강남구 테헤란로', '맛있는 치킨 전문점'),
    (2, '최고중식', '중식', '2024-12-18 11:00:00', '2024-12-18 23:00:00', NULL, NULL, '서울시 서초구 서초대로', '정통 중식 요리'),
    (3, '왕돈까스', '돈까스_회', '2024-12-18 09:00:00', '2024-12-18 21:00:00', '2024-12-18 14:00:00', '2024-12-18 14:30:00', '서울시 종로구 종로', '푸짐한 돈까스'),
    (4, '스피드피자', '피자', '2024-12-18 10:30:00', '2024-12-18 22:30:00', '2024-12-18 15:30:00', '2024-12-18 16:00:00', '서울시 마포구 상암로', '빠른 피자 배달'),
    (5, '맛나분식', '분식', '2024-12-18 12:00:00', '2024-12-18 20:00:00', NULL, NULL, '서울시 광진구 능동로', '다양한 분식 메뉴');


-- menus 테이블 데이터 삽입 (store_id, category_id 참조)
-- store_id: 1~5, category_id: 1~5 사용
INSERT INTO `menus` (`store_id`, `category_id`, `menu_name`, `image_url`, `menu_description`, `menu_price`)
VALUES
    (1, 1, '후라이드치킨', '/images/profile/default1.png', '바삭한 후라이드 치킨', 15000),
    (1, 2, '양념치킨세트', '/images/profile/default1.png', '양념치킨 + 콜라 세트', 18000),
    (2, 1, '짜장면', '/images/profile/default1.png', '진한 춘장 맛', 6000),
    (2, 3, '군만두', '/images/profile/default1.png', '바삭하고 고소한 만두', 5000),
    (3, 1, '왕돈까스', '/images/profile/default1.png', '두껍고 바삭한 돈까스', 8000);


-- menu_option_group 테이블 데이터 삽입 (menu_id, menu_option_id 참조)
-- menu_id: 1~5, menu_option_id: 1~5
INSERT INTO `menu_option_group` (`menu_id`, `menu_option_id`)
VALUES
    (1, 1),
    (1, 2),
    (2, 3),
    (3, 1),
    (4, 4);


-- orders 테이블 데이터 삽입 (store_id 참조)
INSERT INTO `orders` (`store_id`, `delivery_address`, `order_date`, `order_state`)
VALUES
    (1, '서울시 강남구 고객주소', '2024-12-18 19:00:00', '0'),
    (2, '서울시 서초구 고객주소', '2024-12-18 19:30:00', '0'),
    (3, '서울시 종로구 고객주소', '2024-12-18 20:00:00', '1'),
    (4, '서울시 마포구 고객주소', '2024-12-18 20:30:00', '1'),
    (5, '서울시 광진구 고객주소', '2024-12-18 21:00:00', '2');


-- order_details 테이블 데이터 삽입 (order_id, menu_id 참조)
INSERT INTO `order_details` (`order_id`, `menu_id`)
VALUES
    (1, 1),
    (1, 2),
    (2, 3),
    (3, 4),
    (4, 5);


-- menu_option_details 테이블 데이터 삽입 (menu_option_id 참조)
-- order_detail_name은 BIGINT NOT NULL로 지정되어 있으나 의미가 불분명하므로 임의 값 사용
INSERT INTO `menu_option_details` (`menu_option_id`, `order_detail_name`, `additional_fee`)
VALUES
    (1, 101, 500),
    (1, 102, 1000),
    (2, 201, 300),
    (3, 301, 200),
    (4, 401, 400);


-- order_menu_option 테이블 데이터 삽입 (order_detail_id, menu_option_detail_id 참조)
-- order_detail_id: 1~5, menu_option_detail_id: 1~5
INSERT INTO `order_menu_option` (`order_detail_id`, `menu_option_detail_id`)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5);


-- guests 테이블 데이터 삽입 (order_id 참조)
INSERT INTO `guests` (`order_id`, `guest_nickname`, `profile_image`)
VALUES
    (1, 'guest001', '/images/profile/default.png'),
    (2, 'guest002', '/images/profile/default.png'),
    (3, 'guest003', '/images/profile/default.png'),
    (4, 'guest004', '/images/profile/default.png'),
    (5, 'guest005', '/images/profile/default.png');


-- reviews 테이블 데이터 삽입 (order_id, guest_id 참조)
INSERT INTO `reviews` (`order_id`, `guest_id`, `rating`, `review_date`, `review_content`, `is_reported`)
VALUES
    (1, 1, 5, '2024-12-18', '맛있어요!', FALSE),
    (2, 2, 4, '2024-12-18', '괜찮은 편입니다.', FALSE),
    (3, 3, 3, '2024-12-18', '보통이에요.', FALSE),
    (4, 4, 2, '2024-12-18', '아쉬웠습니다.', FALSE),
    (5, 5, 1, '2024-12-18', '별로였어요.', FALSE);


-- review_photos 테이블 데이터 삽입 (review_id 참조)
INSERT INTO `review_photos` (`review_id`, `photo_url`)
VALUES
    (1, '/images/review/review1.jpg'),
    (2, '/images/review/review2.jpg'),
    (3, '/images/review/review3.jpg'),
    (4, '/images/review/review4.jpg'),
    (5, '/images/review/review5.jpg');


-- review_event_notices 테이블 데이터 삽입 (store_id 참조)
INSERT INTO `review_event_notices` (`store_id`, `notice_photo_url`, `notice_text`)
VALUES
    (1, '/images/event/event1.jpg', '리뷰 쓰면 쿠폰 증정!'),
    (2, '/images/event/event2.jpg', '사진 리뷰 남기면 음료 서비스!'),
    (3, '/images/event/event3.jpg', '별점 5점 리뷰에 추가 토핑 제공!'),
    (4, '/images/event/event4.jpg', '리뷰 이벤트 참여 시 추첨을 통해 상품 증정'),
    (5, '/images/event/event5.jpg', '주문 후 리뷰 작성하면 포인트 적립');


-- review_comments 테이블 데이터 삽입 (review_id 참조)
INSERT INTO `review_comments` (`review_id`, `comment`, `comment_date`)
VALUES
    (1, '감사합니다! 더 노력하겠습니다.', '2024-12-18'),
    (2, '소중한 리뷰 감사합니다.', '2024-12-18'),
    (3, '피드백 감사해요. 더 개선하겠습니다.', '2024-12-18'),
    (4, '죄송합니다. 다음번엔 더 맛있게 준비하겠습니다.', '2024-12-18'),
    (5, '기대에 미치지 못해 죄송합니다.', '2024-12-18');

SELECT s.*
FROM stores s
         JOIN users u ON s.owner_id = u.id
WHERE u.user_id = 'user001'; -- 실제 존재하는 user_id를 이 곳에 넣어 테스트
