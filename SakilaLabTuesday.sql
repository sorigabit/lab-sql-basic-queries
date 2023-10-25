USE sakila;
##Display all available tables in the Sakila database. 
SHOW TABLES;
##Retrieve all the data from the tables actor, film and customer
SELECT *
FROM actor;
SELECT *
FROM film;
SELECT *
FROM customer;
##Titles of all films from the film table
SELECT title
FROM film;
##List of languages used in films, with the column aliased as language from the language table
SELECT name
FROM language;
SELECT first_name
FROM staff;
##Retrieve unique release years.
SELECT DISTINCT release_year
FROM film;
## Determine the number of stores that the company has.
SELECT COUNT(store_id)
FROM store;
##Determine the number of employees that the company has.
SELECT COUNT(staff_id)
FROM staff;
##Determine how many films are available for rent and how many have been rented
SELECT COUNT(DISTINCT film_id) 
FROM film;
SELECT COUNT(DISTINCT film_id) 
FROM film
WHERE rental_duration > 0;
##Determine the number of distinct last names of the actors in the database.
SELECT DISTINCT last_name
FROM actor;
##Retrieve the 10 longest films
SELECT DISTINCT length
FROM film
ORDER BY length DESC
LIMIT 10;
##Use filtering techniques in order to: Retrieve all actors with the first name "SCARLETT".
SELECT *
FROM actor
WHERE first_name="SCARLETT";
## Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT length
FROM film;
SELECT title
FROM film
WHERE title LIKE '%ARMAGEDDON%' 
AND length > 100;
SELECT COUNT(DISTINCT film_id)
FROM film
WHERE special_features LIKE 'Behind the Scenes';



