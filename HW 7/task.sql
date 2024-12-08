-- 1
CREATE VIEW samsBills AS
SELECT
	rs.first_name,
	rs.surname,
	rb.bill_date,
	rb.cust_name,
	rb.bill_total
FROM
	restStaff rs
JOIN
	restBill rb ON rs.staff_no = rb.waiter_no
WHERE
	rs.first_name = 'Sam' AND rs.surname = 'Pitt';


-- 2
SELECT *
FROM samsBills
WHERE bill_total > 400;


--3 
CREATE VIEW roomTotals AS
SELECT
	rr.room_name,
	SUM(rb.bill_total) AS total_sum
FROM
	restRest_table rt
JOIN
	restBill rb ON rt.table_no = rb.table_no
JOIN
	restRoom_management rr ON rt.room_name = rr.room_name
GROUP BY
	rr.room_name;
    
    
-- 4 
CREATE VIEW teamTotals AS
SELECT
	CONCAT(rs.first_name, ' ', rs.surname) AS headwaiter_name,
	SUM(rb.bill_total) AS total_sum
FROM
	restStaff rs
JOIN
	restBill rb ON rs.staff_no = rb.waiter_no
GROUP BY
	headwaiter_name;

