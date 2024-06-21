-- BETWEEN and IN

-- 90 ile 120 dk. arasındaki filmleri listelemek istersek
--SELECT title, length FROM film
--WHERE length >= 90 AND length <= 120;

-- Aynısını BETWEEN operatörü ile yapabiliriz.

SELECT title, length FROM film
WHERE length BETWEEN 90 AND 120;

-- NOT operatörü ile birlikte de kullanabiliriz.

SELECT title, length FROM film
WHERE length NOT BETWEEN 90 AND 120;

-- Daha fazla parametre ile çalışabilirim.
-- 

SELECT title, rental_rate, replacement_cost FROM film
WHERE (rental_rate BETWEEN 2 AND 4)
	AND (replacement_cost BETWEEN 10 AND 20);

-- Aynı anda 40, 50, 60 dakikalık filmleri listelemek isteyebilirim:
-- Bunun için OR operatörünü kullanabilirim ancak daha kolayı var:
-- IN

SELECT title, length FROM film
WHERE length IN (40, 50, 60);

