-- Consider a table called carrecords with the following structure: 

-- name (type: TEXT)
-- price (type: INT)
-- color (type: TEXT)
-- vehicletype (type: TEXT) eg. SEDAN/SUV

-- A customer wants to see the details (name, price, color, vehicletype) of the vehicles that suit his preferences. This is what he says: 
-- "If its a black sedan, I'm ready to pay 10,000, but if its red or white, then no more than 8,000. For any other color I won't go above 7,000, except if its an SUV, in which case my budget is upto 15,000 for a black one or upto 14,000 for any other color." 
-- Write a query that returns the desired information in ascending order of price.

-- (Wrong)
SELECT name, price, color, vehicletype
FROM carrecords
WHERE (color='blask' AND vehicletype='sedan' AND price<=10000) 
OR ((color='white' OR color='red') AND vehicletype='sedan' AND price<=8000) 
OR  (vehicletype!='SUV' AND price<=7000) 
OR (color='black' AND vehicletype='SUV' AND price<=15000) 
OR (vehicletype='SUV' AND price<=14000);

-- (Not accepted - Your SQL query didn't generated the desired output) 
SELECT name, price, color, vehicletype
FROM carrecords
WHERE (vehicletype='sedan' AND ((price<=10000 AND color='blask') 
OR ((color='white' OR color='red') AND price<=8000) 
OR price<=7000)) 
OR (vehicletype='SUV' AND ((price<=15000 AND color='black') 
OR price<=14000));
