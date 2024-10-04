select count(*) as num_orders_today
from {{ref("stg_orders")}}
where date(Order_Date)=current_date()
having count(*)>0