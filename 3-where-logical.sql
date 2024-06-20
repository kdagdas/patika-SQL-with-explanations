SELECT first_name, last_name FROM actor
WHERE first_name = 'Penelope' AND last_name = 'Monroe';

SELECT first_name, last_name FROM actor
WHERE first_name = 'Penelope' OR first_name = 'Bob';

SELECT title, rental_rate, rental_duration, replacement_cost
FROM film
WHERE rental_rate = 4.99 AND rental_duration = 3
	AND replacement_cost > 20;

SELECT title, rental_rate FROM film
WHERE NOT rental_rate = 4.99; -- rental_rate 4.99'a eşit olmayan filmler

-- her iki koşulu aynı anda sağlamayan filmler için parantez kullanabilirim
-- ayrı ayrı eşit olabilir ancak aynı anda eşit olanlar listelenmez.

SELECT title, rental_rate, replacement_cost FROM film
WHERE NOT (rental_rate = 4.99 AND replacement_cost = 20.99);

-- Birini sağlasın diğerini sağlamasın istiyorsam:

SELECT title, rental_rate, replacement_cost FROM film
WHERE rental_rate = 4.99 AND NOT replacement_cost = 20.99;

-- OR ile cümle yeniden başlar

SELECT * FROM actor
WHERE first_name = 'Penelope' AND last_name = 'Monroe' 
	OR first_name = 'Joe' AND last_name = 'Swank';