-- PRIMARY KEY and FOREIGN KEY
/*
- Verilerin her birini ayırt etmek için o veriye özgün olacak ifadeler
atamak isteyebiliriz.

- Bu gibi kendine has olan ifadelere PRIMARY KEY denir. 

- Verilerin başına koyduğumuz id'ler bu veri tipine örnek olabilir.

- Genellikle her bir alan için farklı tablolar oluştururuz. Ancak bu tablolarda
bulunan veriler birbiriyle ilişkili olabilir. 

- Örnek olarak öğrenciler tablosu ile aldıkları kursların tablosu.
Ancak bu veriler arasında bir  ilişki kurmam gerekir.

- Bunun için FOREIGN KEY'leri kullanırım. Genellikle
FOREIGN KEY'ler bir satırı referans verirler. 

- FOREIGN KEY sütunlarına isim verirken referans vereceğimiz tablonun
ilgili sütunuyla alakalı bir isim verilir.

- FOREIGN KEY'ler tekrar edebilir. Sonuçta aynı yazara ait birden fazla
kitap bulunabilir.*/

/*
CREATE TABLE book (
	id SERIAL PRIMARY KEY,
	title VARCHAR(100) NOT NULL,
	page_number INTEGER NOT NULL,
	author_id INTEGER REFERENCES author(id)
);

insert into book (id, title, page_number, author_id) values (1, 'Felicity', 237, 1);
insert into book (id, title, page_number, author_id) values (2, 'Operation Petticoat', 345, 2);
insert into book (id, title, page_number, author_id) values (3, 'Change of Plans (Le code a changé)', 246, 3);
*/
/*
- Tablolarımızı ilişkilendirdikten sonra hem yazar tablomuzdan hem de kitap
tablomuzdan verileri görmek isteyebiliriz.

- Bunu JOIN ON keywordü ile yaparız.

- JOIN'den sonra ilişkilendirmek istediğimiz tablo ismini ve ON keywordü sonrasında ise
tablolarımızın hangi sütunları ile eşleştireceğimizi yazarız.
*/


SELECT * FROM book
JOIN author ON author.id = book.author_id;