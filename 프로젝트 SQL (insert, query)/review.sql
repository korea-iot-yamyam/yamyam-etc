INSERT INTO `stores` (`owner_id`, `store_name`, `logo_url`, `category`, `opening_time`, `closing_time`, `break_start_time`, `break_end_time`, `address`, `description`)
VALUES 
(1, '치킨집 A', '/images/store1.png', '치킨', '11:00', '22:00', '14:00', '15:00', '서울시 강남구', '맛있는 치킨집'),
(2, '피자집 B', '/images/store2.png', '피자', '10:00', '23:00', '14:30', '15:30', '서울시 서초구', '피자 전문점'),
(3, '한식당 C', '/images/store3.png', '한식', '09:00', '21:00', '12:00', '13:00', '서울시 송파구', '전통 한식당');

INSERT INTO `menu_categories` (`store_id`, `menu_category`, `menu_category_sequence`) 
VALUES 
(3, '인기메뉴', 1), 
(3, '세트메뉴', 2), 
(3, '사이드메뉴', 3), 
(3, '음료', 4);

INSERT INTO `menus` (`store_id`, `category_id`, `menu_name`, `image_url`, `menu_description`, `menu_price`, `is_available`)
VALUES
(1, 1, '후라이드 치킨', '/images/menu1.png', '바삭한 후라이드 치킨', 15000, TRUE),
(1, 2, '치킨 세트', '/images/menu2.png', '후라이드 치킨 + 음료 세트', 18000, TRUE),
(2, 1, '마르게리타 피자', '/images/menu3.png', '치즈와 토마토 소스 피자', 12000, TRUE),
(2, 3, '사이드 샐러드', '/images/menu4.png', '신선한 샐러드', 5000, TRUE),
(3, 1, '불고기 덮밥', '/images/menu5.png', '불고기와 밥', 13000, TRUE),
(3, 4, '식혜', '/images/menu6.png', '한국 전통 음료', 3000, TRUE);

INSERT INTO `menu_options` (`option_name`)
VALUES
('사이즈'),
('토핑'),
('음료 추가');

INSERT INTO `menu_option_group` (`menu_id`, `menu_option_id`)
VALUES
(1, 1),  -- 후라이드 치킨 사이즈
(2, 2),  -- 치킨 세트 토핑
(3, 3),  -- 마르게리타 피자 음료 추가
(4, 1),  -- 사이드 샐러드 사이즈
(5, 2),  -- 불고기 덮밥 토핑
(6, 3);  -- 식혜 음료 추가

INSERT INTO `orders` (`store_id`, `delivery_address`, `order_state`)
VALUES 
(1, '서울시 강남구', '0'),
(2, '서울시 서초구', '1'),
(3, '서울시 송파구', '2');

INSERT INTO `order_details` (`order_id`, `menu_id`)
VALUES 
(1, 1),  -- 주문 1에 후라이드 치킨
(2, 3),  -- 주문 2에 마르게리타 피자
(3, 5);  -- 주문 3에 불고기 덮밥

INSERT INTO `guests` (`order_id`, `guest_nickname`, `profile_image`)
VALUES 
(1, '홍길동', '/images/guest1.png'),
(2, '김철수', '/images/guest2.png'),
(3, '이영희', '/images/guest3.png');

INSERT INTO `orders` (`store_id`, `delivery_address`, `order_state`)
VALUES 
(3, '서울시 송파구', '0'),
(3, '서울시 송파구', '1'),
(3, '서울시 송파구', '2');

INSERT INTO `review_comments` (`review_id`, `comment_text`, `comment_date`)
VALUES 
(1, '소중한 리뷰 감사합니다! 더 맛있게 준비하겠습니다.', NOW()),
(2, '다음에는 더 맛있는 음식을 준비하겠습니다. 피드백 감사합니다!', NOW()),
(3, '식혜와 피자를 좋아해 주셔서 감사합니다! 다음에도 방문해 주세요.', NOW());


INSERT INTO `reviews` (`order_id`, `guest_id`, `store_id`, `rating`, `review_date`, `review_text`, `is_reported`) 
VALUES  
(1, 1, 3, 4.5, NOW(), '매우 맛있어요! 배송도 빨라서 좋았습니다.', FALSE), 
(2, 2, 3, 3.0, NOW(), '피자는 괜찮았지만, 배달이 늦었어요.', FALSE), 
(3, 3, 3, 5.0, NOW(), '한식은 언제나 최고입니다! 맛있었어요.', FALSE);

 INSERT INTO `review_photos` (`review_id`, `photo_url`)
 VALUES (1, '/images/review1.png'), 
 (2, '/images/review2.png'),
 (3, '/images/review3.png');
 
 
use YAMYAM;
 
select * from stores;

SELECT rating FROM reviews WHERE store_id = 3;


 
 INSERT INTO `reviews` (`order_id`, `guest_id`, `store_id`, `rating`, `review_date`, `review_text`, `is_reported`) 
VALUES  
(1, 1, 3, 4.5, NOW(), '매우 맛있어요! 배송도 빨라서 좋았습니다.', FALSE),  -- '한식당 C'에 대한 리뷰
(2, 2, 3, 3.0, NOW(), '피자는 괜찮았지만, 배달이 늦었어요.', FALSE),       -- '한식당 C'에 대한 리뷰
(3, 3, 3, 5.0, NOW(), '한식은 언제나 최고입니다! 맛있었어요.', FALSE);     -- '한식당 C'에 대한 리뷰

select * from reviews;
