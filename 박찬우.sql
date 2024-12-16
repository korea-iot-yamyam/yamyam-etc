DROP DATABASE IF EXISTS `YAMYAM`;
CREATE DATABASE `YAMYAM`;
USE `YAMYAM`;


-- 회원 정보 테이블
CREATE TABLE `users`
(
    `id`                    BIGINT PRIMARY KEY AUTO_INCREMENT,
    `user_id`               VARCHAR(255) NOT NULL UNIQUE,
    `user_pw`               VARCHAR(255) NOT NULL,
    `user_name`             VARCHAR(255) NOT NULL,
    `user_email`            VARCHAR(255) NOT NULL,
    `user_phone`            VARCHAR(30)  NOT NULL,
    `user_business_number`  VARCHAR(20)  NOT NULL UNIQUE,
    `privacy_policy_agreed` BOOLEAN      NOT NULL DEFAULT FALSE, -- 개인 정보 동의
    `marketing_agreed`      BOOLEAN      NOT NULL DEFAULT FALSE  -- 마케팅 수신 동의
);
INSERT INTO `users` (`id`, `user_id`, `user_pw`, `user_name`, `user_email`, `user_phone`, `user_business_number`,
                     `privacy_policy_agreed`, `marketing_agreed`)
VALUES (1, 'cksdngh1', 'password1', 'Owner One', 'owner1@example.com', '010-1111-1111', '1234567890', TRUE, TRUE),
       (2, 'owner2', 'password2', 'Owner Two', 'owner2@example.com', '010-2222-2222', '0987654321', TRUE, TRUE),
       (3, 'owner3', 'password3', 'Owner Three', 'owner3@example.com', '010-3333-3333', '1122334455', TRUE, TRUE),
       (4, 'owner4', 'password4', 'Owner Four', 'owner4@example.com', '010-4444-4444', '2233445566', TRUE, TRUE),
       (5, 'owner5', 'password5', 'Owner Five', 'owner5@example.com', '010-5555-5555', '3344556677', TRUE, TRUE),
       (6, 'owner6', 'password6', 'Owner Six', 'owner6@example.com', '010-6666-6666', '4455667788', TRUE, TRUE),
       (7, 'owner7', 'password7', 'Owner Seven', 'owner7@example.com', '010-7777-7777', '5566778899', TRUE, TRUE),
       (8, 'owner8', 'password8', 'Owner Eight', 'owner8@example.com', '010-8888-8888', '6677889900', TRUE, TRUE),
       (9, 'owner9', 'password9', 'Owner Nine', 'owner9@example.com', '010-9999-9999', '7788990011', TRUE, TRUE),
       (10, 'owner10', 'password10', 'Owner Ten', 'owner10@example.com', '010-1010-1010', '8899001122', TRUE, TRUE);


-- 가게 정보 테이블
-- stores.owner_id => users_id.id ( end )
-- 가게의 오너 => 사장님 가입 id
CREATE TABLE `stores`
(
    `id`               BIGINT PRIMARY KEY AUTO_INCREMENT,
    `owner_id`         BIGINT                                                                                                          NOT NULL,
    `store_name`       VARCHAR(255)                                                                                                    NOT NULL,
    `logo_url`         VARCHAR(255)                                                                                                    NOT NULL DEFAULT '/images/profile/default2.png',
    `category`         ENUM ('치킨', '중식', '돈까스_회', '피자', '패스트푸드', '찜_탕', '족발_보쌈', '분식', '카페_디저트', '한식', '고기', '양식', '아시안', '야식', '도시락') NOT NULL,
    `opening_time`     TIME                                                                                                            NOT NULL,
    `closing_time`     TIME                                                                                                            NOT NULL,
    `break_start_time` TIME,
    `break_end_time`   TIME,
    `address`          VARCHAR(255),
    `description`      TEXT,
    FOREIGN KEY (owner_id) REFERENCES `users` (id) ON DELETE CASCADE
);

