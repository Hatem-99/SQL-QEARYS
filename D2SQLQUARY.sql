-- select all staff order by first_name

SELECT * FROM staff
ORDER BY first_name

-- select all payment order by amount desc


SELECT * FROM payment 
ORDER BY amount DESC

-- select all addresses order by postal_code asc

SELECT * FROM address
ORDER BY postal_code 

-- Select all customers ad join their addresses.


SELECT * FROM customer
INNER JOIN address
USING(address_id)

-- Select all stores and join their addresses.


SELECT * FROM store
INNER JOIN address
USING (address_id)

-- Select all stores and join staff using manager_staff_id

SELECT * FROM store 
INNER JOIN staff
ON store.manager_staff_id = staff.staff_id

-- Select all addresses join cities

SELECT * FROM address
INNER JOIN city 
USING(city_id)


-- find total payment by date


SELECT SUM(amount), DATE(payment_date)
AS total_sale FROM payment
GROUP BY DATE(payment_date)

--find average payment

SELECT AVG(amount) FROM payment

--sum all payments

SELECT SUM(amount) FROM payment