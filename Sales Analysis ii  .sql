select distinct  s.buyer_id
from Product as p
join Sales as s
on p.product_id=s.product_id
group by s.buyer_id
HAVING sum(p.product_name = 'S8') > 0 AND sum (p.product_name ='iPhone') = 0 AND sum (p.product_name='G4') = 0