-- stores.owner_id => users_id.id ( end )
-- 가게의 오너 => 사장님 가입 id
INSERT INTO `stores` (`id`, -- 가게 고유 id
                      `owner_id`, -- 사장 고유 id ( 가게 정보에는 반드시 한명의 사장님이 등록되어야 한다. stores.owner_id = users_id.id 동일한 값을 참조한다. )
                      `store_name`, -- 가게 이름
                      `logo_url`, -- 가게 로고
                      `category`, -- 가게 카테고리 ( ENUM('치킨', '중식', '돈까스_회', '피자', '패스트푸드', '찜_탕', '족발_보쌈', '분식', '카페_디저트', '한식', '고기', '양식', '아시안', '야식', '도시락') NOT NULL )
                      `opening_time`, -- 가게 오픈 시간 ( 형식 => "00:00:00" )
                      `closing_time`, -- 가게 마감 시간 ( 형식 => "00:00:00" )
                      `address`, -- 가게 주소지 ("부산시 사하구 다대로339 상가 2층 가마솥 통닭" ( 반드시 도로명 주소로 받을것 ))
                      `description` -- 가게 추가 설명
)
VALUES (1, 1, '치킨집1', '/images/profile/default2.png', '치킨', '10:00:00', '22:00:00', '서울시 강남구', '맛있는 치킨 전문점1'),
       (2, 2, '피자집1', '/images/profile/default2.png', '피자', '11:00:00', '23:00:00', '서울시 서초구', '신선한 피자 전문점1'),
       (3, 3, '중식당', '/images/profile/default2.png', '중식', '09:00:00', '21:00:00', '부산시 다대로339', '정통 중식 요리 전문점'),
       (4, 4, '버거샵1', '/images/profile/default2.png', '패스트푸드', '10:00:00', '22:00:00', '서울시 마포구', '빠르고 맛있는 버거1'),
       (5, 5, '타코집1', '/images/profile/default2.png', '아시안', '11:00:00', '23:00:00', '서울시 강서구', '정통 멕시칸 타코1'),
       (6, 6, '파스타하우스1', '/images/profile/default2.png', '양식', '10:00:00', '22:00:00', '서울시 관악구', '다양한 파스타 메뉴1'),
       (7, 7, '샐러드바1', '/images/profile/default2.png', '카페_디저트', '08:00:00', '20:00:00', '서울시 동작구', '신선한 샐러드와 음료1'),
       (8, 8, '그릴하우스1', '/images/profile/default2.png', '고기', '12:00:00', '24:00:00', '서울시 은평구', '최고급 그릴 요리1'),
       (9, 9, '피쉬앤칩스1', '/images/profile/default2.png', '양식', '11:00:00', '23:00:00', '서울시 노원구', '영국식 피쉬앤칩스 전문점1'),
       (10, 10, '가마솥 통닭', '/images/profile/default2.png', '치킨', '10:00:00', '22:00:00', '서울시 마포구 상암로 123',
        '대형 가마솥으로 더욱 맛있게 ~');


-- 주문 정보 테이블
-- order.id => store_id 
-- 주문 정보는 어디 가게에서 팔렸는지 주문 정보를 확인 가능
CREATE TABLE `orders`
(
    `id`               BIGINT PRIMARY KEY AUTO_INCREMENT,
    `store_id`         BIGINT               NOT NULL,
    `delivery_address` VARCHAR(255)         NOT NULL,
    `total_price`      INT                  NOT NULL,
    `order_date`       DATETIME             NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `order_state`      ENUM ('0', '1', '2') NOT NULL DEFAULT '0',
    FOREIGN KEY (store_id) REFERENCES `stores` (id) ON DELETE CASCADE
);

