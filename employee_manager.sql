SELECT NAME AS Employee
FROM  Employee as e
WHERE e.Salary > (SELECT Salary From Employee WHERE Id=e.ManagerId)