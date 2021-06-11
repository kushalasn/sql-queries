select seller_name
from seller
where seller_id not in (
    select seller_id
    from orders
    where YEAR(sale_date)=2020
)
order by 1