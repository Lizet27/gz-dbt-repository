select 
orders_id,
date_date,
round(margin + shipping_fee - (logcost- ship_cost)) as Operational_margin,
quantity,
revenue,
purchase_cost,
margin,
shipping_fee,
logcost,
ship_cost

FROM {{ref("int_orders_margin")}}
JOIN {{ref("stg_raw__ship")}}
USING (orders_id)