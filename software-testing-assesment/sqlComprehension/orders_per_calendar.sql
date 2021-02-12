select count(*), extract(year from order_date) as yyyy 
from orders 
where extract(year from order_date) >= '1996' 
group by 2; 