-- CHECK

-- Bir tabloda daha önceden belirlenmiş kısıtlamalar dışında biz de
-- belirli doğrulamalar ve kendimize ait kısıtlamalar eklemek isteyebiliriz. 
-- Örnek olarak kullanıcılarının yaşlarının 18'den büyük olması gibi.
-- Mevcut tablomuza yaşların 18'den büyük olması gerektiğini ekleyelim:

/*
ALTER TABLE users
ADD CHECK (age>18);

INSERT INTO users(username, email, age)
VALUES ('gamer3', 'gamer3@gmail.com', -10)
*/

-- 18'den küçük değer girmeye çalıştığımız için hata alırız.

CREATE TABLE products (
	product_no INTEGER,
	name TEXT,
	price NUMERIC CHECK (price > 0),
	discounted_price NUMERIC CHECK (discounted_price > 0),
	CHECK (price > discounted_price) -- fiyat indirimli fiyattan da büyük olmalı
);