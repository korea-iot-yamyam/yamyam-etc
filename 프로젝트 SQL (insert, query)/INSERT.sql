# INSERT 
# users - 포스트맨에서 직접 생성
insert into users values
(default, 'user1', 'password1!!', 'aaa', 'aaa@exam.com', '01012341234', '1234567890', true, true),
(default, 'user2', 'password2!!', 'bbb', 'bbb@exam.com', '01056785678', '0987654321', true, true),
(default, 'user3', 'password3!!', 'ccc', 'ccc@exam.com', '01056785678', '0927654321', true, true);

insert into stores values
(default, 1, 'a_store', 'img~~~', '치킨', now(), now(), null, null, 'aaa시 aaa구 aaa동', '치킨 가게 입니다.'),
(default, 2, 'b_store', "img~~~", '분식', now(), now(), null, null, 'bbb시 bbb구 bbb동', '분식 가게 입니다.'),
(default, 3, 'c_store', 'img~~~', '양식', now(), now(), null, null, 'ccc시 ccc구 ccc동', '양식 가게 입니다.');

select * from orders;
insert into orders values 
(default, 1, 'ㅁㅁㅁ시 ㅁㅁㅁ구 ㅁㅁㅁ동', now(), '1'),
(default, 2, 'ㅂㅂㅂ시 ㅂㅂㅂ구 ㅂㅂㅂ동', now(), '2'),
(default, 2, 'ㅈㅈㅈ시 ㅈㅈㅈ구 ㅈㅈㅈ동', now(), '2'),
(default, 3, 'ㄷㄷㄷ시 ㄷㄷㄷ구 ㄷㄷㄷ동', now(), '0'),
(default, 3, 'ㄴㄴㄴ시 ㄴㄴㄴ구 ㄴㄴㄴ동', now(), '1'),
(default, 1, 'ㅋㅋㅋ시 ㅋㅋㅋ구 ㅋㅋㅋ동', now(), '2'),
(default, 2, 'ㅇㅇㅇ시 ㅇㅇㅇ구 ㅇㅇㅇ동', now(), '2');

INSERT INTO `orders` (`store_id`, `delivery_address`, `order_date`, `order_state`) VALUES 
(1, '부산 해운대구 123-45', '2024-12-15 10:00:00', '0'),
(1, '서울 강남구 543-21', '2024-12-15 10:30:00', '1'),
(1, '대구 중구 678-90', '2024-12-15 10:45:00', '2'),
(1, '부산 북구 111-22', '2024-12-15 11:00:00', '0'),
(1, '서울 서초구 333-44', '2024-12-15 11:15:00', '1'),
(1, '대구 동구 555-66', '2024-12-15 11:20:00', '2'),
(1, '부산 남구 777-88', '2024-12-15 12:10:00', '0'),
(1, '서울 마포구 999-00', '2024-12-15 12:30:00', '1'),
(1, '대구 서구 222-33', '2024-12-20 13:30:00', '2'),
(1, '부산 동래구 444-55', '2024-12-20 13:45:00', '0'),
(1, '서울 용산구 666-77', '2024-12-20 16:00:00', '1'),
(1, '대구 남구 888-99', '2024-12-20 16:10:00', '2'),
(1, '부산 금정구 000-11', '2024-12-20 16:25:00', '0'),
(1, '서울 은평구 222-44', '2024-12-20 17:35:00', '1'),
(1, '대구 달서구 333-66', '2024-12-20 17:55:00', '2'),
(1, '부산 해운대구 123-45', '2024-12-23 10:00:00', '0'),
(1, '서울 강남구 543-21', '2024-12-23 11:00:00', '1'),
(1, '대구 중구 678-90', '2024-12-23 12:00:00', '2'),
(1, '부산 북구 111-22', '2024-12-23 13:00:00', '0'),
(1, '서울 서초구 333-44', '2024-12-23 14:00:00', '1'),
(1, '대구 동구 555-66', '2024-12-23 15:00:00', '2'),
(1, '부산 남구 777-88', '2024-12-23 16:00:00', '0'),
(1, '서울 마포구 999-00', '2024-12-23 17:00:00', '1'),
(1, '대구 서구 222-33', '2024-12-23 18:00:00', '2'),
(1, '부산 동래구 444-55', '2024-12-23 19:00:00', '0'),
(1, '서울 용산구 666-77', '2024-12-23 20:00:00', '1'),
(1, '대구 남구 888-99', '2024-12-23 21:00:00', '2'),
(1, '부산 금정구 000-11', '2024-12-23 22:00:00', '0'),
(1, '서울 은평구 222-44', '2024-12-23 23:00:00', '1'),
(1, '대구 달서구 333-66', '2024-12-23 23:59:00', '2');


