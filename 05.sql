-- Consider a table called "department", having the following columns: 

-- "id" (type: INT) 
-- "deptname" (type: TEXT) 
-- "rank" (type: INT) 

-- Write a SQL query which will return the deptnames of the departments whose rank lies between 2 and 5 (inclusive). The results should be returned in increasing order of rank (rank 3 being higher than rank 6).

-- (Accepted)
SELECT deptname
FROM department
WHERE rank BETWEEN 2 AND 5
ORDER BY rank;