-- 주문 정보 50개 삽입
-- order.id => store_id 
INSERT INTO `orders` (`id`,               -- 주문 고유 id
                      `store_id`,         -- 가게 고유 id ( 주문 정보는 반드시 어디서 팔렸는지 가게 정보가 포함되어야 한다. )
                      `delivery_address`, -- 배달 주소
                      `total_price`,      -- 주문 가격 합
                      `order_date`,     -- 주문 날짜
                      `order_state`)      -- 주문 상태
VALUES (1, 1, '부산시 사하구 다대로339 219호', 0,'2024-11-02 12:34:56', '2'),
       (2, 1, '부산시 사하구 다대로339 219호', 0, '2024-11-02 12:34:57', '2'),
       (3, 2, '서울시 서초구 반포대로 456', 0, '2024-11-02 13:45:56', '2'),
       (4, 3, '서울시 송파구 올림픽로 789', 0, '2024-11-03 14:56:56', '2'),
       (5, 4, '서울시 마포구 양화로 987', 0, '2024-11-04 15:10:30', '2'),
       (6, 5, '서울시 강서구 방화대로 654',0 , '2024-11-05 16:20:15', '2'),
       (7, 6, '서울시 관악구 봉천로 123', 0, '2024-11-06 17:34:20', '2'),
       (8, 7, '서울시 동작구 사당로 789', 0, '2024-11-07 10:25:40', '2'),
       (9, 8, '서울시 은평구 갈현로 456', 0, '2024-11-08 11:45:10', '2'),
       (10, 9, '서울시 노원구 한글비석로 654', 0, '2024-11-09 12:15:55', '2');

-- 메뉴별 카테고리 테이블 (인기 메뉴, 세트 메뉴, 사이드메뉴, 음료 ...)
CREATE TABLE `menu_categories`
(
    `id`            BIGINT PRIMARY KEY AUTO_INCREMENT,
    `menu_category` VARCHAR(255) NOT NULL
);
INSERT INTO `menu_categories` (id, menu_category)
    VALUE (1, '세트 메뉴'),
    (2, '인기 메뉴'),
    (3, '음료'),
    (4, '디저트'),
    (5, '스페셜 메뉴'),
    (6, '어린이 메뉴'),
    (7, '커피'),
    (8, '라떼'),
    (9, '야식'),
    (10, '브런치');

-- 메뉴 정보 테이블
CREATE TABLE `menus`
(
    `id`               BIGINT PRIMARY KEY AUTO_INCREMENT,
    `store_id`         BIGINT       NOT NULL,
    `category_id`      BIGINT       NOT NULL,
    `menu_name`        VARCHAR(255) NOT NULL,
    `image_url`        VARCHAR(255)          DEFAULT '/images/profile/default1.png',
    `menu_description` TEXT,
    `menu_price`       INT          NOT NULL,
    `is_available`     BOOLEAN      NOT NULL DEFAULT TRUE,
    FOREIGN KEY (store_id) REFERENCES `stores` (id) ON DELETE CASCADE,
    FOREIGN KEY (category_id) REFERENCES `menu_categories` (id) ON DELETE CASCADE
);

INSERT INTO `menus` (id, store_id, category_id, menu_name, image_url, menu_description, menu_price, is_available)
    VALUE
    (1, 1, 1, '양념반 후라이드반', '/images/menus/chicken1.png','바삭바삭하고 매콤달콤한 치킨',25000,'1'),
    (2, 2, 2, '양념반 후라이드반', '/images/menus/chicken1.png','바삭바삭하고 매콤달콤한 치킨',25000,'1'),
    (3, 3, 3, '양념반 후라이드반', '/images/menus/chicken1.png','바삭바삭하고 매콤달콤한 치킨',25000,'1'),
    (4, 4, 4, '양념반 후라이드반', '/images/menus/chicken1.png','바삭바삭하고 매콤달콤한 치킨',25000,'1'),
    (5, 5, 5, '양념반 후라이드반', '/images/menus/chicken1.png','바삭바삭하고 매콤달콤한 치킨',25000,'1'),
    (6, 6, 6, '양념반 후라이드반', '/images/menus/chicken1.png','바삭바삭하고 매콤달콤한 치킨',25000,'1'),
    (7, 7, 7, '양념반 후라이드반', '/images/menus/chicken1.png','바삭바삭하고 매콤달콤한 치킨',25000,'1'),
    (8, 8, 8, '양념반 후라이드반', '/images/menus/chicken1.png','바삭바삭하고 매콤달콤한 치킨',25000,'1'),
    (9, 9, 9, '양념반 후라이드반', '/images/menus/chicken1.png','바삭바삭하고 매콤달콤한 치킨',25000,'1'),
    (10, 10, 10, '양념반 후라이드반', '/images/menus/chicken1.png','바삭바삭하고 매콤달콤한 치킨',25000,'1');


