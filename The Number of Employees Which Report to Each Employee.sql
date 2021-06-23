select  e1.reports_to as employee_id,e.name as name,count(*) as reports_count,round(avg(e1.age)) as average_age
from Employees as e1
join Employees as e
on e1.reports_to=e.employee_id
where e1.reports_to is not null
group by 1
order by 1