select * from orders;

insert into menu_categories values
(default, '인기메뉴', 1),
(default, '세트메뉴', 2),
(default, '사이드메뉴', 3),
(default, '음료', 4);

insert into menus values
(default, 1, 1, '후라이드치킨', 'img~~~', '후라이드치킨입니다', 18000, true),
(default, 1, 1, '양념치킨', 'img~~~', '양념치킨입니다', 19000, true),
(default, 1, 2, '1+1치킨', 'img~~~', '두마리 치킨입니다', 30000, true),
(default, 2, 1, '떡볶이', 'img~~~', '떡볶이입니다', 9000, true),
(default, 2, 1, '모둠튀김', 'img~~~', '모둠튀김입니다', 12000, true),
(default, 2, 2, '떡+튀+순', 'img~~~', '떡볶이 + 튀김 + 순대입니다', 16000, true),
(default, 2, 4, '콜라', 'img~~~', '콜라입니다', 2000, true),
(default, 3, 1, '토마토 스파게티', 'img~~~', '토마토 스파게티입니다', 12000, true),
(default, 3, 2, '크림 스파게티', 'img~~~', '크림 스파게티입니다', 12000, true),
(default, 3, 3, '해쉬브라운', 'img~~~', '해쉬브라운입니다', 3000, true),
(default, 3, 3, '감자고로케', 'img~~~', '감자고로케입니다', 2500, true);

insert into menu_options values
(default, '뼈 유무'),
(default, '추가 사항'),
(default, '뼈 유무'),
(default, '추가 사항'),
(default, '치킨1'),
(default, '치킨2'),
(default, '맵기'),
(default, '토핑'),
(default, '사이즈'),
(default, '맵기'),
(default, '내장 추가'),
(default, '변경'),
(default, '토핑'),
(default, '사이즈'),
(default, '토핑'),
(default, '사이즈'),
(default, '추가'),
(default, '추가');

INSERT INTO order_details VALUES -- guest 빼기
(default, 1, 1),  -- 주문 ID 1번, 메뉴 ID 1번 (후라이드치킨)
(default, 1, 2),  -- 주문 ID 1번, 메뉴 ID 2번 (양념치킨)
(default, 2, 4),  -- 주문 ID 2번, 메뉴 ID 4번 (떡볶이)
(default, 3, 5),  -- 주문 ID 3번, 메뉴 ID 5번 (모둠튀김)
(default, 3, 6),  -- 주문 ID 3번, 메뉴 ID 6번 (떡+튀+순)
(default, 4, 8),  -- 주문 ID 4번, 메뉴 ID 8번 (토마토 스파게티)
(default, 4, 9),  -- 주문 ID 4번, 메뉴 ID 9번 (크림 스파게티)
(default, 5, 8),  -- 주문 ID 5번, 메뉴 ID 8번 (토마토 스파게티)
(default, 5, 10),  -- 주문 ID 5번, 메뉴 ID 10번 (해쉬브라운)
(default, 5, 11),  -- 주문 ID 5번, 메뉴 ID 11번 (감자고로케)
(default, 6, 3),  -- 주문 ID 6번, 메뉴 ID 3번 (1+1치킨)
(default, 7, 4),  -- 주문 ID 7번, 메뉴 ID 4번 (떡볶이)
(default, 7, 7),  -- 주문 ID 7번, 메뉴 ID 7번 (콜라)
(default, 1, 1); -- 주문 ID 1번, 메뉴 ID 1번 (후라이드치킨)

