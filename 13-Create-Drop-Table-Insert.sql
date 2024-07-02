-- WORKING WITH TABLES

-- CREATE and DROP 

----- "Create Table" komutu ile tablomuzu isimlendiriyor ve oluşturuyoruz.
----- Oluşturacağımız sütunların en temel 3 özelliğini parantez içine yazıyoruz.
----- Parantez içinde önce sütun ismi, daha sonra veri türünü ve en sonda
----- kısıtlama miktarını yazıyoruz ve oluşturmak istediğimiz sütun kadar tekrar ediyoruz.

-- CREATE TABLE <table_name> (
--	<column_name> <data_type> <constraint>,
--	...
--	<column_name> <data_type> <constraint>);

--CREATE TABLE author (
--	id SERIAL PRIMARY KEY,
--	first_name VARCHAR(50) NOT NULL,
--	last_name VARCHAR(50) NOT NULL,
--	email VARCHAR(100),
--	birthday DATE
--);

----- id sütunu:
----- numerik ve gittikçe artan şekilde olacak
----- primary key ile kendine özgün veriler atanır.

----- first_name sütunu:
----- Varchar(50) ile 50 karakterlik metin girilebilir
----- Not Null ifadesi sütunun boş olamayacağı anlamına gelir.

----- email sütunu:
----- 100 karakterlik bir metin girilebilir
----- kısıtlama yoktur, boş bırakılabilir

----- Tabloya veriler eklememiz lazım:
----- Veri eklerken girmek istediğimiz sütunları belli etmemiz lazım
----- id kısmını serial veri tipinde tanımladığımız için otomatik olarak doldurulacak zaten

--INSERT INTO author (first_name, last_name, email, birthday)
--VALUES
--	('Haruki', 'Murakami', 'haruki@murakami.com', '1948-11-07'),
--	('Sabahattin', 'Ali', 'sabahattin@ali.com', '1914-07-11'),
--	('Orhan', 'Pamuk', 'orhan@pamuk.com', '1950-04-14');

--SELECT * FROM author

----- Yeni bir tablo oluştururken önceki tablodan faydalanabiliriz.
----- Bunun için şablon olarak önceki tabloyu vereceğiz.

--CREATE TABLE author2 (LIKE author)

----- Yine 2. tabloma başka bir tablodan verileri seçerek aktarabilirim:

--INSERT INTO author2
--SELECT * FROM author
--WHERE first_name = 'Sabahattin';

--SELECT * FROM author2

----- Verileriyle birlikte tablo kopyalayalım ve yeni bir tablo oluşturalım:

--CREATE TABLE author3 AS
--SELECT * FROM author;

--SELECT * FROM author3

----- Peki tablo silerken ne yapmamız lazım:
DROP TABLE author3