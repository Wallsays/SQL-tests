-- Consider the following tables: 

-- department
-- ----------
-- deptid (type: INT)
-- deptname (type: TEXT)
-- hours (type: INT)
-- active (type: BIT)


-- employee
-- --------
-- empid (type: INT)
-- empname (type: TEXT)
-- deptid (type: INT)
-- designation (type: TEXT)
-- salary (type: INT)


-- Write a query to return the columns empname and deptname of the employees belonging to those departments that have a head count of 4 or more. The records should be returned in alphabetical order of empname.

-- (Wrong)
SELECT e.empname, d.deptname 
FROM department d, employee e
WHERE e.deptid=d.deptid
ORDER BY e.empname;

-- (Not accepted - Your SQL query didn't generated the desired output) 
SELECT e.empname, d.deptname 
FROM department d, employee e
WHERE e.deptid=d.deptid AND 
(SELECT COUNT(deptid) FROM employee WHERE deptid=e.deptid)>=4
ORDER BY e.empname;
