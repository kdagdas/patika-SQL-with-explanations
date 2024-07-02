-- UNIQUE

-- Tablomuzda bulunan bazı verilerin birbirinin aynı olmasını istemeyiz.
-- Bunların başında username ve emailler gelir.
-- Bunun için UNIQUE kısıtlamasını kullanırız.

/*
INSERT INTO users (username, email, age)
VALUES
	('tester2','tester@gmail.com', 44);
*/

-- tester1 ve tester2 kullanıcıların mailleri aynı oldu.
-- Tabloyu oluştururken UNIQUE yazarak kısıtlayabilirdik ancak
-- tabloyu çoktan oluşturduk ve artık düzenleyebiliriz.

/*
ALTER TABLE users
ADD UNIQUE(email);
*/

-- Yine halihazırda aynı olan iki ifade olduğuna dair hata aldık,
-- şimdi buna önlem alalım:

/*
UPDATE users
SET email = 'tester2@gmail.com'
WHERE username = 'tester2'
RETURNING *;

ALTER TABLE users
ADD UNIQUE(email);
*/

INSERT INTO users (username, email, age)
VALUES
	('tester3', 'tester@gmail.com', 42)

-- zaten böyle bir mail olduğu için hata alırız.