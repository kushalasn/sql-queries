select employee_id,team_size
from employee as e
inner join(select team_id,count(1) as team_size
          
          from Employee 
          group by team_id ) as e1
on e.team_id=e1.team_id          
          

           
           