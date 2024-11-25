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
INSERT INTO `users` (`id`, `user_id`, `user_pw`, `user_name`, `user_email`, `user_phone`, `user_business_number`, `privacy_policy_agreed`, `marketing_agreed`)
VALUES
(1, 'owner1', 'password1', 'Owner One', 'owner1@example.com', '010-1111-1111', '1234567890', TRUE, TRUE),
(2, 'owner2', 'password2', 'Owner Two', 'owner2@example.com', '010-2222-2222', '0987654321', TRUE, TRUE),
(3, 'owner3', 'password3', 'Owner Three', 'owner3@example.com', '010-3333-3333', '1122334455', TRUE, TRUE),
(4, 'owner4', 'password4', 'Owner Four', 'owner4@example.com', '010-4444-4444', '2233445566', TRUE, TRUE),
(5, 'owner5', 'password5', 'Owner Five', 'owner5@example.com', '010-5555-5555', '3344556677', TRUE, TRUE),
(6, 'owner6', 'password6', 'Owner Six', 'owner6@example.com', '010-6666-6666', '4455667788', TRUE, TRUE),
(7, 'owner7', 'password7', 'Owner Seven', 'owner7@example.com', '010-7777-7777', '5566778899', TRUE, TRUE),
(8, 'owner8', 'password8', 'Owner Eight', 'owner8@example.com', '010-8888-8888', '6677889900', TRUE, TRUE),
(9, 'owner9', 'password9', 'Owner Nine', 'owner9@example.com', '010-9999-9999', '7788990011', TRUE, TRUE),
(10, 'owner10', 'password10', 'Owner Ten', 'owner10@example.com', '010-1010-1010', '8899001122', TRUE, TRUE),
(11, 'owner11', 'password11', 'Owner Eleven', 'owner11@example.com', '010-1111-1112', '9911223344', TRUE, TRUE),
(12, 'owner12', 'password12', 'Owner Twelve', 'owner12@example.com', '010-1212-1212', '1011121314', TRUE, TRUE),
(13, 'owner13', 'password13', 'Owner Thirteen', 'owner13@example.com', '010-1313-1313', '1112131415', TRUE, TRUE),
(14, 'owner14', 'password14', 'Owner Fourteen', 'owner14@example.com', '010-1414-1414', '1213141516', TRUE, TRUE),
(15, 'owner15', 'password15', 'Owner Fifteen', 'owner15@example.com', '010-1515-1515', '1314151617', TRUE, TRUE),
(16, 'owner16', 'password16', 'Owner Sixteen', 'owner16@example.com', '010-1616-1616', '1415161718', TRUE, TRUE),
(17, 'owner17', 'password17', 'Owner Seventeen', 'owner17@example.com', '010-1717-1717', '1516171819', TRUE, TRUE),
(18, 'owner18', 'password18', 'Owner Eighteen', 'owner18@example.com', '010-1818-1818', '1617181920', TRUE, TRUE),
(19, 'owner19', 'password19', 'Owner Nineteen', 'owner19@example.com', '010-1919-1919', '1718192021', TRUE, TRUE),
(20, 'owner20', 'password20', 'Owner Twenty', 'owner20@example.com', '010-2020-2020', '1819202122', TRUE, TRUE),
(21, 'owner21', 'password21', 'Owner Twenty-One', 'owner21@example.com', '010-2121-2121', '1920212223', TRUE, TRUE),
(22, 'owner22', 'password22', 'Owner Twenty-Two', 'owner22@example.com', '010-2222-2223', '2021222324', TRUE, TRUE),
(23, 'owner23', 'password23', 'Owner Twenty-Three', 'owner23@example.com', '010-2323-2323', '2122232425', TRUE, TRUE),
(24, 'owner24', 'password24', 'Owner Twenty-Four', 'owner24@example.com', '010-2424-2424', '2223242526', TRUE, TRUE),
(25, 'owner25', 'password25', 'Owner Twenty-Five', 'owner25@example.com', '010-2525-2525', '2324252627', TRUE, TRUE),
(26, 'owner26', 'password26', 'Owner Twenty-Six', 'owner26@example.com', '010-2626-2626', '2425262728', TRUE, TRUE),
(27, 'owner27', 'password27', 'Owner Twenty-Seven', 'owner27@example.com', '010-2727-2727', '2526272829', TRUE, TRUE),
(28, 'owner28', 'password28', 'Owner Twenty-Eight', 'owner28@example.com', '010-2828-2828', '2627282930', TRUE, TRUE),
(29, 'owner29', 'password29', 'Owner Twenty-Nine', 'owner29@example.com', '010-2929-2929', '2728293031', TRUE, TRUE),
(30, 'owner30', 'password30', 'Owner Thirty', 'owner30@example.com', '010-3030-3030', '2830313233', TRUE, TRUE),
(31, 'owner31', 'password31', 'Owner Thirty-One', 'owner31@example.com', '010-3131-3131', '2930323334', TRUE, TRUE),
(32, 'owner32', 'password32', 'Owner Thirty-Two', 'owner32@example.com', '010-3232-3232', '3031333435', TRUE, TRUE),
(33, 'owner33', 'password33', 'Owner Thirty-Three', 'owner33@example.com', '010-3333-3333', '3132343536', TRUE, TRUE),
(34, 'owner34', 'password34', 'Owner Thirty-Four', 'owner34@example.com', '010-3434-3434', '3233353637', TRUE, TRUE),
(35, 'owner35', 'password35', 'Owner Thirty-Five', 'owner35@example.com', '010-3535-3535', '3334363738', TRUE, TRUE),
(36, 'owner36', 'password36', 'Owner Thirty-Six', 'owner36@example.com', '010-3636-3636', '3435373839', TRUE, TRUE),
(37, 'owner37', 'password37', 'Owner Thirty-Seven', 'owner37@example.com', '010-3737-3737', '3536383940', TRUE, TRUE),
(38, 'owner38', 'password38', 'Owner Thirty-Eight', 'owner38@example.com', '010-3838-3838', '3637394041', TRUE, TRUE),
(39, 'owner39', 'password39', 'Owner Thirty-Nine', 'owner39@example.com', '010-3939-3939', '3738404142', TRUE, TRUE),
(40, 'owner40', 'password40', 'Owner Forty', 'owner40@example.com', '010-4040-4040', '3840414243', TRUE, TRUE),
(41, 'owner41', 'password41', 'Owner Forty-One', 'owner41@example.com', '010-4141-4141', '3941424344', TRUE, TRUE),
(42, 'owner42', 'password42', 'Owner Forty-Two', 'owner42@example.com', '010-4242-4242', '4042434445', TRUE, TRUE),
(43, 'owner43', 'password43', 'Owner Forty-Three', 'owner43@example.com', '010-4343-4343', '4143444546', TRUE, TRUE),
(44, 'owner44', 'password44', 'Owner Forty-Four', 'owner44@example.com', '010-4444-4445', '4244454647', TRUE, TRUE),
(45, 'owner45', 'password45', 'Owner Forty-Five', 'owner45@example.com', '010-4545-4545', '4345464748', TRUE, TRUE),
(46, 'owner46', 'password46', 'Owner Forty-Six', 'owner46@example.com', '010-4646-4646', '4446474849', TRUE, TRUE),
(47, 'owner47', 'password47', 'Owner Forty-Seven', 'owner47@example.com', '010-4747-4747', '4547484950', TRUE, TRUE),
(48, 'owner48', 'password48', 'Owner Forty-Eight', 'owner48@example.com', '010-4848-4848', '4648495051', TRUE, TRUE),
(49, 'owner49', 'password49', 'Owner Forty-Nine', 'owner49@example.com', '010-4949-4949', '4749505152', TRUE, TRUE),
(50, 'owner50', 'password50', 'Owner Fifty', 'owner50@example.com', '010-5050-5050', '4850515253', TRUE, TRUE);