insert into order_details values
(default, 8, 1), -- 주문 ID 8번, 메뉴 ID 1번 (후라이드치킨)
(default, 8, 1), -- 주문 ID 8번, 메뉴 ID 1번 (후라이드치킨)
(default, 9, 2), -- 주문 ID 9번, 메뉴 ID 2번 (양념치킨)
(default, 10, 3), -- 주문 ID 10번, 메뉴 ID 3번 (1+1치킨)
(default, 11, 1), -- 주문 ID 11번, 메뉴 ID 1번 (후라이드치킨)
(default, 12, 1), -- 주문 ID 12번, 메뉴 ID 1번 (후라이드치킨)
(default, 12, 2), -- 주문 ID 12번, 메뉴 ID 2번 (양념치킨)
(default, 13, 3), -- 주문 ID 13번, 메뉴 ID 3번 (1+1치킨)
(default, 14, 1), -- 주문 ID 14번, 메뉴 ID 1번 (후라이드치킨)
(default, 14, 2), -- 주문 ID 14번, 메뉴 ID 2번 (양념치킨)
(default, 14, 2), -- 주문 ID 14번, 메뉴 ID 2번 (양념치킨)
(default, 15, 2), -- 주문 ID 15번, 메뉴 ID 2번 (양념치킨)
(default, 16, 1), -- 주문 ID 16번, 메뉴 ID 1번 (후라이드치킨)
(default, 17, 3), -- 주문 ID 17번, 메뉴 ID 3번 (1+1치킨)
(default, 17, 3), -- 주문 ID 17번, 메뉴 ID 3번 (1+1치킨)
(default, 18, 1), -- 주문 ID 18번, 메뉴 ID 1번 (후라이드치킨)
(default, 18, 1), -- 주문 ID 18번, 메뉴 ID 1번 (후라이드치킨)
(default, 19, 1), -- 주문 ID 19번, 메뉴 ID 1번 (후라이드치킨)
(default, 19, 2), -- 주문 ID 19번, 메뉴 ID 2번 (양념치킨)
(default, 20, 2), -- 주문 ID 20번, 메뉴 ID 2번 (양념치킨)
(default, 20, 3), -- 주문 ID 20번, 메뉴 ID 3번 (1+1치킨)
(default, 21, 2), -- 주문 ID 21번, 메뉴 ID 2번 (양념치킨)
(default, 22, 1), -- 주문 ID 22번, 메뉴 ID 1번 (후라이드치킨)
(default, 22, 1), -- 주문 ID 22번, 메뉴 ID 1번 (후라이드치킨)
(default, 23, 1), -- 주문 ID 23번, 메뉴 ID 1번 (후라이드치킨)
(default, 23, 1), -- 주문 ID 23번, 메뉴 ID 1번 (후라이드치킨)
(default, 24, 2), -- 주문 ID 24번, 메뉴 ID 2번 (양념치킨)
(default, 25, 3), -- 주문 ID 25번, 메뉴 ID 3번 (1+1치킨)
(default, 26, 1), -- 주문 ID 26번, 메뉴 ID 1번 (후라이드치킨)
(default, 27, 1), -- 주문 ID 27번, 메뉴 ID 1번 (후라이드치킨)
(default, 27, 2), -- 주문 ID 27번, 메뉴 ID 2번 (양념치킨)
(default, 28, 3), -- 주문 ID 28번, 메뉴 ID 3번 (1+1치킨)
(default, 29, 1), -- 주문 ID 29번, 메뉴 ID 1번 (후라이드치킨)
(default, 29, 2), -- 주문 ID 29번, 메뉴 ID 2번 (양념치킨)
(default, 29, 2), -- 주문 ID 29번, 메뉴 ID 2번 (양념치킨)
(default, 30, 2), -- 주문 ID 30번, 메뉴 ID 2번 (양념치킨)
(default, 31, 1), -- 주문 ID 31번, 메뉴 ID 1번 (후라이드치킨)
(default, 32, 3), -- 주문 ID 32번, 메뉴 ID 3번 (1+1치킨)
(default, 32, 3), -- 주문 ID 32번, 메뉴 ID 3번 (1+1치킨)
(default, 33, 1), -- 주문 ID 33번, 메뉴 ID 1번 (후라이드치킨)
(default, 33, 1), -- 주문 ID 33번, 메뉴 ID 1번 (후라이드치킨)
(default, 34, 1), -- 주문 ID 34번, 메뉴 ID 1번 (후라이드치킨)
(default, 34, 2), -- 주문 ID 34번, 메뉴 ID 2번 (양념치킨)
(default, 35, 2), -- 주문 ID 35번, 메뉴 ID 2번 (양념치킨)
(default, 35, 3), -- 주문 ID 35번, 메뉴 ID 3번 (1+1치킨)
(default, 36, 2), -- 주문 ID 36번, 메뉴 ID 2번 (양념치킨)
(default, 37, 1), -- 주문 ID 37번, 메뉴 ID 1번 (후라이드치킨)
(default, 37, 1); -- 주문 ID 37번, 메뉴 ID 1번 (후라이드치킨)

