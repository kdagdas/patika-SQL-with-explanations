-- AGGREGATE FUNCTIONS

-- Bizim toplamda kaç verimiz var? (COUNT)
SELECT COUNT(*) FROM film;

-- En yüksek/düşük replacement cost kaçtır? (MAX/ MIN)
SELECT MAX(replacement_cost) FROM film;
SELECT MIN(replacement_cost) FROM film;

-- Filmlerin uzunluk ortalaması nedir? (AVG)
SELECT AVG(length) FROM film;

-- Ortalamanın (115.2720000000000000) gibi gereksiz bir uzunluğu var.
-- virgülden sonra 3 basamağa yuvarlayalım (ROUND, yuvarlama miktarı)
SELECT ROUND(AVG(length), 3) FROM film;

-- Filmlerin tüm rental rate'lerinin toplamı kaçtır? (SUM)
SELECT SUM(rental_rate) FROM film;

-- Birden falza parametre ile birden fazla sütunda çalışabilirim:
SELECT MAX(length), MIN(length), SUM(replacement_cost) FROM film;

-- Koşullarla birlikte de kullanabilirim:
SELECT MAX(length) FROM film
WHERE rental_rate IN (0.99, 2.99);

