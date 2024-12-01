-- 1
SELECT cust_name 
FROM restBill 
WHERE bill_total > 450 AND table_no IN 
(SELECT T1.table_no  
FROM restRest_table T1 
WHERE T1.room_name IN 
(SELECT T3.room_name
FROM restRoom_management T3
JOIN restStaff T4
ON T3.headwaiter = T4.staff_no
WHERE T4.first_name = "Charles" AND T3.room_date = bill_date));

-- 2
SELECT T1.first_name, T1.surname
FROM restStaff T1
WHERE T1.staff_no = (
SELECT T2.headwaiter
FROM restStaff T2
WHERE T2.staff_no = (
SELECT T3.waiter_no
FROM restBill T3
WHERE T3.cust_name LIKE '%Nerida%'
AND T3.bill_date = 160111));

-- 3
SELECT cust_name
FROM restBill
WHERE bill_total = (
SELECT MIN(bill_total) 
FROM restBill);

-- 4
SELECT first_name, surname
FROM restStaff
WHERE staff_no 
NOT IN (SELECT DISTINCT waiter_no
FROM restBill);

-- 5
SELECT T1.cust_name, T2.first_name, T2.surname, T3.room_name   
FROM restBill T1 
JOIN restStaff T4 ON T1.waiter_no = T4.staff_no 
JOIN restStaff T2 ON T4.headwaiter = T2.staff_no 
JOIN restRest_table T5 ON T1.table_no = T5.table_no 
JOIN restRoom_management T3 ON T5.room_name = T3.room_name AND T1.bill_date = T3.room_date 
WHERE T1.bill_total = (SELECT MAX(bill_total) FROM restBill);