-- 주문 목록 내 주문 1개 상세 정보 테이블
CREATE TABLE `order_details`
(
    `id`       BIGINT PRIMARY KEY AUTO_INCREMENT,
    `order_id` BIGINT NOT NULL,
    `menu_id`  BIGINT NOT NULL,
    `quantity` INT    NOT NULL,
    FOREIGN KEY (order_id) REFERENCES `orders` (id) ON DELETE CASCADE,
    FOREIGN KEY (menu_id) REFERENCES `menus` (id) ON DELETE CASCADE
);


-- 주문 상세 정보 50개 삽입
INSERT INTO `order_details` (`id`, `order_id`, `menu_id`, `quantity`)
VALUES (1, 1, 1, 1),
       (2, 2, 2, 2),
       (3, 3, 3, 3),
       (4, 4, 4, 4),
       (5, 5, 5, 5),
       (6, 6, 6, 6),
       (7, 7, 7, 7),
       (8, 8, 8, 8),
       (9, 9, 9, 9),
       (10, 10, 10, 10);

CREATE VIEW order_with_total_price AS
SELECT
    o.id AS order_id,
    o.store_id,
    o.delivery_address,
    o.order_date,
    o.order_state,
    SUM(od.quantity * m.menu_price) AS total_price
FROM orders o
         JOIN order_details od ON o.id = od.order_id
         JOIN menus m ON od.menu_id = m.id
GROUP BY o.id;



SELECT DATE(o.order_date)              AS order_date,
       m.menu_name,
       SUM(od.quantity)                AS total_quantity,
       SUM(od.quantity * m.menu_price) AS total_sales
FROM orders o
         JOIN order_details od ON o.id = od.order_id
         JOIN menus m ON od.menu_id = m.id
WHERE DATE(o.order_date) = :orderDate -- 원하는 날짜로 변경하세요
  AND o.store_id = :storeId             -- 특정 가게 ID로 필터링
GROUP BY DATE(o.order_date),
         m.menu_name;

SELECT * FROM order_with_total_price WHERE order_id = 1;
SELECT * FROM orders;
#
# -- 주간
# SELECT m.menu_name,                                       -- 판매된 메뉴 이름
#        SUM(od.quantity) AS total_quantity,                -- 판매된 메뉴의 갯수 합 sum
#        SUM(od.quantity * m.menu_price) AS total_price     -- 판매된 메뉴의 가격 총 합 sum
# FROM order_details AS od                                  -- 오더 디테일 테이블
#          JOIN menus AS m ON od.menu_id = m.id  -- 오더
#          JOIN orders AS o ON od.order_id = o.id
# WHERE o.order_date BETWEEN '2024-11-01' AND '2024-11-07'
# GROUP BY m.menu_name;


# -- 월간
# SELECT a.order_product_name,                  -- 판매된 메뉴 이름
#        SUM(a.quantity) AS total_quantity_sold -- 판매된 메뉴의 갯수 합 sum
# FROM order_details AS a -- 오더 디테일 테이블
#          JOIN orders as b ON a.order_id = b.id --
# WHERE YEAR(b.order_date) = 2024
#   AND MONTH(b.order_date) = 11 -- 변수로 받을 예정
# GROUP BY a.order_product_name;
# -- 오더디테일


