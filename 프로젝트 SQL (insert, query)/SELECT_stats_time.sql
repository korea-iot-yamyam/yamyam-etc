select 
	o.id order_id,
    od.id order_detail_id,
    m.id menu_id,
    o.order_state,
    m.menu_name,
    m.menu_price,
    md.additional_fee
from
	orders o
left outer join
	order_details od on od.order_id = o.id
left outer join
	menus m on m.id = od.menu_id
left outer join
	menu_option_group mog on mog.menu_id = m.id
left outer join
	menu_option_details md on md.menu_option_id = mog.menu_option_id
where 
	year(o.order_date) = 2024
	and month(o.order_date) = 12
	and day(o.order_date) = 20
	and o.order_state = '2'
    and m.id = 1
group by
	o.id,
    od.id,
    m.id,
    o.order_state,
    m.menu_name,
    m.menu_price,
    md.additional_fee;
     
-- menu_total_price
with menu_total_price as (
	select
		o.id as order_id,
        m.store_id as store_id,
		sum(m.menu_price) as menu_total_price
	from
		orders o
		left outer join order_details od on od.order_id = o.id
		left outer join menus m on m.id = od.menu_id
	group by
		o.id, m.store_id
),

-- option_total_price
option_total_price as (
	select 
		o.id as order_id,
		sum(md.additional_fee) as option_total_price
	from
		orders o
	left outer join
		order_details od on od.order_id = o.id
	left outer join
		menus m on m.id = od.menu_id 
	left outer join
		order_menu_option omo on omo.order_detail_id = od.id
	left outer join
		menu_option_details md on md.id = omo.menu_option_detail_id
	group by
		o.id
)

select
	date(o.order_date), 
    hour(o.order_date),
    mtp.store_id,
    o.order_state,
    sum(mtp.menu_total_price + otp.option_total_price) as revenue
from 
	orders o
left outer join
	menu_total_price mtp on mtp.order_id = o.id
left outer join
	option_total_price otp on otp.order_id = o.id
where 
	year(o.order_date) = 2024
	and month(o.order_date) = 12
	and day(o.order_date) = 20
	and o.order_state = '2'
    and mtp.store_id = 1
group by
	date(o.order_date),
    hour(o.order_date),
    mtp.store_id,
    o.order_state
order by
	date(o.order_date), hour(o.order_date);
    
select * from orders;