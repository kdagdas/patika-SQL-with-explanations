-- ANY and ALL

-- Bazen alt sorgular birden fazla değer döndürür.
-- Bu gibi durumlarda ANY operatörü bu değerler için True dönenlerin 
-- tamamını listeler.

-- ALL operatörü için ise değerlerin tamamının karşılık bulması ve
-- True olarak dönmesi gerekir. 

SELECT first_name, last_name
FROM author
WHERE id > ALL 
(
	SELECT id
	FROM book
	WHERE title = 'Felicity' OR title = 'Operation Petticoat'
);