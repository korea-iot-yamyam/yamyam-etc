DROP DATABASE IF EXISTS `YAMYAM`;
CREATE DATABASE `YAMYAM`;
USE `YAMYAM`;

-- 주문 정보 테이블
CREATE TABLE `orders` (
	`id` BIGINT	PRIMARY KEY AUTO_INCREMENT,
    `store_id` BIGINT NOT NULL,
	`delivery_address` VARCHAR(255) NOT NULL,
	`total_price` INT NOT NULL,
	`order_date` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `order_state` ENUM('0', '1', '2') NOT NULL DEFAULT '0'
);


-- 주문 목록 내 주문 1개 상세 정보 테이블
CREATE TABLE `order_details` (
	`id` BIGINT	PRIMARY KEY AUTO_INCREMENT,
    `order_id` BIGINT NOT NULL,
    `menu_id` BIGINT NOT NULL,
	`order_product_name` VARCHAR(255) NOT NULL,
	`quantity` INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES `orders` (id) ON DELETE CASCADE
);

-- 주문 정보 50개 삽입
INSERT INTO orders (store_id, delivery_address, total_price, order_date, order_state)
VALUES 
      (1, '서울시 강남구 테헤란로 123', 25000, '2023-11-01 12:34:56', '0'),
    (2, '서울시 서초구 반포대로 456', 30000, '2024-11-02 13:45:56', '1'),
    (3, '서울시 송파구 올림픽로 789', 20000, '2024-11-03 14:56:56', '2'),
    (4, '서울시 마포구 양화로 987', 15000, '2024-11-04 15:10:30', '0'),
    (5, '서울시 강서구 방화대로 654', 27000, '2024-11-05 16:20:15', '1'),
    (6, '서울시 관악구 봉천로 123', 21000, '2024-11-06 17:34:20', '2'),
    (7, '서울시 동작구 사당로 789', 33000, '2024-11-07 10:25:40', '0'),
    (8, '서울시 은평구 갈현로 456', 18000, '2024-11-08 11:45:10', '1'),
    (9, '서울시 노원구 한글비석로 654', 29000, '2024-11-09 12:15:55', '2'),
    (10, '서울시 서대문구 통일로 987', 34000, '2024-11-10 13:35:25', '0'),
    (11, '서울시 성북구 보문로 123', 22000, '2024-11-11 14:45:35', '1'),
    (12, '서울시 강동구 고덕로 456', 26000, '2024-11-12 15:55:45', '2'),
    (13, '서울시 종로구 세종대로 654', 30000, '2024-11-13 16:20:30', '0'),
    (14, '서울시 중구 퇴계로 789', 21000, '2024-11-14 17:25:10', '1'),
    (15, '서울시 용산구 녹사평대로 987', 28000, '2024-11-15 18:30:50', '2'),
    (16, '서울시 광진구 광나루로 123', 25000, '2024-11-16 19:35:20', '0'),
    (17, '서울시 강북구 오패산로 456', 31000, '2024-11-17 20:40:30', '1'),
    (18, '서울시 금천구 시흥대로 789', 19000, '2024-11-18 21:45:40', '2'),
    (19, '서울시 양천구 목동서로 654', 32000, '2024-11-19 22:50:50', '0'),
    (20, '서울시 중랑구 망우로 123', 27000, '2024-11-20 23:55:10', '1'),
    (21, '서울시 도봉구 창동로 456', 24000, '2024-11-21 10:00:20', '2'),
    (22, '서울시 구로구 경인로 789', 35000, '2024-11-22 11:10:30', '0'),
    (23, '서울시 동대문구 약령시로 654', 20000, '2024-11-23 12:20:40', '1'),
    (24, '서울시 서초구 양재대로 987', 22000, '2024-11-24 13:30:50', '2'),
    (25, '서울시 강남구 학동로 123', 26000, '2024-11-25 14:40:10', '0'),
    (26, '서울시 송파구 중대로 456', 24000, '2024-11-26 15:50:20', '1'),
    (27, '서울시 마포구 독막로 789', 28000, '2024-11-27 16:05:30', '2'),
    (28, '서울시 양천구 신정로 654', 21000, '2024-11-28 17:15:40', '0'),
    (29, '서울시 서대문구 연희로 987', 25000, '2024-11-29 18:25:50', '1'),
    (30, '서울시 은평구 증산로 123', 27000, '2024-11-30 19:35:10', '2'),
    (31, '서울시 동작구 대방동로 456', 33000, '2024-12-01 20:45:20', '0'),
    (32, '서울시 관악구 행운로 789', 19000, '2024-12-02 21:55:30', '1'),
    (33, '서울시 구로구 고척로 654', 22000, '2024-12-03 10:05:40', '2'),
    (34, '서울시 금천구 독산로 987', 30000, '2024-12-04 11:15:50', '0'),
    (35, '서울시 강북구 솔샘로 123', 25000, '2024-12-05 12:25:10', '1'),
    (36, '서울시 중랑구 신내로 456', 28000, '2024-12-06 13:35:20', '2'),
    (37, '서울시 서대문구 홍제동로 789', 18000, '2024-12-07 14:45:30', '0'),
    (38, '서울시 종로구 율곡로 654', 29000, '2024-12-08 15:55:40', '1'),
    (39, '서울시 중구 장충단로 987', 31000, '2024-12-09 16:05:50', '2'),
    (40, '서울시 용산구 새천년로 123', 26000, '2024-12-10 17:15:10', '0'),
    (41, '서울시 광진구 자양로 456', 23000, '2024-12-11 18:25:20', '1'),
    (42, '서울시 강서구 마곡중앙로 789', 30000, '2024-12-12 19:35:30', '2'),
    (43, '서울시 은평구 불광로 654', 20000, '2024-12-13 20:45:40', '0'),
    (44, '서울시 도봉구 방학로 987', 24000, '2024-12-14 21:55:50', '1'),
    (45, '서울시 강남구 역삼로 123', 22000, '2024-12-15 10:05:10', '2'),
    (46, '서울시 서초구 강남대로 456', 32000, '2024-12-16 11:15:20', '0'),
    (47, '서울시 동작구 흑석로 789', 21000, '2024-12-17 12:25:30', '1'),
    (48, '서울시 강동구 천호대로 654', 27000, '2024-12-18 13:35:40', '2'),
    (49, '서울시 중구 동호로 987', 25000, '2024-12-19 14:45:50', '0'),
    (50, '서울시 마포구 상암로 123', 29000, '2024-12-20 15:55:10', '1');

