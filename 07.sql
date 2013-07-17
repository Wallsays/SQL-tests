-- Consider a table named "staff" having the following column structure: 

-- "empid" (type: INT) 
-- "empname" (type: TEXT) 
-- "salary" (type: INT) 

-- Write a standard SQL query which retrieves the sum of 75 percent of the salaries from the staff table (only salaries above 5000 are to be considered). The returned value should be represented using the column name 'total'.

-- (Wrong)
SELECT SUM(salary) as 'total'
FROM staff
WHERE salary>5000;

-- (Accepted)
SELECT SUM(salary)*0.75 as "total"
FROM staff
WHERE salary>5000;
