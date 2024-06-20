-- Datalar içindeki filtrelemeyi "WHERE" keyword'ü ile yaparız.

-- film içinde değişim miktarı 12.99'a eşit olan filmlerin 
-- isimlerini ve değişim miktarı sütununu getirir.

--SELECT title, replacement_cost FROM film WHERE replacement_cost = 12.99;

-- SQL boşlukları yok sayar, bu yüzden kodlar alt alta yazılabilir.

--SELECT title, rental_rate jFROM film
--WHERE rental_rate = 0.99;

SELECT * FROM actor
WHERE first_name = 'Penelope';

SELECT title, length FROM film
WHERE length > 90
