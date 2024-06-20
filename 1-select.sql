--select column1 from title;

select title, description from film;

-- SQL komutları okunabilirliği artırmak için büyük yazılır.
-- Zorunlu değildir.

-- Tüm sütunları getirmek için "*" operatörü kullanılır.
-- Verilerin geri dönüş hızını artırmak için yalnızca ihtiyacımız
-- olan verileri çağırmalıyız.

SELECT 	* FROM film;

SELECT first_name, last_name FROM  actor;