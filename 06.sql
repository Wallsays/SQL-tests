-- Consider a table named "employee" having the following columns: 

-- "empid" (type: INT) 
-- "empname" (type: TEXT) 
-- "salary" (type: INT) 

-- Write a standard SQL query which retrieves the number of rows where the salary is not null. The returned value should be represented using the column name "validsalarycount".

-- (Accepted)
SELECT COUNT(salary) as 'validsalarycount'
FROM employee
WHERE salary NOT NULL;
