select u.name ,sum(t.amount) as balance
from Users as u
join Transactions as t
on u.account=t.account
group by t.account
having balance>10000