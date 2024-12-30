insert into stores values
(default, 1, 'a_store', 'img~~~', '치킨', now(), now(), null, null, 'aaa시 aaa구 aaa동', '치킨 가게 입니다.'),
(default, 2, 'b_store', "img~~~", '분식', now(), now(), null, null, 'bbb시 bbb구 bbb동', '분식 가게 입니다.'),
(default, 3, 'c_store', 'img~~~', '양식', now(), now(), null, null, 'ccc시 ccc구 ccc동', '양식 가게 입니다.');

select * from orders;

INSERT INTO `orders` (id, store_id, delivery_address, order_date, order_state) VALUES
(1,  1, 'ㅁㅁㅁ시 ㅁㅁㅁ구 ㅁㅁㅁ동',  '2024-12-15 10:00:00', '2'),
(2,  2, 'ㅁㅁㅁ시 ㅁㅁㅁ구 ㅁㅁㅁ동',  '2024-12-15 10:00:00', '2'),
(3,  3, 'ㅁㅁㅁ시 ㅁㅁㅁ구 ㅁㅁㅁ동',  '2024-12-15 10:00:00', '2'),
(4,  1, 'ㅁㅁㅁ시 ㅁㅁㅁ구 ㅁㅁㅁ동',  '2024-12-15 10:00:00', '2'),
(5,  2, 'ㅁㅁㅁ시 ㅁㅁㅁ구 ㅁㅁㅁ동',  '2024-12-15 10:00:00', '2'),
(6,  3, 'ㅁㅁㅁ시 ㅁㅁㅁ구 ㅁㅁㅁ동',  '2024-12-15 10:00:00', '2'),
(7,  1, 'ㅁㅁㅁ시 ㅁㅁㅁ구 ㅁㅁㅁ동',  '2024-12-15 10:00:00', '1'),
(8,  2, 'ㅁㅁㅁ시 ㅁㅁㅁ구 ㅁㅁㅁ동',  '2024-12-15 10:00:00', '2'),
(9,  3, 'ㅁㅁㅁ시 ㅁㅁㅁ구 ㅁㅁㅁ동',  '2024-12-15 10:00:00', '1'),
(10, 1, 'ㅁㅁㅁ시 ㅁㅁㅁ구 ㅁㅁㅁ동', '2024-12-15 10:00:00', '2'),
(11, 2, 'ㅁㅁㅁ시 ㅁㅁㅁ구 ㅁㅁㅁ동', '2024-12-15 10:00:00', '0'),
(12, 3, 'ㅁㅁㅁ시 ㅁㅁㅁ구 ㅁㅁㅁ동', '2024-12-15 10:00:00', '2'),
(13, 1, 'ㅁㅁㅁ시 ㅁㅁㅁ구 ㅁㅁㅁ동', '2024-12-15 10:00:00', '1'),
(14, 2, 'address14', NOW(), '2'),
(15, 3, 'address15', NOW(), '2'),
(16, 1, 'address16', NOW(), '1'),
(17, 2, 'address17', NOW(), '0'),
(18, 3, 'address18', NOW(), '0'),
(19, 1, 'address19', NOW(), '2'),
(20, 2, 'address20', NOW(), '1'),
(21, 3, 'address21', NOW(), '2'),
(22, 1, 'address22', NOW(), '0'),
(23, 2, 'address23', NOW(), '0'),
(24, 3, 'address24', NOW(), '1'),
(25, 1, 'address25', NOW(), '2'),
(26, 2, 'address26', NOW(), '2'),
(27, 3, 'address27', NOW(), '2'),
(28, 1, 'address28', NOW(), '2'),
(29, 2, 'address29', NOW(), '2'),
(30, 3, 'address30', NOW(), '2'),
(31, 1, 'address31', NOW(), '2'),
(32, 2, 'address32', NOW(), '2'),
(33, 3, 'address33', NOW(), '2'),
(34, 1, 'address34', NOW(), '2'),
(35, 2, 'address35', NOW(), '2'),
(36, 3, 'address36', NOW(), '2'),
(37, 1, 'address37', NOW(), '2');

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

--------------------------------------------------------------------------------
-- (추가) 4. 리뷰 정보 예시 데이터 INSERT
-- orders.id = 1 ~ 10 번 주문에 대한 리뷰 10개
--------------------------------------------------------------------------------

