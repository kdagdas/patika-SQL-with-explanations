-- LEFT JOIN

-- INNER JOIN iki farklı tablodaki verilerin kesişimini getiriyordu.
-- Ancak bazı verilerin iki tabloda aynı anda karşılığı olmayabilir.

-- LEFT JOIN iki tablonun kesişimi yerine soldaki tabloda bulunan verilere
-- karşılık gelen sağdaki tablodaki verileri listeler.
-- Yani kesişim kümesinin yanında soldaki tabloda bulunan tüm veriler de listede mevcuttur.

/*
SELECT title, first_name, last_name FROM author
LEFT JOIN book ON author.id = book.author_id;
*/

-- Bizim tablomuzda yok ancak kitabı girilmemiş yazar verileri elimizde olabilirdi.
-- LEFT JOIN ile birlikte tüm yazarların listesi verilir ancak kitabı olmayanların
-- kitap sütunu NULL şeklinde döner.,

-- Veri çekmek için kullandığımız tabloyu değiştirirsek kitabı olan yazarları olan
-- kitapları listelediği için NULL ifade bulunmaz.

/*
INSERT INTO book (title, page_number, author_id)
VALUES
	('Gülün Adı', 466, 44);
*/

-- Foreign Key ile kısıtlandığı için author_id 44'ü kabul etmiyor çünkü aynı
-- id numarası author tablosunda da olmalıdır. 

-- Bu veriyi ekleyebilmek için bu kısıtlamadan kurtulmamız lazım

/*
ALTER TABLE book
DROP CONSTRAINT book_author_id_fkey;
*/

-- Şimdi yeniden eklemeye çalışalım:

/*
INSERT INTO book (title, page_number, author_id)
VALUES
	('Gülün Adı', 466, 44),
	('Yapay Zeka', 108, 52);
*/

/*
SELECT first_name, last_name, title FROM book
LEFT JOIN author ON author.id = book.author_id;
*/

-- Bu yolla tüm kitapları ve yazarlarını görebilirim. Yazarları olmayan
-- kitapların yazar kısmı NULL döner.
-- Ancak ben yalnızca yazarları olan kitapları WHERE ile görebilir ve
-- ORDER BY ile sıralayabilirim.

SELECT first_name, last_name, title FROM book
LEFT JOIN author ON author.id = book.author_id
WHERE first_name IS NOT NULL
ORDER BY book.title;