

-- Her durumda verilerin tamamına hakim olamayabiliriz
-- Bir veriye benzer yapıdaki verileri de listelemek isteyebiliriz.
-- Bunun için LIKE ve ILIKE operatörlerini kullanacağız.

SELECT first_name FROM customer
WHERE first_name LIKE 'M%'; -- Baş harfi "M" ile başlayan müşterilerin isimleri

-- "%" operatörü wildcard yani joker olarak geçer,
-- Ya burada herhangi bir karakter yoktur ya da birden fazla karakter
-- için yer tutucu olarak kullanılır.

SELECT first_name FROM customer
WHERE first_name LIKE '%y'; -- Son harfi "y" ile biten müşteriler

SELECT first_name FROM customer
WHERE first_name LIKE 'A%y'; -- "A" ile başlayıp "y" ile bitenler

SELECT first_name FROM customer
WHERE first_name LIKE 'A%' AND last_name LIKE 'A%';

-- Büyük/küçük harf hassasiyetini kaldırmak için "ILIKE" kullanılır:
SELECT first_name, last_name FROM customer
WHERE first_name LIKE 'M%' AND last_name ILIKE '%A';

-- NOT operatörü ile kullanırsak bunun haricindeki verileri çağırırız.

SELECT first_name FROM customer
WHERE first_name NOT LIKE 'M%';

-- Yalnızca tek bir karakter için yer tutucu olarak "_" kullanılır:
SELECT first_name FROM customer
WHERE first_name LIKE 'J_an';

-- LIKE yerine "~~" sembolü kullanılabilir. "~~*" sembolleri ILIKE
-- anlamına gelir. "!~~" ise NOT LIKE demektir.

SELECT first_name FROM customer
WHERE first_name ~~ 'M%';

