select trim(LOWER(product_name)) as product_name, DATE_FORMAT(sale_date,'%Y-%m') as sale_date ,count(product_name) as total
from Sales
group by trim(lower(product_name)),DATE_FORMAT(sale_date,'%m')
order by  trim(lower(product_name))  , DATE_FORMAT(sale_date,'%m')