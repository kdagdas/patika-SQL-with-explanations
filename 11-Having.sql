-- HAVING

-- Gruplanmış verilere koşullar uygulamak için HAVING keywordünü kullanırız.

SELECT rental_rate, COUNT(*) FROM film
GROUP BY rental_rate
HAVING COUNT(*) > 325; 
-- Özgün rental rate grupları arasında film adetlerinin 325'ten fazla olan grupları listeler.

-- Kaç adet satışım var?
SELECT COUNT(*) FROM payment;

-- Her çalışan kaçar satış yapmış (çalışanlara göre gruplayacağız)
SELECT staff_id, COUNT(*) FROM payment
GROUP BY staff_id;

-- Toplam satış adedi 7300'den büyük olan çalışanları listele
SELECT staff_id, COUNT(*) FROM payment
GROUP BY staff_id
HAVING COUNT(*) > 7300;

SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100
ORDER BY SUM(amount) DESC;