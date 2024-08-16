-- UNION

-- ORDER BY komutu ile istediğimiz verileri sıralayarak görebiliriz.
-- Birden fazla parametre ile sıralanmış verileri aynı anda görmek istersek
-- UNION kullanırız.

-- Örnek olarak yazarları alfabetik sırayla sıralanmış ilk 5 kitap ve
-- sayfa sayısı en yüksek ilk 5 kitabı aynı anda görmek isteyelim.

-- UNION operatörü kullanırken her iki sorgudada aynı sayıda sütun olmalıdır.
-- Birleştirdiği sütundaki veri tipleri de uyumlu olmalıdır.
-- Birleştirdiği tablodaki sütun isimlerini ilk sorgudan alır. 

(
SELECT * FROM book
ORDER BY page_number DESC
LIMIT 5
)
UNION
(
SELECT * FROM book
ORDER BY title
LIMIT 5
);

-- Yalnızca aynı tablo üzerinden değil farklı tablolar üzerinden de 
-- birleştirme yapabiliriz.

(SELECT id, email FROM author) UNION (SELECT id, title FROM book);

-- Bazı sonuçlar her iki tabloda da olabilir ve UNION operatörü ile
-- birleşimden sonra bu sonuçlar tek görünür.

-- Çift sonuçlar da dahil olmak üzere her bir sonucu görmek için
-- UNION ALL operatörü kullanılmalıdır.