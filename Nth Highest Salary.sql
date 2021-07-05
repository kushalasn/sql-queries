create function getNthHighestSalary(n int)
returns int
begin
declare m int;
set m=n-1;
return (
            select ifnull((select distinct salary
                         from Employee 
                         order by Salary desc
                         limit m,1),null)
    );
end 


    
    
    
                         