-- 가게 정보 테이블
CREATE TABLE `stores` (
	`id` BIGINT	PRIMARY KEY AUTO_INCREMENT,
	`owner_id` BIGINT NOT NULL,
	`store_name` VARCHAR(255) NOT NULL,
	`logo_url`	VARCHAR(255) NOT NULL DEFAULT "/images/profile/default2.png",
	`category` ENUM('치킨', '중식', '돈까스_회', '피자', '패스트푸드', '찜_탕', '족발_보쌈', '분식', '카페_디저트', '한식', '고기', '양식', '아시안', '야식', '도시락') NOT NULL,
	`opening_time` TIME	NOT NULL,
	`closing_time` TIME NOT NULL,
	`break_start_time` TIME,
	`break_end_time` TIME,
	`address` VARCHAR(255),
	`description` TEXT,
    FOREIGN KEY (owner_id) REFERENCES `users` (id) ON DELETE CASCADE
);

-- stores.owner_id => users_id.id ( 엔드 )
INSERT INTO `stores` (
					  `id`,           -- 가게 고유 id
					  `owner_id`,	  -- 사장님 고유 id ( 가게 정보에는 반드시 한명의 사장님이 등록되어야 한다. stores.owner_id = users_id.id 동일한 값을 참조한다.
					  `store_name`,   -- 가게 이름
                      `logo_url`,     -- 가게 로고
                      `category`,     -- 가게 카테고리 ( ENUM('치킨', '중식', '돈까스_회', '피자', '패스트푸드', '찜_탕', '족발_보쌈', '분식', '카페_디저트', '한식', '고기', '양식', '아시안', '야식', '도시락') NOT NULL )
                      `opening_time`, -- 가게 오픈 시간 ( 형식 => "00:00:00" )
                      `closing_time`, -- 가게 마감 시간 ( 형식 => "00:00:00" )
                      `address`,      -- 가게 주소지 ("부산시 사하구 다대로339 상가 2층 가마솥 통닭" ( 반드시 도로명 주소로 받을것 )) 
                      `description`   -- 가게 추가 설명
                      )
VALUES
(1, 1, '치킨집1', '/images/profile/default2.png', '치킨', '10:00:00', '22:00:00', '서울시 강남구', '맛있는 치킨 전문점1'),
(2, 2, '피자집1', '/images/profile/default2.png', '피자', '11:00:00', '23:00:00', '서울시 서초구', '신선한 피자 전문점1'),
(3, 3, '중식당1', '/images/profile/default2.png', '중식', '09:00:00', '21:00:00', '서울시 송파구', '정통 중식 요리 전문점1'),
(4, 4, '버거샵1', '/images/profile/default2.png', '패스트푸드', '10:00:00', '22:00:00', '서울시 마포구', '빠르고 맛있는 버거1'),
(5, 5, '타코집1', '/images/profile/default2.png', '아시안', '11:00:00', '23:00:00', '서울시 강서구', '정통 멕시칸 타코1'),
(6, 6, '파스타하우스1', '/images/profile/default2.png', '양식', '10:00:00', '22:00:00', '서울시 관악구', '다양한 파스타 메뉴1'),
(7, 7, '샐러드바1', '/images/profile/default2.png', '카페_디저트', '08:00:00', '20:00:00', '서울시 동작구', '신선한 샐러드와 음료1'),
(8, 8, '그릴하우스1', '/images/profile/default2.png', '고기', '12:00:00', '24:00:00', '서울시 은평구', '최고급 그릴 요리1'),
(9, 9, '피쉬앤칩스1', '/images/profile/default2.png', '양식', '11:00:00', '23:00:00', '서울시 노원구', '영국식 피쉬앤칩스 전문점1'),
(10, 10, '가마솥 통닭', '/images/profile/default2.png', '치킨', '10:00:00', '22:00:00', '서울시 마포구 상암로 123', '대형 가마솥으로 더욱 맛있게 ~'),
(11, 11, '치킨집2', '/images/profile/default2.png', '치킨', '10:30:00', '22:30:00', '서울시 성북구', '맛있는 치킨 전문점2'),
(12, 12, '피자집2', '/images/profile/default2.png', '피자', '11:30:00', '23:30:00', '서울시 강동구', '신선한 피자 전문점2'),
(13, 13, '중식당2', '/images/profile/default2.png', '중식', '09:30:00', '21:30:00', '서울시 종로구', '정통 중식 요리 전문점2'),
(14, 14, '버거샵2', '/images/profile/default2.png', '패스트푸드', '10:30:00', '22:30:00', '서울시 중구', '빠르고 맛있는 버거2'),
(15, 15, '타코집2', '/images/profile/default2.png', '아시안', '11:30:00', '23:30:00', '서울시 용산구', '정통 멕시칸 타코2'),
(16, 16, '파스타하우스2', '/images/profile/default2.png', '양식', '10:30:00', '22:30:00', '서울시 광진구', '다양한 파스타 메뉴2'),
(17, 17, '샐러드바2', '/images/profile/default2.png', '카페_디저트', '08:30:00', '20:30:00', '서울시 강북구', '신선한 샐러드와 음료2'),
(18, 18, '그릴하우스2', '/images/profile/default2.png', '고기', '12:30:00', '00:30:00', '서울시 금천구', '최고급 그릴 요리2'),
(19, 19, '피쉬앤칩스2', '/images/profile/default2.png', '양식', '11:30:00', '23:30:00', '서울시 양천구', '영국식 피쉬앤칩스 전문점2'),
(20, 20, '스시야2', '/images/profile/default2.png', '돈까스_회', '10:30:00', '22:30:00', '서울시 중랑구', '신선한 스시와 사시미2'),
(21, 21, '치킨집3', '/images/profile/default2.png', '치킨', '10:00:00', '22:00:00', '서울시 도봉구', '맛있는 치킨 전문점3'),
(22, 22, '피자집3', '/images/profile/default2.png', '피자', '11:00:00', '23:00:00', '서울시 구로구', '신선한 피자 전문점3'),
(23, 23, '중식당3', '/images/profile/default2.png', '중식', '09:00:00', '21:00:00', '서울시 동대문구', '정통 중식 요리 전문점3'),
(24, 24, '버거샵3', '/images/profile/default2.png', '패스트푸드', '10:00:00', '22:00:00', '서울시 서초구', '빠르고 맛있는 버거3'),
(25, 25, '타코집3', '/images/profile/default2.png', '아시안', '11:00:00', '23:00:00', '서울시 강남구', '정통 멕시칸 타코3'),
(26, 26, '파스타하우스3', '/images/profile/default2.png', '양식', '10:00:00', '22:00:00', '서울시 송파구', '다양한 파스타 메뉴3'),
(27, 27, '샐러드바3', '/images/profile/default2.png', '카페_디저트', '08:00:00', '20:00:00', '서울시 마포구', '신선한 샐러드와 음료3'),
(28, 28, '그릴하우스3', '/images/profile/default2.png', '고기', '12:00:00', '24:00:00', '서울시 양천구', '최고급 그릴 요리3'),
(29, 29, '피쉬앤칩스3', '/images/profile/default2.png', '양식', '11:00:00', '23:00:00', '서울시 서대문구', '영국식 피쉬앤칩스 전문점3'),
(30, 30, '스시야3', '/images/profile/default2.png', '돈까스_회', '10:00:00', '22:00:00', '서울시 은평구', '신선한 스시와 사시미3'),
(31, 31, '치킨집4', '/images/profile/default2.png', '치킨', '10:00:00', '22:00:00', '서울시 동작구', '맛있는 치킨 전문점4'),
(32, 32, '피자집4', '/images/profile/default2.png', '피자', '11:00:00', '23:00:00', '서울시 관악구', '신선한 피자 전문점4'),
(33, 33, '중식당4', '/images/profile/default2.png', '중식', '09:00:00', '21:00:00', '서울시 구로구', '정통 중식 요리 전문점4'),
(34, 34, '버거샵4', '/images/profile/default2.png', '패스트푸드', '10:00:00', '22:00:00', '서울시 금천구', '빠르고 맛있는 버거4'),
(35, 35, '타코집4', '/images/profile/default2.png', '아시안', '11:00:00', '23:00:00', '서울시 강북구', '정통 멕시칸 타코4'),
(36, 36, '파스타하우스4', '/images/profile/default2.png', '양식', '10:00:00', '22:00:00', '서울시 중랑구', '다양한 파스타 메뉴4'),
(37, 37, '샐러드바4', '/images/profile/default2.png', '카페_디저트', '08:00:00', '20:00:00', '서울시 서대문구', '신선한 샐러드와 음료4'),
(38, 38, '그릴하우스4', '/images/profile/default2.png', '고기', '12:00:00', '24:00:00', '서울시 종로구', '최고급 그릴 요리4'),
(39, 39, '피쉬앤칩스4', '/images/profile/default2.png', '양식', '11:00:00', '23:00:00', '서울시 중구', '영국식 피쉬앤칩스 전문점4'),
(40, 40, '스시야4', '/images/profile/default2.png', '돈까스_회', '10:00:00', '22:00:00', '서울시 용산구', '신선한 스시와 사시미4'),
(41, 41, '치킨집5', '/images/profile/default2.png', '치킨', '10:00:00', '22:00:00', '서울시 광진구', '맛있는 치킨 전문점5'),
(42, 42, '피자집5', '/images/profile/default2.png', '피자', '11:00:00', '23:00:00', '서울시 강서구', '신선한 피자 전문점5'),
(43, 43, '중식당5', '/images/profile/default2.png', '중식', '09:00:00', '21:00:00', '서울시 은평구', '정통 중식 요리 전문점5'),
(44, 44, '버거샵5', '/images/profile/default2.png', '패스트푸드', '10:00:00', '22:00:00', '서울시 도봉구', '빠르고 맛있는 버거5'),
(45, 45, '타코집5', '/images/profile/default2.png', '아시안', '11:00:00', '23:00:00', '서울시 강남구', '정통 멕시칸 타코5'),
(46, 46, '파스타하우스5', '/images/profile/default2.png', '양식', '10:00:00', '22:00:00', '서울시 서초구', '다양한 파스타 메뉴5'),
(47, 47, '샐러드바5', '/images/profile/default2.png', '카페_디저트', '08:00:00', '20:00:00', '서울시 동작구', '신선한 샐러드와 음료5'),
(48, 48, '그릴하우스5', '/images/profile/default2.png', '고기', '12:00:00', '24:00:00', '서울시 강동구', '최고급 그릴 요리5'),
(49, 49, '피쉬앤칩스5', '/images/profile/default2.png', '양식', '11:00:00', '23:00:00', '서울시 중구', '영국식 피쉬앤칩스 전문점5'),
(50, 50, '스시야5', '/images/profile/default2.png', '돈까스_회', '10:00:00', '22:00:00', '서울시 마포구', '신선한 스시와 사시미5');


-- 주문 정보 테이블
CREATE TABLE `orders` (
	`id` BIGINT	PRIMARY KEY AUTO_INCREMENT,
    `store_id` BIGINT NOT NULL,
	`delivery_address` VARCHAR(255) NOT NULL,
	`total_price` INT NOT NULL,
	`order_date` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `order_state` ENUM('0', '1', '2') NOT NULL DEFAULT '0',
    FOREIGN KEY (store_id) REFERENCES `stores` (id) ON DELETE CASCADE
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
INSERT INTO `orders` (`id`, `store_id`, `delivery_address`, `total_price`, `order_date`, `order_state`)
VALUES 
(1, 1, '서울시 강남구 테헤란로 123', 25000, '2023-11-01 12:34:56', '2'),
(2, 2, '서울시 서초구 반포대로 456', 30000, '2024-11-02 13:45:56', '2'),
(3, 3, '서울시 송파구 올림픽로 789', 20000, '2024-11-03 14:56:56', '2'),
(4, 4, '서울시 마포구 양화로 987', 15000, '2024-11-04 15:10:30', '2'),
(5, 5, '서울시 강서구 방화대로 654', 27000, '2024-11-05 16:20:15', '2'),
(6, 6, '서울시 관악구 봉천로 123', 21000, '2024-11-06 17:34:20', '2'),
(7, 7, '서울시 동작구 사당로 789', 33000, '2024-11-07 10:25:40', '2'),
(8, 8, '서울시 은평구 갈현로 456', 18000, '2024-11-08 11:45:10', '2'),
(9, 9, '서울시 노원구 한글비석로 654', 29000, '2024-11-09 12:15:55', '2'),
(10, 10, '서울시 서대문구 통일로 987', 34000, '2024-11-10 13:35:25', '2'),
(11, 1, '서울시 성북구 보문로 123', 22000, '2024-11-11 14:45:35', '2'),
(12, 2, '서울시 강동구 고덕로 456', 26000, '2024-11-12 15:55:45', '2'),
(13, 3, '서울시 종로구 세종대로 654', 30000, '2024-11-13 16:20:30', '2'),
(14, 4, '서울시 중구 퇴계로 789', 21000, '2024-11-14 17:25:10', '0'),
(15, 5, '서울시 용산구 녹사평대로 987', 28000, '2024-11-15 18:30:50', '2'),
(16, 6, '서울시 광진구 광나루로 123', 25000, '2024-11-16 19:35:20', '2'),
(17, 7, '서울시 강북구 오패산로 456', 31000, '2024-11-17 20:40:30', '2'),
(18, 8, '서울시 금천구 시흥대로 789', 19000, '2024-11-18 21:45:40', '2'),
(19, 9, '서울시 양천구 목동서로 654', 32000, '2024-11-19 22:50:50', '0'),
(20, 10, '서울시 중랑구 망우로 123', 27000, '2024-11-20 23:55:10', '2'),
(21, 1, '서울시 도봉구 창동로 456', 24000, '2024-11-21 10:00:20', '2'),
(22, 2, '서울시 구로구 경인로 789', 35000, '2024-11-22 11:10:30', '0'),
(23, 3, '서울시 동대문구 약령시로 654', 20000, '2024-11-23 12:20:40', '1'),
(24, 4, '서울시 서초구 양재대로 987', 22000, '2024-11-24 13:30:50', '2'),
(25, 5, '서울시 강남구 학동로 123', 26000, '2024-11-25 14:40:10', '0'),
(26, 6, '서울시 송파구 중대로 456', 24000, '2024-11-26 15:50:20', '1'),
(27, 7, '서울시 마포구 독막로 789', 28000, '2024-11-27 16:05:30', '2'),
(28, 8, '서울시 양천구 신정로 654', 21000, '2024-11-28 17:15:40', '0'),
(29, 9, '서울시 서대문구 연희로 987', 25000, '2024-11-29 18:25:50', '1'),
(30, 10, '서울시 은평구 증산로 123', 27000, '2024-11-30 19:35:10', '2'),
(31, 1, '서울시 동작구 대방동로 456', 33000, '2024-12-01 20:45:20', '0'),
(32, 2, '서울시 관악구 행운로 789', 19000, '2024-12-02 21:55:30', '1'),
(33, 3, '서울시 구로구 고척로 654', 22000, '2024-12-03 10:05:40', '2'),
(34, 4, '서울시 금천구 독산로 987', 30000, '2024-12-04 11:15:50', '0'),
(35, 5, '서울시 강북구 솔샘로 123', 25000, '2024-12-05 12:25:10', '1'),
(36, 6, '서울시 중랑구 신내로 456', 28000, '2024-12-06 13:35:20', '2'),
(37, 7, '서울시 서대문구 홍제동로 789', 18000, '2024-12-07 14:45:30', '0'),
(38, 8, '서울시 종로구 율곡로 654', 29000, '2024-12-08 15:55:40', '1'),
(39, 9, '서울시 중구 장충단로 987', 31000, '2024-12-09 16:05:50', '2'),
(40, 10, '서울시 용산구 새천년로 123', 26000, '2024-12-10 17:15:10', '0'),
(41, 1, '서울시 광진구 자양로 456', 23000, '2024-12-11 18:25:20', '1'),
(42, 2, '서울시 강서구 마곡중앙로 789', 30000, '2024-12-12 19:35:30', '2'),
(43, 3, '서울시 은평구 불광로 654', 20000, '2024-12-13 20:45:40', '0'),
(44, 4, '서울시 도봉구 방학로 987', 24000, '2024-12-14 21:55:50', '1'),
(45, 5, '서울시 강남구 역삼로 123', 22000, '2024-12-15 10:05:10', '2'),
(46, 6, '서울시 서초구 강남대로 456', 32000, '2024-12-16 11:15:20', '0'),
(47, 7, '서울시 동작구 흑석로 789', 21000, '2024-12-17 12:25:30', '1'),
(48, 8, '서울시 강동구 천호대로 654', 27000, '2024-12-18 13:35:40', '2'),
(49, 9, '서울시 중구 동호로 987', 25000, '2024-12-19 14:45:50', '0'),
(50, 10, '서울시 마포구 상암로 123', 29000, '2024-12-20 15:55:10', '1'),
(51, 10, '서울시 마포구 상암로 123', 29000, '2024-12-20 15:55:10', '1'),
(52, 10, '서울시 마포구 상암로 123', 29000, '2024-12-20 15:55:10', '1'),
(53, 10, '서울시 마포구 상암로 123', 29000, '2024-12-20 15:55:10', '1');

-- 주문 상세 정보 50개 삽입
INSERT INTO `order_details` (`id`, `order_id`, `menu_id`, `order_product_name`, `quantity`)
VALUES 
(1, 1, 1, '후라이드 치킨', 2),
(2, 2, 2, '양념 치킨', 1),
(3, 3, 3, '치즈 피자', 3),
(4, 4, 4, '버거 세트', 1),
(5, 5, 5, '비프 타코', 4),
(6, 6, 6, '크림 파스타', 2),
(7, 7, 7, '시저 샐러드', 1),
(8, 8, 8, '그릴드 치킨', 3),
(9, 9, 9, '피쉬 앤 칩스', 2),
(10, 10, 10, '스시 세트', 4),
(11, 11, 11, '라멘', 3),
(12, 12, 12, '비빔밥', 6),
(13, 13, 13, '볶음밥', 5),
(14, 14, 14, '김밥', 2),
(15, 15, 15, '튀김 세트', 3),
(16, 16, 16, '치킨 윙', 4),
(17, 17, 17, '핫도그', 2),
(18, 18, 18, '스테이크', 1),
(19, 19, 19, '돈카츠', 3),
(20, 20, 20, '김치찌개', 2),
(21, 21, 21, '쌀국수', 1),
(22, 22, 22, '우동', 2),
(23, 23, 23, '돼지 불고기', 3),
(24, 24, 24, '샌드위치', 1),
(25, 25, 25, '나초', 4),
(26, 26, 26, '프렌치 프라이', 5),
(27, 27, 27, '불고기', 3),
(28, 28, 28, '떡볶이', 2),
(29, 29, 29, '팬케이크', 1),
(30, 30, 30, '삼겹살', 3),
(31, 31, 31, '아이스크림', 2),
(32, 32, 32, '초콜릿 케이크', 1),
(33, 33, 33, '과일 샐러드', 4),
(34, 34, 34, '치킨 샌드위치', 2),
(35, 35, 35, '야채 랩', 3),
(36, 36, 36, '맥 앤 치즈', 1),
(37, 37, 37, '오믈렛', 2),
(38, 38, 38, '치킨 커리', 3),
(39, 39, 39, '쉬림프 파스타', 4),
(40, 40, 40, '카프레제 샐러드', 2),
(41, 41, 41, '비프 버거', 3),
(42, 42, 42, '베지 피자', 2),
(43, 43, 43, '카르보나라', 1),
(44, 44, 44, '갈릭 브레드', 2),
(45, 45, 45, '어니언 링', 3),
(46, 46, 46, '랍스터 롤', 1),
(47, 47, 47, '해산물 파에야', 4),
(48, 48, 48, '부리또', 2),
(49, 49, 49, '퀘사디아', 3),
(50, 50, 50, '미소된장국', 1);



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


-- 손님 정보 테이블
CREATE TABLE `guests` (
	`id` BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `order_id` BIGINT NOT NULL,
    `nickname` VARCHAR(255) NOT NULL UNIQUE,
	`profile_image` VARCHAR(255) DEFAULT "/images/profile/default.png",
    FOREIGN KEY (order_id) REFERENCES `orders` (id) ON DELETE CASCADE   
);
INSERT INTO `guests` (`id`, `order_id`, `nickname`, `profile_image`)
VALUES 
(1, 1, 'GuestUser1', '/images/profile/guest1.png'),
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


INSERT INTO `reviews` (`id`, `order_id`, `guest_id`, `rating`, `review_date`, `review_content`, `is_reported`)
VALUES 
(1, 1, 1, 5, '2023-11-01', '최고의 경험이었어요!', FALSE),
(2, 2, 2, 4, '2023-11-05', '좋았지만 개선할 점이 있어요.', FALSE),
(3, 3, 3, 3, '2023-11-10', '평범했어요.', TRUE),
(4, 4, 4, 2, '2023-11-15', '배송에 문제가 있었어요.', FALSE),
(5, 5, 5, 1, '2023-11-20', '서비스가 좋지 않았어요.', TRUE),
-- 필요에 따라 50개의 리뷰 데이터를 추가로 삽입합니다.
(50, 50, 10, 5, '2024-12-20', '야식 최고였어요!', FALSE);

-- 리뷰 사진 테이블
CREATE TABLE `review_photos` (
	`id` BIGINT PRIMARY KEY AUTO_INCREMENT,
	`review_id` BIGINT	NOT NULL,
	`photo_url`	VARCHAR(255),
    FOREIGN KEY (review_id) REFERENCES `reviews` (id) ON DELETE CASCADE
);
INSERT INTO `review_photos` (`id`, `review_id`, `photo_url`)
VALUES 
(1, 1, '/images/reviews/photo1.png'),
(2, 1, '/images/reviews/photo2.png'),
(3, 2, '/images/reviews/photo3.png'),
(4, 3, '/images/reviews/photo4.png'),
(5, 4, '/images/reviews/photo5.png'),
-- 필요에 따라 50개의 리뷰 사진 데이터를 추가로 삽입합니다.
(50, 50, '/images/reviews/photo50.png');

-- 작성된 리뷰에 대한 답글 테이블
CREATE TABLE `review_comments` (
	`id` BIGINT PRIMARY KEY AUTO_INCREMENT,
	`review_id` BIGINT NOT NULL,
	`comment` TEXT NOT NULL,
    `comment_date` DATE NOT NULL,
    FOREIGN KEY (review_id) REFERENCES `reviews` (id) ON DELETE CASCADE
);
INSERT INTO `review_comments` (`id`, `review_id`, `comment`, `comment_date`)
VALUES 
(1, 1, '소중한 의견 감사합니다!', '2023-11-02'),
(2, 2, '피드백 감사드리며 개선하겠습니다.', '2023-11-06'),
(3, 3, '불편을 드려 죄송합니다. 개선하겠습니다.', '2023-11-11'),
(4, 4, '이용에 불편을 드려 죄송합니다.', '2023-11-16'),
(5, 5, '고객님의 의견에 감사드립니다.', '2023-11-21'),
-- 필요에 따라 50개의 리뷰 답글 데이터를 추가로 삽입합니다.
(50, 50, '야식을 즐겨주셔서 감사합니다!', '2024-12-21');


-- 리뷰 정보 테이블 데이터
INSERT INTO `reviews` (`order_id`, `guest_id`, `rating`, `review_date`, `review_content`, `is_reported`)
VALUES 
(1, 1, 5, '2023-11-01', 'Great experience, loved the product!', FALSE),
(2, 2, 4, '2023-11-05', 'Good service, could be improved.', FALSE),
(3, 3, 3, '2023-11-10', 'Average experience, expected better.', TRUE),
(4, 4, 2, '2023-11-15', 'Not satisfied, had issues with delivery.', FALSE),
(5, 4, 2, '2023-11-15', 'Not satisfied, had issues with delivery.', FALSE);

-- 리뷰 전체 조회
SELECT 
    r.id AS review_id,
    g.profile_image,
    g.nickname,
    r.rating,
    DATE_FORMAT(r.review_date, '%Y-%m-%d %H:%i:%s') AS review_date,
    r.review_content,
    r.is_reported,
    GROUP_CONCAT(rp.photo_url) AS photo_url,
    rc.comment AS comments,
    DATE_FORMAT(rc.comment_date, '%Y-%m-%d %H:%i:%s') AS comment_date
FROM 
    reviews r
JOIN 
    guests g ON r.guest_id = g.id
LEFT JOIN 
    review_photos rp ON r.id = rp.review_id
LEFT JOIN 
    review_comments rc ON r.id = rc.review_id
GROUP BY 
    r.id, g.profile_image, g.nickname, r.rating, r.review_date, r.review_content, r.is_reported, rc.comment, rc.comment_date;

-- 미답변 리뷰 조회
SELECT 
    r.id AS review_id,
    g.profile_image,
    g.nickname,
    r.rating,
    DATE_FORMAT(r.review_date, '%Y-%m-%d %H:%i:%s') AS review_date,
    r.review_content,
    r.is_reported,
    GROUP_CONCAT(rp.photo_url) AS photo_url,
    rc.comment AS comments,
    DATE_FORMAT(rc.comment_date, '%Y-%m-%d %H:%i:%s') AS comment_date
FROM 
    reviews r
JOIN 
    guests g ON r.guest_id = g.id
LEFT JOIN 
    review_photos rp ON r.id = rp.review_id
LEFT JOIN 
    review_comments rc ON r.id = rc.review_id
WHERE 
    rc.comment IS NULL
GROUP BY 
    r.id, g.profile_image, g.nickname, r.rating, r.review_date, r.review_content, r.is_reported, rc.comment, rc.comment_date;
    