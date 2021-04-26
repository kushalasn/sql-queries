 select s.id,s.name
 from Departments as d
 right join 
 Students as s
 on
 d.id=s.department_id 
 where d.name is null
 
