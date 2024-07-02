-- LIMIT and OFFSET

-- Uzun tablolarla çalışırken bütün verileri görmek istemiyor olabiliriz.

-- rental rate'i 4.99'a eşit uzunluğu artan şekilde sıralanmış 20 film ismi
SELECT title FROM film
WHERE rental_rate = 4.99
ORDER BY length
LIMIT 20;

-- OFFSET ile belirli miktardaki verileri geçebiliriz.

-- İlk 6 ülkeyi geçip göstermeye 7. ülkeden başlar ve sonrasında yalnızca 4 ülke gösterir.
SELECT country FROM country
OFFSET 6
LIMIT 4;

-- actor tablosundan ismi "Penelope" olanları soyisimlerine göre sıraladıktan
-- sonra 3. sıradaki Penelope'nin soyismi nedir?
SELECT last_name FROM actor
WHERE first_name = 'Penelope'
ORDER BY last_name
OFFSET 2
LIMIT 1