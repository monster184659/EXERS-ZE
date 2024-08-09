SELECT category.name, COUNT(film.film_id), MAX(film.film_id) FROM film
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON category.category_id = film_category.category_id
GROUP BY category.name 
ORDER BY count DESC
LIMIT 1
