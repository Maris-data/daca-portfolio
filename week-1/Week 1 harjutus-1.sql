
/* Pikk kommentaari jaoks 
Siin mitu rida 
*/
--Anna müügi tabelist 5
SELECT * FROM sales LIMIT 5
SELECT invoice_id, /*sale_date, customer_id, _internal_resolve*/ total_price, store_location
FROM sales  --millisest tabelist 
LIMIT 10  --piiran vastuse ridade arvu

-- anna Pärnu müük kus summa 500 või rohkem
-- järjesta summad summa alusel 
select *
FROM sales
WHERE store_location = 'Pärnu' OR total_price >= 500
ORDER BY total_price DESC    --vaikimisi kasvavalt (ASC) kahanevalt DESC
LIMIT 10

SELECT *
FROM sales
WHERE store_location = 'Tartu' and total_price <= 200
LIMIT 10

-- sorteerime mitme tunnuse järgi 
SELECT invoice_id, total_price, channel, store_location, payment_method
FROM sales
ORDER BY total_price DESC, payment_method
LIMIT 50

-- Anna sales tabeli ridade arv
SELECT COUNT(*)
FROM sales

SELECT DISTINCT store_location
FROM sales
WHERE store_location is not null
ORDER BY store_location
LIMIT 10

SELECT count(DISTINCT store_location) AS "Linnade Arv" -- tühik vahel jutumärk 
From sales

-- arvete koguarv, unikaalsete arvete arv 
SELECT
  COUNT (*) AS ridade_arv,
  COUNT (DISTINCT invoice_id) AS unikaalsed,
  COUNT(*) - COUNT(DISTINCT invoice_id) AS DUPLICATE