-- 손님 정보 테이블
CREATE TABLE `guests`
(
    `id`            BIGINT       NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `order_id`      BIGINT       NOT NULL,
    `nickname`      VARCHAR(255) NOT NULL UNIQUE,
    `profile_image` VARCHAR(255) DEFAULT '/images/profile/default.png',
    FOREIGN KEY (order_id) REFERENCES `orders` (id) ON DELETE CASCADE
);
INSERT INTO `guests` (`id`, `order_id`, `nickname`, `profile_image`)
VALUES (1, 1, 'GuestUser1', '/images/profile/guest1.png'),
       (2, 2, 'GuestUser2', '/images/profile/guest2.png'),
       (3, 3, 'GuestUser3', '/images/profile/guest3.png'),
       (4, 4, 'GuestUser4', '/images/profile/guest4.png'),
       (5, 5, 'GuestUser5', '/images/profile/guest5.png'),
       (6, 6, 'GuestUser6', '/images/profile/guest6.png'),
       (7, 7, 'GuestUser7', '/images/profile/guest7.png'),
       (8, 8, 'GuestUser8', '/images/profile/guest8.png'),
       (9, 9, 'GuestUser9', '/images/profile/guest9.png'),
       (10, 10, 'GuestUser10', '/images/profile/guest10.png');

-- 리뷰 정보 테이블
CREATE TABLE `reviews`
(
    `id`             BIGINT PRIMARY KEY AUTO_INCREMENT,
    `order_id`       BIGINT NOT NULL,
    `guest_id`       BIGINT NOT NULL,
    `rating`         INT,                   -- 별점
    `review_date`    DATE   NOT NULL,
    `review_content` TEXT,
    `is_reported`    BOOLEAN DEFAULT FALSE, -- 신고 기능
    FOREIGN KEY (order_id) REFERENCES `orders` (id) ON DELETE CASCADE,
    FOREIGN KEY (guest_id) REFERENCES `guests` (id) ON DELETE CASCADE
);


INSERT INTO `reviews` (`id`, `order_id`, `guest_id`, `rating`, `review_date`, `review_content`, `is_reported`)
VALUES (1, 1, 1, 4, '2023-11-01', '최고의 경험이었어요!', FALSE),
       (2, 2, 2, 4, '2023-11-01', '좋았지만 개선할 점이 있어요.', FALSE),
       (3, 3, 3, 4, '2023-11-01', '평범했어요.', FALSE),
       (4, 4, 4, 4, '2023-11-01', '배송에 문제가 있었어요.', FALSE),
       (5, 5, 5, 4, '2023-11-01', '서비스가 좋지 않았어요.', FALSE),
       (6, 6, 6, 4, '2023-11-01', '최고의 경험이었어요!', FALSE),
       (7, 7, 7, 4, '2023-11-01', '좋았지만 개선할 점이 있어요.', FALSE),
       (8, 8, 8, 4, '2023-11-01', '평범했어요.', FALSE),
       (9, 9, 9, 4, '2023-11-01', '배송에 문제가 있었어요.', FALSE),
       (10, 10, 10, 4, '2023-11-01', '서비스가 좋지 않았어요.', FALSE);


-- 리뷰 사진 테이블
CREATE TABLE `review_photos`
(
    `id`        BIGINT PRIMARY KEY AUTO_INCREMENT,
    `review_id` BIGINT NOT NULL,
    `photo_url` VARCHAR(255),
    FOREIGN KEY (review_id) REFERENCES `reviews` (id) ON DELETE CASCADE
);
INSERT INTO `review_photos` (`id`, `review_id`, `photo_url`)
VALUES (1, 1, '/images/reviews/photo1.png'),
       (2, 2, '/images/reviews/photo2.png'),
       (3, 3, '/images/reviews/photo3.png'),
       (4, 4, '/images/reviews/photo4.png'),
       (5, 5, '/images/reviews/photo5.png'),
       (6, 6, '/images/reviews/photo6.png'),
       (7, 7, '/images/reviews/photo7.png'),
       (8, 8, '/images/reviews/photo8.png'),
       (9, 9, '/images/reviews/photo9.png'),
       (10, 10, '/images/reviews/photo10.png');

