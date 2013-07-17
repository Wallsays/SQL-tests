-- Consider a table called "students", having the following column fields: 

-- "id" (type: INT) 
-- "name" (type: TEXT) 
-- "marks" (type: INT) 

-- Write a SQL query which will calculate the average of the marks of the students passing. The passing criteria is that the marks should be at least 40. The average marks are to be returned using the column name 'marksaverage'.

-- (Wrong)
SELECT name, AVG(marks) as 'marksaverage'
FROM students
WHERE marks>40
GROUP BY name;	

-- (Not accepted - Your SQL query didn't generated the desired output) 
SELECT name, AVG(marks) as "marksaverage"
FROM students
WHERE marks>=40
GROUP BY name;