-- 주문 상세 정보 50개 삽입
INSERT INTO order_details (order_id, menu_id, order_product_name, quantity)
VALUES 
    (1, 1, 'Fried Chicken', 2),
    (2, 2, 'Spicy Chicken', 1),
    (3, 3, 'Cheese Pizza', 3),
    (4, 4, 'Burger Set', 1),
    (5, 5, 'Beef Taco', 4),
    (6, 6, 'Pasta', 2),
    (7, 7, 'Salad', 1),
    (8, 8, 'Grilled Chicken', 3),
    (9, 9, 'Fish and Chips', 2),
    (10, 10, 'Sushi Set', 4),
    (11, 11, 'Ramen', 3),
    (12, 12, 'Bibimbap', 2),
    (13, 13, 'Fried Rice', 5),
    (14, 14, 'Kimbap', 2),
    (15, 15, 'Tempura', 3),
    (16, 16, 'Chicken Wings', 4),
    (17, 17, 'Hot Dog', 2),
    (18, 18, 'Steak', 1),
    (19, 19, 'Tonkatsu', 3),
    (20, 20, 'Kimchi Stew', 2),
    (21, 21, 'Pho', 1),
    (22, 22, 'Udon', 2),
    (23, 23, 'Grilled Pork', 3),
    (24, 24, 'Sandwich', 1),
    (25, 25, 'Nachos', 4),
    (26, 26, 'French Fries', 5),
    (27, 27, 'Bulgogi', 3),
    (28, 28, 'Tteokbokki', 2),
    (29, 29, 'Pancakes', 1),
    (30, 30, 'Pork Belly', 3),
    (31, 31, 'Ice Cream', 2),
    (32, 32, 'Chocolate Cake', 1),
    (33, 33, 'Fruit Salad', 4),
    (34, 34, 'Chicken Sandwich', 2),
    (35, 35, 'Veggie Wrap', 3),
    (36, 36, 'Mac and Cheese', 1),
    (37, 37, 'Omelette', 2),
    (38, 38, 'Chicken Curry', 3),
    (39, 39, 'Shrimp Pasta', 4),
    (40, 40, 'Caesar Salad', 2),
    (41, 41, 'Beef Burger', 3),
    (42, 42, 'Veggie Pizza', 2),
    (43, 43, 'Carbonara', 1),
    (44, 44, 'Garlic Bread', 2),
    (45, 45, 'Onion Rings', 3),
    (46, 46, 'Lobster Roll', 1),
    (47, 47, 'Seafood Paella', 4),
    (48, 48, 'Burrito', 2),
    (49, 49, 'Quesadilla', 3),
    (50, 50, 'Miso Soup', 1);

-- SELECT a.order_product_name,
--        SUM(a.quantity) AS total_quantity_sold        -- 판매된 총 수량 계산
-- FROM order_details as a
-- JOIN order_details ON orders.id = order_details.order_id          -- 주문디테일테이블에서 주문테이블.id = 주문디테일테이블.order_i
-- WHERE orders.store_id = 1 AND DATE(orders.order_date) = CURDATE() -- 특정 가게에서 오늘 주문된 항목 필터링

-- 주간
SELECT a.order_product_name,                          -- 판매된 메뉴 이름
       SUM(a.quantity) AS total_quantity_sold         -- 판매된 메뉴의 갯수 합 sum
FROM order_details AS a                               -- 오더 디테일 테이블
	JOIN orders as b ON a.order_id = b.id                 -- 오더스 디테일.order_id 와 오더스.id 와 같은것 조인
WHERE b.order_date BETWEEN '2024-12-05' AND '2024-12-07'
GROUP BY a.order_product_name;                        -- 오더디테일


-- 일간
SELECT a.order_product_name,                          -- 판매된 메뉴 이름
       SUM(a.quantity) AS total_quantity_sold         -- 판매된 메뉴의 갯수 합 sum
FROM order_details AS a                               -- 오더 디테일 테이블
	JOIN orders as b ON a.order_id = b.id             -- 
WHERE  YEAR(b.order_date) = 2024 AND MONTH(b.order_date) = 11 AND DAY(b.order_date) = 22
GROUP BY a.order_product_name;                        -- 오더디테일

-- 월간
SELECT a.order_product_name,                          -- 판매된 메뉴 이름
       SUM(a.quantity) AS total_quantity_sold         -- 판매된 메뉴의 갯수 합 sum
FROM order_details AS a                               -- 오더 디테일 테이블
	JOIN orders as b ON a.order_id = b.id             -- 
WHERE  YEAR(b.order_date) = 2024 AND MONTH(b.order_date) = 11 -- 변수로 받을 예정
GROUP BY a.order_product_name;                        -- 오더디테일


