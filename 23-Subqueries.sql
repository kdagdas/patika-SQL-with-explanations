-- SUBQUERIES / ALTSORGU

SELECT * FROM book
WHERE page_number > 466;

-- Bu sorguda 466 'Gülün Adı' adlı kitaba ait ve ben bu değerden daha fazla
-- sayfaya sahip kitapları listelemek istiyorum.

-- Ancak büyük verilerde istediğimiz sayfa sayısına ait kitaba veya veriye
-- erişmek kolay olmaz, o yüzden 466'ya ulaştığımız sorguyu 466 yerine yazıyoruz.

SELECT * FROM book
WHERE page_number > (
	SELECT page_number FROM book
	WHERE title = 'Gülün Adı'
);

-- Görüntülemek istediğimiz sütunu da alt sorgu ile seçebiliriz. Bunun
-- için alt sorguları SELECT ile birlikte kullanırız:

SELECT title, page_number,
	(SELECT MAX(page_number) FROM book) AS max_page 
FROM book
WHERE page_number < (
	SELECT page_number FROM book
	WHERE title = 'Gülün Adı'
	);
