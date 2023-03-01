# LAB SQL Queries 7
USE sakila;

# 1. In the table actor, which are the actors whose last names are not repeated? 
# I know that this answer is not the correct one, i saw the code on discord 
# but didn't copy that because i didnt understand the logic behind it
SELECT last_name
FROM actor
GROUP BY last_name
HAVING COUNT(last_name) = 1; 

SELECT last_name
FROM actor
GROUP BY last_name, actor_id;

# 2. Which last names appear more than once? 
SELECT last_name, COUNT(last_name) AS name_count
FROM actor
GROUP BY last_name
HAVING COUNT(last_name) > 1; 

# 3. Using the rental table, find out how many rentals were processed by each employee.
SELECT staff_id, COUNT(rental_id) AS rental_count
FROM rental
GROUP BY staff_id;

# 4. Using the film table, find out how many films were released each year.
SELECT release_year, COUNT(film_id) AS film_count
FROM film
GROUP BY release_year;

SELECT DISTINCT(release_year)
FROM film; 

# 5. Using the film table, find out for each rating how many films were there.
SELECT rating, COUNT(film_id) AS film_count
FROM film
GROUP BY rating;

# 6. What is the mean length of the film for each rating type. 
# Round off the average lengths to  two decimal places
SELECT rating, ROUND(AVG(length),2)
FROM film
GROUP BY rating; 

# 7. Which kind of movies (rating) have a mean duration of more than two hours?
SELECT *
FROM film;

SELECT rating, AVG(length)
FROM film
GROUP BY rating
HAVING AVG(length) > 120;