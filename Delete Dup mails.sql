delete p.*
from Person p,person p1
where p.Email=p1.Email and p.Id>p1.Id 