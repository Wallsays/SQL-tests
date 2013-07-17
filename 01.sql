-- Consider a table named "employee" having the following columns:

-- "empid" (type: INT) 
-- "empname" (type: TEXT) 
-- "salary" (type: INT) 

-- Write a standard SQL query which retrieves the empnames whose values start with the string 'john' followed by any characters.


SELECT empname
FROM employee
WHERE empname like 'john%';
