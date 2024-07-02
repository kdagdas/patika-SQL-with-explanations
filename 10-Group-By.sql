-- GROUP BY

-- Belli spesifik değerlere ait kaç adet veri var görmek isteyebiliriz.
-- Bunun için önce verileri gruplandırmamız gerekir.

-- Her bir özgün rental rate değeri için en uzun filmlerin süresi nedir?
SELECT rental_rate, MAX(length) FROM film
GROUP BY rental_rate;

-- Her bir farklı ratinge karşılık gelen kaç film var?
SELECT rating, COUNT(*) FROM film
GROUP BY rating;

-- Her bir replacement coast'a karşılık gelen en kısa film süresi?
SELECT replacement_cost, MIN(length) FROM film
GROUP BY replacement_cost;

-- Birden fazla sütun ile çalışabiliriz:
SELECT replacement_cost,rental_rate, MIN(length) FROM film
GROUP BY replacement_cost, rental_rate;

-- Yaptığımız listeleri de sıralı olarak görmek istersek:
SELECT replacement_cost,rental_rate, MIN(length) FROM film
GROUP BY replacement_cost, rental_rate
ORDER BY replacement_cost, rental_rate DESC;
-- replacement cost ve rental rate'i grupladı ve replacement cost'u
-- artan, rental rate'i azalan şekilde sıraladıktan sonra bunlara ait
-- minimum film sürelerini listeledi.

-- en kısa filmlere göre yani Aggregate fonksiyonlara göre bir sıralama
-- yapabilir miyim? Evet!:

SELECT replacement_cost,rental_rate, MIN(length) FROM film
GROUP BY replacement_cost, rental_rate
ORDER BY MIN(length);