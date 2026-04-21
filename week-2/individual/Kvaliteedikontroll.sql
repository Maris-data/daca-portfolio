--Kontrolli, kas kõik müügis viidatud kliendid eksisteerivad: Orbid müügid — kas on customer_id, mida pole customers tabelis?
SELECT COUNT(*) AS orb_klient
FROM sales s
LEFT JOIN customers c ON s.customer_id = c.customer_id
WHERE c.customer_id IS NULL AND s.customer_id IS NOT NULL;

--Kontrolli, kas kõik müügis viidatud tooted eksisteerivad: Orbid müügid — kas on product_id, mida pole products tabelis?
SELECT COUNT(*) AS orb_toode
FROM sales s
LEFT JOIN products p ON s.product_id = p.product_id
WHERE p.product_id IS NULL AND s.product_id IS NOT NULL;

--Kontrolli hindade kooskõla — kas müügihind ja tootehind klapivad?
SELECT s.sale_id, s.total_price, p.price AS tootehind, s.quantity,
       s.total_price - (p.price * s.quantity) AS erinevus
FROM sales s
JOIN products p ON s.product_id = p.product_id
WHERE ABS(s.total_price - (p.price * s.quantity)) > 1
ORDER BY ABS(erinevus) DESC
LIMIT 20;

--Kontrolli, kas on kliente, kes pole kunagi ostnud:
SELECT COUNT(*) AS vaimkliendid
FROM customers c
LEFT JOIN sales s ON c.customer_id = s.customer_id
WHERE s.customer_id IS NULL;

--Kontrolli, kas on tooteid, mida pole kunagi müüdud:
SELECT COUNT(*) AS vaimtooted
FROM products p
LEFT JOIN sales s ON p.product_id = s.product_id
WHERE s.product_id IS NULL;


--VIHJE:LEFT JOIN näitab ka need read, kus vastet EI leita
SELECT COUNT(*) FROM sales s
LEFT JOIN customers c ON s.customer_id = c.customer_id
WHERE c.customer_id IS NULL;

-- Vabatahtlik: Millistel tootel on suurimad hinnaerinevused?
SELECT p.product_name, p.category, p.price AS list_hind,
       AVG(s.total_price / NULLIF(s.quantity, 0)) AS kesk_muugihind,
       p.price - AVG(s.total_price / NULLIF(s.quantity, 0)) AS erinevus
FROM products p
JOIN sales s ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name, p.category, p.price
HAVING ABS(p.price - AVG(s.total_price / NULLIF(s.quantity, 0))) > 5
ORDER BY ABS(erinevus) DESC
LIMIT 10;
