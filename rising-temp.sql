select t1.id
from Weather t1,Weather t2
where (t1.Temperature>t2.Temperature) AND DATEDIFF(t1.recordDate,t2.recordDate)=1
