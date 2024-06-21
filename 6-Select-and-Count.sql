-- DISTINCT and COUNT

-- Bir sütunda binlerce veri olsa da birbirinden farklı veriler daha azdır.
-- Bir sütunda kaç FARKLI veri var görmek için DISTINCT keywordü kullanılır.

SELECT DISTINCT rental_rate FROM film;

-- Birden fazla sütun için de kullanılır:

SELECT DISTINCT title, rental_rate, replacement_cost FROM film;

-- Aynı şekilde verilerin kaç tane olduğunu öğrenmek için 
-- COUNT keywordünü kullanabiliriz.

SELECT COUNT(*) FROM actor
WHERE first_name LIKE 'A%';

SELECT COUNT(last_name) FROM actor
WHERE first_name LIKE 'A%';

-- Peki birbirinden farklı kaç tane verimiz var?

SELECT COUNT (DISTINCT first_name) FROM actor;