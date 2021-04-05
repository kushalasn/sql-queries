select distinct l1.Num as ConsecutiveNums
from Logs as l1,Logs as l2,  Logs as l3
where l1.Num=l2.Num and l2.Num=l3.Num
and l1.id=l2.id+1 and l2.id=l3.id+1