-- Consider a table named "salary" having the following columns: 

-- "id" (type: INT) 
-- "salary" (type: INT) 
-- "incentive" (type: INT) 
-- "tax" (type: INT) 

-- Write a standard SQL query which will update the tax column with the sum of 10% of salary and 2% of incentive, for those salaries which are more than 15000.

-- (Wrong)
UPDATE salary SET tax= ,incentive=
WHERE salary>15000;

UPDATE salary SET tax = 0.1 * salary + 0.02*incentive
WHERE salary > 15000;
