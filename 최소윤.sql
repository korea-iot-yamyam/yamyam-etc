INSERT INTO `orders` (`store_id`, `delivery_address`, `total_price`, `order_state`)
VALUES
(1, '123 Main St, City A', 50000, '0'),  -- 주문 상태 '0'은 접수대기
(1, '456 Oak St, City B', 120000, '1'), -- 주문 상태 '1'은 처리중
(3, '789 Pine St, City C', 85000, '2'), -- 주문 상태 '2'은 주문완료
(2, '321 Birch St, City A', 30000, '0'), -- 주문 상태 '0'은 접수대기
(3, '654 Cedar St, City B', 90000, '2'); -- 주문 상태 '2'은 주문완료

INSERT INTO reviews (order_id, guest_id, rating, review_date, review_content) VALUES (6, 1, 5, '2024-1-10', 'Amazing fried chicken!'), (6, 2, 4, '2024-4-11', 'Good fries but took a while.'), (7, 3, 5, '2024-11-12', 'Delicious pizza!');


INSERT INTO stores (owner_id, store_name, category, opening_time, closing_time, break_start_time, break_end_time, address, description)
VALUES
(1, 'John\'s Chicken', '치킨', '10:00:00', '22:00:00', '15:00:00', '17:00:00', '123 Chicken St.', 'Best chicken in town!'),
(2, 'Jane\'s Pizza', '피자', '11:00:00', '23:00:00', NULL, NULL, '456 Pizza Ave.', 'Delicious pizzas made fresh.');

# 별점별 리뷰 수
SELECT r.rating, COUNT(r.id) AS reviewCount
            FROM reviews r 
            JOIN orders o ON r.order_id = o.id 
            WHERE o.store_id = 1
            GROUP BY r.rating;

# 월별 별점 평균
select MONTH(r.review_date) as review_month,
	ROUND(avg(r.rating)) avg_rating
from reviews r JOIN orders o ON r.order_id = o.id 
WHERE 
		o.store_id IN (1, 2)
		AND MONTH(r.review_date) between 5 and 11
GROUP BY MONTH(r.review_date)