insert into menu_option_details values
(default, 1, '뼈', 0),
(default, 1, '순살', 1000),
(default, 2, '무', 500), 
(default, 2, '양념치킨소스', 500), 
(default, 3, '뼈', 0), 
(default, 3, '순살', 1000),
(default, 4, '무', 500),
(default, 4, '양념치킨소스', 500),
(default, 5, '후라이드', 0),
(default, 5, '양념', 1000),
(default, 5, '간장', 1000),
(default, 6, '후라이드', 0),
(default, 6, '양념', 1000),
(default, 6, '간장', 1000),
(default, 7, '1단계', 0),
(default, 7, '2단계', 0),
(default, 7, '3단계', 0),
(default, 8, '모짜렐라치즈추가', 2000),
(default, 8, '체다치즈추가', 1000),
(default, 9, 'S', 0),
(default, 9, 'L', 2000),
(default, 10, '1단계', 0),
(default, 10, '2단계', 0),
(default, 10, '3단계', 0),
(default, 11, '간', 0),
(default, 11, '허파', 0),
(default, 11, '간+허파', 0),
(default, 12, '제로콜라로 변경', 500),
(default, 13, '미트볼', 2500),
(default, 13, '베이컨', 3000),
(default, 14, '기본', 0),
(default, 14, '곱빼기', 1500),
(default, 15, '베이컨', 3000),
(default, 16, '기본', 0),
(default, 16, '곱빼기', 1500),
(default, 17, '2개 추가', 1500),
(default, 17, '4개 추가', 3000),
(default, 18, '2개 추가', 1000),
(default, 18, '4개 추가', 2000);

insert into menu_option_group values
(default, 1, 1),
(default, 1, 2),
(default, 2, 3),
(default, 2, 4),
(default, 3, 5),
(default, 3, 6),
(default, 4, 7),
(default, 4, 8),
(default, 5, 9),
(default, 6, 10),
(default, 6, 11),
(default, 7, 12),
(default, 8, 13),
(default, 8, 14),
(default, 9, 15),
(default, 9, 16),
(default, 10, 17),
(default, 11, 18);

