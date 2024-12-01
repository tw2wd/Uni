-- 1
SELECT first_name, surname
FROM restStaff T1
INNER JOIN restBill T2
ON T2.waiter_no = T1.staff_no
WHERE cust_name = "Tanya Singh";

-- 2
SELECT room_date
FROM restRoom_management T1 
INNER JOIN restStaff T2 
ON staff_no 
WHERE T2.first_name = "Charles" AND T1.room_name = "Green" AND T1.room_date LIKE "1602%";

-- 3
SELECT T1.first_name, T1.surname 
FROM restStaff T1 
INNER JOIN restStaff T2 
ON T1.headwaiter  = T2.headwaiter 
WHERE T2.first_name = "Zoe" and T2.surname = "Ball";

-- 4
SELECT T1.cust_name, T1.bill_total, T2.first_name
FROM restBill T1
INNER JOIN restStaff T2
ON T1.waiter.no
ORDER BY T1.bill_total DESC;

-- 5 
SELECT T1.first_name, T1.surname 
FROM restStaff T1 
INNER JOIN restStaff T2 
ON T1.headwaiter = T2.headwaiter 
INNER JOIN restBill T3 
ON T3.waiter_no = T2.staff_no 
WHERE T3.bill_no IN (0014, 0017);

-- 6
SELECT DISTINCT T1.first_name, T1.surname 
FROM restStaff T1 
INNER JOIN restStaff T2 
ON T1.headwaiter = T2.headwaiter 
INNER JOIN restRoom_management T3 
ON T3.headwaiter = T2.headwaiter 
WHERE T3.room_date IN (160312) AND T3.room_name = "Blue";