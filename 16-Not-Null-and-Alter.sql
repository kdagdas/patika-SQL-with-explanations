-- NOT NULL and ALTER

-- Kısıtlamalar ile tablolarımıza girilecek verileri denetleyebiliriz.

/*
CREATE TABLE users (
	id SERIAL PRIMARY KEY,
	username VARCHAR(20),
	email VARCHAR(50),
	age INTEGER
);
*/

-- Bu tabloada id haricindeki sütunları kısıtlamadık.

/*
INSERT INTO users(username, email, age)
VALUES
	('tester','tester@gmail.com', 23);
*/

/*
INSERT INTO users(email, age)
VALUES
	('gamer@gmail.com', 23);
*/

-- Bu eklediğimiz veri ile username kısmını boş bırakmış olduk ve
-- veri tipi NULL olarak geçti.

-- Ancak biz username alanının boş bırakılmasını istemiyoruz.
-- Fakat tabloyu çoktan oluşturduk ve böyle bir kısıtlama eklememiştik.
-- Bunun için ALTER keywordü ile tabloyu düzenlemem gerekir.

/*
ALTER TABLE users -- users tablosunda değişiklik yapacağım
ALTER COLUMN username -- username sütununu düzenlemek istiyorum
SET NOT NULL; -- Kolonu NOT NULL hale getireceğim
*/

-- Ancak düzenlemek istediğimiz sütunda halihazırda
-- NULL ifadeler bulunduğu için bir hata alırız.

-- Bu NULL ifadeleri duruma göre kaldırmak için farklı taktikler uygulayabiliriz.
-- Sayısal ifadelerde örneğin yaş büyük sayılar verilerek göz ardı edilmesi sağlanabilir.
-- Veya mail adresleri için örnek mailler eklenebilir.
-- Biz burada username'i olmayan kullanıcıları hesaplamaya dahil etmek istemiyoruz.
-- Bu yüzden o satırı komple sileceğiz.

/*
DELETE FROM users
WHERE username IS NULL -- NULL olup olmadığını kontrol eden keyword: IS
RETURNING*;
*/

-- Şimdi ALTER ile yeniden değişiklik yapalım ve null bir veri eklemeye çalışalım.

/*
ALTER TABLE users
ALTER COLUMN username
SET NOT NULL;

INSERT INTO users (email, age)
VALUES ('kadirdagdas@gmail.com', 23);
*/

-- NULL veri kısıtlamasını ihlal etttiğimize dair bir hata alırız.