insert into order_menu_option values
(default, 1, 2), -- 후라이드 / 순살
(default, 2, 1), -- 양념 / 뼈
(default, 2, 3), -- 양념 / 무 추가
(default, 3, 15), -- 떡볶이 / 맵기 1단계
(default, 3, 18), -- 떡볶이 / 모짜렐라치즈추가
(default, 4, 21), -- 모둠튀김 / L
(default, 5, 23), -- 떡튀순 / 맵기 2단계
(default, 5, 27), -- 떡튀순 / 간+허파
(default, 6, 29), -- 토마토 스파게티 / 미트볼
(default, 6, 31), -- 토마토 스파게티 / 사이즈 기본
(default, 7, 35), -- 크림 스파게티 / 곱빼기
(default, 10, 38), -- 감자고로케 / 2개 추가
(default, 11, 9), -- 1+1 치킨  / 후라이드 
(default, 11, 14), -- 1+1 치킨  / 간장 
(default, 12, 17), -- 떡볶이 / 맵기 3단계
(default, 13, 28), -- 콜라 / 제로콜라로 변경
(default, 14, 1), -- 후라이드치킨 / 뼈
(default, 14, 4), -- 후라이드치킨 / 양념치킨소스 추가
(default, 8, 31), -- 토마토스파게티 / 사이즈 기본
(default, 9, 36), -- 해시브라운 / 2개 추가
# order - 8
(default, 15, 1), -- 후라이드치킨 / 뼈
(default, 16, 1), -- 후라이드치킨 / 뼈
(default, 16, 3), -- 후라이드치킨 / 무 추가
(default, 16, 4), -- 후라이드치킨 / 양념치킨소스추가
# order - 9
(default, 17, 6), -- 양념치킨 / 순살
# order - 10
(default, 18, 10), -- 1+1 치킨 / 양념
(default, 18, 14), -- 1+1 치킨 / 간장
# order - 11
(default, 19, 2), -- 후라이드치킨 / 순살
# order - 12
(default, 20, 2), -- 후라이드치킨 / 순살
(default, 20, 4), -- 후라이드치킨 / 양념치킨소스추가
(default, 21, 6), -- 양념치킨 / 순살
# order - 13
(default, 22, 9), -- 1+1 치킨 / 후라이드
(default, 22, 13), -- 1+1 치킨 / 양념
# order - 14
(default, 23, 1), -- 후라이드치킨 / 뼈
(default, 24, 5), -- 양념치킨 / 뼈
(default, 25, 5), -- 양념치킨 / 뼈
(default, 25, 7), -- 양념치킨 / 무 추가
# order - 15
(default, 26, 6), -- 양념치킨 / 순살
# order - 16
(default, 27, 2), -- 후라이드치킨 / 순살
(default, 27, 4), -- 후라이드치킨 / 양념치킨소스추가
# order - 17
(default, 28, 10), -- 1+1 치킨 / 양념
(default, 28, 13), -- 1+1 치킨 / 양념
(default, 29, 9), -- 1+1 치킨 / 후라이드
(default, 29, 14), -- 1+1 치킨 / 간장
# order - 18
(default, 30, 2), -- 후라이드치킨 / 순살
(default, 30, 3), -- 후라이드치킨 / 무 추가
(default, 31, 2), -- 후라이드치킨 / 순살
# order - 19
(default, 32, 2), -- 후라이드치킨 / 순살
(default, 32, 3), -- 후라이드치킨 / 무 추가
(default, 33, 6), -- 양념치킨 / 순살
# order - 20
(default, 34, 6), -- 양념치킨 / 순살
(default, 34, 7), -- 양념치킨 / 무 추가
(default, 35, 11), -- 1+1 치킨 / 간장
(default, 35, 12), -- 1+1 치킨 / 후라이드
# order - 21
(default, 36, 5), -- 양념치킨 / 뼈
# order - 22
(default, 37, 2), -- 후라이드 / 순살
(default, 38, 2), -- 후라이드 / 순살
(default, 38, 3), -- 후라이드 / 무 추가
(default, 38, 4), -- 후라이드 / 양념치킨소스추가
# order - 23
(default, 39, 1), -- 후라이드치킨 / 뼈
(default, 40, 1), -- 후라이드치킨 / 뼈
(default, 40, 3), -- 후라이드치킨 / 무 추가
(default, 40, 4), -- 후라이드치킨 / 양념치킨소스추가
# order - 24
(default, 41, 6), -- 양념치킨 / 순살
# order - 25
(default, 42, 10), -- 1+1 치킨 / 양념
(default, 42, 14), -- 1+1 치킨 / 간장
# order - 26
(default, 43, 2), -- 후라이드치킨 / 순살
# order - 27
(default, 44, 2), -- 후라이드치킨 / 순살
(default, 44, 4), -- 후라이드치킨 / 양념치킨소스추가
(default, 45, 6), -- 양념치킨 / 순살
# order - 28
(default, 46, 9), -- 1+1 치킨 / 후라이드
(default, 46, 13), -- 1+1 치킨 / 양념
# order - 29
(default, 47, 1), -- 후라이드치킨 / 뼈
(default, 48, 5), -- 양념치킨 / 뼈
(default, 49, 5), -- 양념치킨 / 뼈
(default, 49, 7), -- 양념치킨 / 무 추가
# order - 30
(default, 50, 6), -- 양념치킨 / 순살
# order - 31
(default, 51, 2), -- 후라이드치킨 / 순살
(default, 51, 4), -- 후라이드치킨 / 양념치킨소스추가
# order - 32
(default, 52, 10), -- 1+1 치킨 / 양념
(default, 52, 13), -- 1+1 치킨 / 양념
(default, 53, 9), -- 1+1 치킨 / 후라이드
(default, 53, 14), -- 1+1 치킨 / 간장
# order - 33
(default, 54, 2), -- 후라이드치킨 / 순살
(default, 54, 3), -- 후라이드치킨 / 무 추가
(default, 55, 2), -- 후라이드치킨 / 순살
# order - 34
(default, 56, 2), -- 후라이드치킨 / 순살
(default, 56, 3), -- 후라이드치킨 / 무 추가
(default, 57, 6), -- 양념치킨 / 순살
# order - 35
(default, 58, 6), -- 양념치킨 / 순살
(default, 58, 7), -- 양념치킨 / 무 추가
(default, 59, 11), -- 1+1 치킨 / 간장
(default, 59, 12), -- 1+1 치킨 / 후라이드
# order - 36
(default, 60, 5), -- 양념치킨 / 뼈
# order - 37
(default, 61, 2), -- 후라이드 / 순살
(default, 62, 2), -- 후라이드 / 순살
(default, 62, 3), -- 후라이드 / 무 추가
(default, 62, 4); -- 후라이드 / 양념치킨소스추가