-- 작성된 리뷰에 대한 답글 테이블
CREATE TABLE `review_comments`
(
    `id`           BIGINT PRIMARY KEY AUTO_INCREMENT,
    `review_id`    BIGINT NOT NULL,
    `comment`      TEXT   NOT NULL,
    `comment_date` DATE   NOT NULL,
    FOREIGN KEY (review_id) REFERENCES `reviews` (id) ON DELETE CASCADE
);
INSERT INTO `review_comments` (`id`, `review_id`, `comment`, `comment_date`)
VALUES (1, 1, '소중한 의견 감사합니다!', '2023-11-01'),
       (2, 2, '피드백 감사드리며 개선하겠습니다.', '2023-11-01'),
       (3, 3, '불편을 드려 죄송합니다. 개선하겠습니다.', '2023-11-01'),
       (4, 4, '이용에 불편을 드려 죄송합니다.', '2023-11-01'),
       (5, 5, '고객님의 의견에 감사드립니다.', '2023-11-01'),
       (6, 6, '소중한 의견 감사합니다!', '2023-11-01'),
       (7, 7, '피드백 감사드리며 개선하겠습니다.', '2023-11-01'),
       (8, 8, '불편을 드려 죄송합니다. 개선하겠습니다.', '2023-11-01'),
       (9, 9, '이용에 불편을 드려 죄송합니다.', '2023-11-01'),
       (10, 10, '고객님의 의견에 감사드립니다.', '2023-11-01');


# -- 리뷰 전체 조회
# SELECT r.id                                              AS review_id,
#        g.profile_image,
#        g.nickname,
#        r.rating,
#        DATE_FORMAT(r.review_date, '%Y-%m-%d %H:%i:%s')   AS review_date,
#        r.review_content,
#        r.is_reported,
#        GROUP_CONCAT(rp.photo_url)                        AS photo_url,
#        rc.comment                                        AS comments,
#        DATE_FORMAT(rc.comment_date, '%Y-%m-%d %H:%i:%s') AS comment_date
# FROM reviews r
#          JOIN
#      guests g ON r.guest_id = g.id
#          LEFT JOIN
#      review_photos rp ON r.id = rp.review_id
#          LEFT JOIN
#      review_comments rc ON r.id = rc.review_id
# GROUP BY r.id, g.profile_image, g.nickname, r.rating, r.review_date, r.review_content, r.is_reported, rc.comment,
#          rc.comment_date;
#
# -- 미답변 리뷰 조회
# SELECT r.id                                              AS review_id,
#        g.profile_image,
#        g.nickname,
#        r.rating,
#        DATE_FORMAT(r.review_date, '%Y-%m-%d %H:%i:%s')   AS review_date,
#        r.review_content,
#        r.is_reported,
#        GROUP_CONCAT(rp.photo_url)                        AS photo_url,
#        rc.comment                                        AS comments,
#        DATE_FORMAT(rc.comment_date, '%Y-%m-%d %H:%i:%s') AS comment_date
# FROM reviews r
#          JOIN
#      guests g ON r.guest_id = g.id
#          LEFT JOIN
#      review_photos rp ON r.id = rp.review_id
#          LEFT JOIN
#      review_comments rc ON r.id = rc.review_id
# WHERE rc.comment IS NULL
# GROUP BY r.id, g.profile_image, g.nickname, r.rating, r.review_date, r.review_content, r.is_reported, rc.comment,
#          rc.comment_date;
#