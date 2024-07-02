-- INNER JOIN

-- Hem yazar hem de kitap tablosundan verileri aynı anda kullanmak istiyorum.

SELECT title, first_name, last_name FROM book
INNER JOIN author ON book.author_id = author.id;

-- INNER JOIN yerine sadece JOIN ifadesi de aynı sonucu verir. Çünkü
-- JOIN yapısı default olarak INNER JOIN şeklinde çalışır.

-- INNER JOIN simetriktir. Verileri yazar tablosundan, birleşimi de kitap
-- tablosuyla yaparsak da aynı sonucu alırız.