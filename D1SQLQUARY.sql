--Find all columns from the film table.

SELECT * FROM film 

--Find district,phone,postal_code from “address” table.

SELECT district,phone,postal_code FROM address

--Find address, district,postal_code and concat them and get as “full_address”.

SELECT district || ' ' || postal_code FROM address 

--Find all “R” rated movies, return title, rating and length only

SELECT title, rating,length FROM film
WHERE rating = 'R'

--Find all “G” rated movies with a length greater than 3 hours

SELECT * FROM film 
WHERE rating = 'G' AND length > 180

--Find top 10 payments by amount spent

SELECT * from payment
ORDER BY amount DESC
LIMIT 10 

--Find first 5 films, sort them by title DESC

SELECT * FROM film 
ORDER BY title
LIMIT 5

--Find all payments with amount between 1 and 2 and sort them by amount descending order

SELECT * FROM payment 
WHERE amount BETWEEN 1 AND 2 
ORDER BY amount DESC

--Find payments that happened in March 2007

SELECT * FROM payment
WHERE payment_date 
BETWEEN '2007-03-01' AND '2007-03-31'

--Find all films which title contains the word “north”

SELECT * FROM film 
WHERE title LIKE '%north%'

--Find all actors with surname startging with “W”

SELECT * FROM actor 
WHERE last_name LIKE 'W%'

--Find all actors with name containing three caracthers and last one is “y”

SELECT * FROM actor 
WHERE first_name LIKE '___y'
