select product_id
from Products
where low_fats="Y" and recyclable="Y"


----Case in MYSQL-----

SELECT CustomerName, City, Country
FROM Customers
ORDER BY
(CASE
    WHEN City IS NULL THEN Country
    ELSE City
END);