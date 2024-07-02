-- ORDER BY

-- Verileri A-Z veya büyükten küçüğe sıralamak isteyebiliriz.

SELECT title FROM film
ORDER BY title; -- Default olarak ASC (Ascending) yani artan şekilde sıralar

-- Azalan şekilde sıralamak için bir de "DESC" keywordü eklemem lazım.

SELECT title FROM film
ORDER BY title DESC;

SELECT title, length FROM film
ORDER BY length ASC;

-- Birkaç sütunu aynı anda sıralayabilirim:
-- rental_rate'i artan, length'i azalan şekilde sıralıyorum:

SELECT title, rental_rate, length FROM film
ORDER BY rental_rate, length DESC;

-- 0.99 rental rate'e ait uzunlukları sıraladı, daha sonra 2.99'a ait
-- uzunlukları yeniden sıraladı, bu şekilde devam etti.

-- Sadece A ile başlayan filmleri sıralamak istersem:

SELECT title, rental_rate, length FROM film
WHERE title LIKE 'A%'
ORDER BY rental_rate, length DESC;


