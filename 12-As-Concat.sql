-- ALIAS

-- Çağırdığımız sütunlara geçici olarak farklı isimlendirmeler yapabiliriz.
-- verilerin asıl isimleri değişmez, geçici listelemede farklı görünürler.

SELECT first_name AS isim, last_name AS soyisim FROM actor;

-- AS keywordünü kullanmasak da olur ancak okunabilirliği artırmak için bulunuyor.
SELECT first_name isim, last_name soyisim FROM actor;

-- Yeni vereceğim geçici isimlerde birden fazla kelime olacaksa
-- tırnak içinde yazmam gerekir. Aksi halde hata alırım.
SELECT first_name AS "isim test", last_name AS "soyisim test" FROM actor;

-- Bunu daha kompleks sorgulamalar için kullanmak daha mantıklıdır.
SELECT COUNT(*) AS "aktör sayısı" FROM actor;

-- Geçici olarak sütunları "CONCAT" keywordü ile birleştire debilirim.
SELECT CONCAT(first_name, ' ', last_name) AS "İsim ve Soyisim" FROM actor