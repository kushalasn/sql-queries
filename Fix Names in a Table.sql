SELECT user_id, CONCAT(UPPER(left(name,1)),LOWER(SUBSTRING(name,2,length(name)-1))) as name
from Users
order by user_id