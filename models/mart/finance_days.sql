select 
date_date,
count(orders_id) as nb_transaction,
round(sum(revenue),2) as revenue,
round(avg(revenue),2) as avegare_basket,
round(sum(margin),2) as  margin,
round(sum(Operational_margin),2) as Operational_margin,
round(sum(purchase_cost),2) as purchase_cost,
round(sum(shipping_fee),2) as shipping_fee,
round(sum(logcost),2) as logcost,
round(sum(quantity),2) as quantity
from  {{ref("int_orders_operational")}}
GROUP by date_date
