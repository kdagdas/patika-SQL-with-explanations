-- INTERSECT and EXCEPT

-- UNION operatörü ile birleştirdiğimiz sorgularda ortak kesişimli sonuçlar
-- olabilirdi. Hatta bu sonuçları da görmek için UNION ALL operatörünü kullanıyorduk.

-- INTERSECT bu sonuçların kesişim kümelerini gösterir.
-- EXCEPT ise birinci sorguda olan ancak ikinci sorguda olmayanları gösterir.
(
SELECT * FROM book
ORDER BY page_number DESC
LIMIT 5
)
EXCEPT
(
SELECT * FROM book
ORDER BY title
LIMIT 5
);

-- UNION için olan kurallar INTERSECT ve EXCEPT için de geçerlidir.
-- INTERSECT ve EXCEPT de tekrar eden verileri bir kez gösterir, tüm
-- verileri görmek için INTERSECT ALL ve EXCEPT ALL ifadelerini kullanmalıyız.