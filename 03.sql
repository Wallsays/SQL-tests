-- Consider a table named "store" having the following columns: 

-- "storename" (type: TEXT) 
-- "sales" (type: INT) 
-- "Date" (type: DATE) 

-- Write a standard SQL query which retrieves the storenames, whose sales lie between 100 and 2000 (not inclusive). The storenames should not be repeated.

-- (Wrong)
SELECT storenames
FROM store
WHERE sales>100 AND sales<2000
GROUP BY storenames;

-- (Not accepted - Your SQL query didn't generated the desired output) 
SELECT storename
FROM store
WHERE sales>100 AND sales<2000
GROUP BY storename;
