-- find all film titles rented out by customers who live in the city of Dundee
-- Similar to exercise 6 but you need a few more joins to get the city name
SELECT film.title
FROM film
INNER JOIN inventory on inventory.film_id = film.film_id
INNER JOIN rental on rental.inventory_id = inventory.inventory_id
INNER JOIN customer on customer.customer_id = rental.customer_id
INNER JOIN address on address.address_id = customer.address_id
INNER JOIN city on city.city_id = address.city_id
WHERE city = 'Dundee'
;
