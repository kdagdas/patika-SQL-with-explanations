----- Bu tabloları oluştururken bütün verilerin el ile girilmesi zordur.
----- Bunun için Mockaroo gibi otomatik tablo oluşturan ve SQL komutunu
----- hazır şekilde veren servisler mevcuttur.

-- Verileri güncellemek için UPDATE keywordünü kullanırız.

--UPDATE <table_name>
--SET column1 = value1,
--	column2 = value2
--WHERE condition;

--UPDATE author3
--SET first_name = 'Emrah Safa',
--	last_name = 'Gürkan',
--	email = 'emrah@gurkan.com',
--	birthday = '1980-01-01'
--WHERE id = 10; -- id'si 10'a eşit olan veriyi değiştir demiş oluyorum.
----- koşulsuz yazdığım takdirde tüm sütunda değişiklik yapar.

--SELECT * FROM author3; -- değişiklik yaptığım veri en sona gidiyor.

----- Bir sütun veya satırda düzenleme yaptıktan sonra hemen onu görmek isteyebiliriz.

--UPDATE author3
--SET first_name = 'Yılmaz',
--	last_name = 'Erdoğan',
--	email = 'yilmaz@erdogan.com',
--	birthday = '1980-01-01'
--WHERE id = 11
--RETURNING * -- * ile tüm bilgileri return et demiş oluyorum.

------ DELETE keywordü verileri silmek için kullanılır:

-- DELETE FROM <table_name>
-- WHERE condition;

--DELETE FROM author3
--WHERE id = 6

----- Birden fazla veriyi de aynı anda silip o verileri görebilirim:
DELETE FROM author3
WHERE id IN (1,2,3,4,5,7,8)
RETURNING *;