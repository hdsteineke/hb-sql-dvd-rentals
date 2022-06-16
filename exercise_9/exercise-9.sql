-- find the film title of all inventory items that have never been rented
-- LEFT JOIN FROM inventory to film and to rental
-- use WHERE IS NULL
SELECT film.title
FROM film
INNER JOIN inventory on inventory.film_id = film.film_id
LEFT JOIN rental on rental.inventory_id = inventory.inventory_id
WHERE rental.rental_id IS NULL
;