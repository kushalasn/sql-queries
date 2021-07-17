select a.sale_date , (b.sold_num-a.sold_num ) as diff
from Sales as a
join sales as b
on a.sale_date=b.sale_date
group by a.sale_date
order by a.sale_date
