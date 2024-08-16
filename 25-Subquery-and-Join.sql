-- SUBQUERY and JOIN

-- Film uzunluğu en fazla  olan filmlerin isimlerini, uzunluğunu actor isim
-- ve soyisimlerini yazdıralım.

-- Bu sorgu için 3 tabloya bağlanmam lazım çünkü film ile aktör tablosu
-- arasında doğrudan bir bağlantı yok:

SELECT actor.first_name, actor.last_name, film.title, film.length
FROM actor
JOIN film_actor ON film_actor.actor_id = actor.actor_id
JOIN film ON film.film_id = film_actor.film_id
WHERE film.length = (
	SELECT MAX(length) FROM film
);
