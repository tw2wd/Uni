-- 1 
SELECT bill_date, bill_total
FROM restBill
Where cust_name = 'Bob Crow';

-- 2 
SELECT DISTInct cut_name
FROM restBill
where cust_name LIKE "%Smith"
ORDER BY cust_name ASC;

--3
SELECT DISTINCT 
from restBill
WHERE cust_name LIKE "% C%"

--4
SELECT first_name, surname
from restStaff
WHERE headwaiter IS NULL;

--5
SELECT *
from restBill
WHERE bill_date LIKE "1602%"

-- 6 
SELECT bill_date
from restBill
where bill_date LIKE "15%"
ORDER by bill_date ASC;