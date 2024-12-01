-- 1
SELECT T1.first_name, T1.surname, T2.bill_date, COUNT(T2.bill_no) AS bill_count
FROM restBill T2
JOIN restStaff T1 ON T2.waiter_no = T1.staff_no 
GROUP BY T2.waiter_no, T2.bill_date, T1.first_name, T1.surname
HAVING COUNT(T2.bill_no) > 1;


--2
SELECT T1.room_name, 
COUNT(T1.table_no)
AS table_count 
FROM restRest_table T1
WHERE T1.no_of_seats> 6 
GROUP BY T1.room_name;


--3
SELECT T1.room_name, SUM(T2.bill_total) AS total_bills
FROM restBill T2
JOIN restRest_table T3 ON T2.table_no = T3.table_no
JOIN restRoom_management T1 ON T3.room_name = T1.room_name AND T2.bill_date = T1.room_date
GROUP BY T1.room_name;


--4
SELECT T1.first_name, T1.surname, SUM(T2.bill_total) AS total_bills 
FROM restBill T2 
JOIN restStaff T3 ON T2.waiter_no = T3.staff_no 
JOIN restStaff T1 ON T3.headwaiter = T1.staff_no
GROUP BY T1.first_name, T1.surname;


--5
SELECT T1.cust_name, AVG(T1.bill_total) AS average_bill 
FROM restBill T1 
GROUP BY T1.cust_name 
HAVING AVG(T1.bill_total) > 400;


--6
SELECT T1.first_name, T1.surname, T2.bill_date, COUNT(T2.bill_no) AS bill_count 
FROM restBill T2 
JOIN restStaff T1 ON T2.waiter_no = T1.staff_no 
GROUP BY T2.waiter_no, T2.bill_date, T1.first_name, T1.surname 
HAVING COUNT(T2.bill_no) > 2;