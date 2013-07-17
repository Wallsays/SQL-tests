-- Consider a database with a table called "accounts", having two fields: 

-- "entrydate" (type: DATE) 
-- "accountno" (type: INT) 

-- Write a SQL query which returns the "accountno" field values corresponding to the most recent entrydate. The returned value should be represented using the column name, "accountno".

-- (Wrong)
SELECT accountno as 'accountno'
FROM accounts
WHERE entrydate;

-- (Not accepted - Your SQL query didn't generated the desired output) 
SELECT accountno as "accountno"
FROM accounts
ORDER BY entrydate DESC;
