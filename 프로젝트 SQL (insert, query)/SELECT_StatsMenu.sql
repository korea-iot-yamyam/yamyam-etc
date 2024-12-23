WITH menu_quantity AS (
        SELECT
            o.id AS order_id,
            m.id AS menu_id,
            m.menu_name,
            m.menu_price,
            COUNT(od.id) AS quantity
        FROM
            orders o
        INNER JOIN order_details od ON od.order_id = o.id
        INNER JOIN menus m ON m.id = od.menu_id
        WHERE
            YEAR(o.order_date) = 2024
            AND MONTH(o.order_date) = 12
            AND DAY(o.order_date) = 20
            AND o.order_state = '2'
        GROUP BY
            o.id, m.id, m.menu_name, m.menu_price
    ),
    menu_option_fees AS (
        SELECT
            od.order_id,
            od.menu_id,
            SUM(md.additional_fee) AS total_additional_fee
        FROM
            order_details od
        INNER JOIN order_menu_option omo ON omo.order_detail_id = od.id
        INNER JOIN menu_option_details md ON md.id = omo.menu_option_detail_id
        GROUP BY
            od.order_id, od.menu_id
    )
    SELECT
		o.id,
        date(o.order_date),
        mq.menu_name,
        mq.quantity,
        (mq.menu_price * mq.quantity + COALESCE(mof.total_additional_fee, 0)) AS sum_total_price
    FROM
        orders o
    INNER JOIN
            menu_quantity mq ON mq.order_id = o.id
    INNER JOIN
            menu_option_fees mof ON mof.order_id = o.id AND mof.menu_id = mq.menu_id
    GROUP BY
        date(o.order_date), mq.menu_name, mq.menu_price, mq.quantity, mof.total_additional_fee, o.id
    ORDER BY o.id;