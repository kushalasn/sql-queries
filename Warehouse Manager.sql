select W.name as warehouse_name ,SUM(W.units*P. Width* P.Length* P.Height) as volume
from  Warehouse as W
join  Products as P
on ( W.product_id=P.product_id)
group by W.name