-- reviews
INSERT INTO `reviews` (
    `id`, 
    `order_id`, 
    `rating`, 
    `review_date`, 
    `review_text`, 
    `is_reported`
) VALUES
(1,  1,  4.5, NOW(), '후라이드치킨 맛있어요!',          FALSE),
(2,  2,  3.0, NOW(), '떡볶이 평범했어요.',             FALSE),
(3,  3,  4.0, NOW(), '모둠튀김 바삭바삭!',              FALSE),
(4,  4,  4.8, NOW(), '토마토 스파게티 존맛!',           FALSE),
(5,  5,  2.5, NOW(), '재료가 조금 덜 신선했어요.',       FALSE),
(6,  6,  4.2, NOW(), '1+1 치킨 가성비 좋네요.',          FALSE),
(7,  7,  5.0, NOW(), '떡볶이 국물 최고!',               FALSE),
(8,  8,  3.8, NOW(), '치킨은 맛있지만 배달이 살짝 늦음.', FALSE),
(9,  9,  4.9, NOW(), '양식 잘하는 집이네요. 강추!',       FALSE),
(10, 10, 1.5, NOW(), '맛이 좀 별로였네요...',           FALSE),
(11, 12, 4.2, NOW(), '이 집 파스타는 기본 이상! 배달도 빨랐어요.', FALSE),
(12, 15, 3.5, NOW(), '면발이 조금 불었지만 소스 맛이 괜찮았어요.', FALSE),
(13, 18, 4.8, NOW(), '역시 믿고 먹는 양식 전문점! 완전 추천합니다.', FALSE),
(14, 21, 2.9, NOW(), '생각보다 평범했습니다. 다음엔 다른 메뉴 시도 예정.', FALSE),
(15, 24, 5.0, NOW(), '크림 스파게티 최고! 별 5개도 부족하네요.', FALSE),
(16, 27, 3.0, NOW(), '가격 대비 양은 적당, 조금 싱거웠어요.', FALSE),
(17, 30, 4.4, NOW(), '빠른 배달, 친절한 기사님, 전체적으로 만족!', FALSE),
(18, 33, 4.1, NOW(), '다른 곳보다 확실히 파스타 면이 탱탱해요. 굿~', FALSE),
(19, 36, 3.9, NOW(), '나쁘지 않았어요. 그래도 다음엔 다른 메뉴 먹어볼 듯.', FALSE);

--------------------------------------------------------------------------------
-- 리뷰 사진(review_photos) : review_id를 참조
--------------------------------------------------------------------------------

INSERT INTO `review_photos` (
    `id`,
    `review_id`,
    `photo_url`
) VALUES
-- review_id=1 (주문1 리뷰 사진 2장)
(1, 1, 'https://png.pngtree.com/thumb_back/fh260/background/20230609/pngtree-three-puppies-with-their-mouths-open-are-posing-for-a-photo-image_2902292.jpg'),
(2, 1, 'https://helpx.adobe.com/content/dam/help/en/photoshop/using/quick-actions/remove-background-before-qa1.png'),

-- review_id=2 (주문2 리뷰 사진 1장)
(3, 2, 'https://example.com/review2_photo1.jpg'),

-- review_id=4 (주문4 리뷰 사진 1장)
(4, 4, 'https://example.com/review4_photo1.jpg'),

-- review_id=9 (주문9 리뷰 사진 2장)
(5, 9, 'https://example.com/review9_photo1.jpg'),
(6, 9, 'https://example.com/review9_photo2.jpg');

--------------------------------------------------------------------------------
-- 리뷰 댓글(review_comments) : review_id를 참조
--------------------------------------------------------------------------------

INSERT INTO `review_comments` (
    `id`,
    `review_id`,
    `comment_text`,
    `comment_date`
) VALUES
-- review_id=1 에 대한 점주 답글
(1, 1, '맛있게 드셨다니 감사합니다~ 또 이용해주세요!', NOW()),

-- review_id=2 에 대한 점주 답글
(2, 2, '소중한 의견 감사합니다. 더 노력하겠습니다!', NOW()),

-- review_id=4 에 대한 점주 답글
(3, 4, '스파게티 맛있게 드셨다니 정말 기쁘네요!', NOW()),

-- review_id=7 에 대한 점주 답글
(4, 7, '떡볶이 칭찬 감사합니다! 좋은 재료로 보답드릴게요!', NOW());
