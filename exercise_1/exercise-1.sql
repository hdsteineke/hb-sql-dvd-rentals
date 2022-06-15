-- find all address_id of addresses in the city of Dundee
-- use INNER JOIN FROM address on to city
SELECT address_id
FROM address
WHERE city_id = 149
;