select * from menus;

insert into guests values
(default, 1, 'guest1', "img~~~"),
(default, 2, 'guest2', "img~~~"),
(default, 3, 'guest3', "img~~~"),
(default, 4, 'guest4', "img~~~"), 
(default, 5, 'guest5', "img~~~"), 
(default, 6, 'guest6', "img~~~"),
(default, 7,'guest7', "img~~~"),
(default, 8,'guest8', "img~~~"),
(default, 9,'guest9', "img~~~"),
(default, 10,'guest10', "img~~~"),
(default, 11,'guest11', "img~~~"),
(default, 12,'guest12', "img~~~"),
(default, 13,'guest13', "img~~~"),
(default, 14,'guest14', "img~~~"),
(default, 15,'guest15', "img~~~"),
(default, 16,'guest16', "img~~~"),
(default, 17,'guest17', "img~~~"),
(default, 18,'guest18', "img~~~"),
(default, 19,'guest19', "img~~~"),
(default, 20,'guest20', "img~~~"),
(default, 21,'guest21', "img~~~"),
(default, 22,'guest22', "img~~~"),
(default, 23,'guest23', "img~~~"),
(default, 24,'guest24', "img~~~"),
(default, 25,'guest25', "img~~~"),
(default, 26,'guest26', "img~~~"),
(default, 27,'guest27', "img~~~"),
(default, 28,'guest28', "img~~~"),
(default, 29,'guest29', "img~~~"),
(default, 30,'guest30', "img~~~"),
(default, 31,'guest31', "img~~~"),
(default, 32,'guest32', "img~~~"),
(default, 33,'guest33', "img~~~"),
(default, 34,'guest34', "img~~~"),
(default, 35,'guest35', "img~~~"),
(default, 36,'guest36', "img~~~"),
(default, 37,'guest37', "img~~~");