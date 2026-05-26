-- GRUPITÖÖ NÄDAL 4 - Roll A
-- 2024. aasta iga kuu kohta: tellimuste arv, kogukäive, keskmine tellimusväärtus. 
SELECT 
  DATE_TRUNC('month', sale_date) AS kuu, --Kasutan DATE_TRUNC('month', sale_date) grupeerimiseks.
  COUNT(sale_id) AS tellimuste_arv,
  SUM(total_price) AS kogukäive,
  ROUND(AVG(total_price), 2) AS keskmine_tellimus
FROM sales
WHERE sale_date >= '2024-01-01' 
  AND sale_date < '2025-01-01'
GROUP BY DATE_TRUNC('month', sale_date)
ORDER BY kuu;
-- AOV oli jaanuaris 274 ja detsembris 310, 2024. käive kasvas, kuna oli rohkem tellimusi ja kõrgem keskmine ostukorv (AOV)


--Müük kategooriate kaupa, 
SELECT
  p.category,
  COUNT(DISTINCT p.product_id) AS toodete_arv,
  SUM(s.total_price) AS kogumüük,
  ROUND(AVG(s.unit_price), 2) AS keskmine_hind
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.category
HAVING SUM(s.total_price) > 0  --ainult kategooriad, kus kogumüük > 50000
ORDER BY kogumüük DESC;

-- Leian kuised trendid CTE-ga. 
WITH kuu_myyk AS (
  SELECT
    DATE_TRUNC('month', sale_date) AS kuu,
    SUM(total_price) AS kaive
  FROM sales
  WHERE sale_date >= '2024-01-01'
  GROUP BY DATE_TRUNC('month', sale_date)
)
SELECT
  kuu,
  kaive,
  LAG(kaive) OVER (ORDER BY kuu) AS eelmine_kuu,
  kaive - LAG(kaive) OVER (ORDER BY kuu) AS muutus
FROM kuu_myyk
ORDER BY kuu;

--arvutan kuust-kuusse kasvu protsendi
WITH kuu_myyk AS (
  SELECT
    DATE_TRUNC('month', sale_date) AS kuu,
    SUM(total_price) AS kaive
  FROM sales
  WHERE sale_date >= '2024-01-01'
  AND sale_date < '2025-01-01'
  GROUP BY DATE_TRUNC('month', sale_date)
)
SELECT
  kuu,
  kaive,
  LAG(kaive) OVER (ORDER BY kuu) AS eelmine_kuu,
  kaive - LAG(kaive) OVER (ORDER BY kuu) AS muutus,
  ROUND(
    (kaive - LAG(kaive) OVER (ORDER BY kuu))
    / NULLIF(LAG(kaive) OVER (ORDER BY kuu), 0) * 100,
    1
  ) AS kasvu_protsent
FROM kuu_myyk
ORDER BY kuu;

--grupeerida mitme veeru järgi korraga, müük linna ja kuu kaupa:
SELECT
    c.city AS linn,
    DATE_TRUNC('month', s.sale_date) AS kuu,
    COUNT(*) AS tellimusi,
    SUM(s.total_price) AS kogukäive
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
GROUP BY c.city, DATE_TRUNC('month', s.sale_date)
ORDER BY linn, kuu;


--2024. Müük linnade lõikes, kus tellimuste arv on surem kui 10
SELECT
    c.city AS linn,
    COUNT(*) AS tellimusi,
    SUM(s.total_price) AS kogukäive
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
WHERE s.sale_date >= '2024-01-01'     -- WHERE: ainult 2024. aasta read
GROUP BY c.city
HAVING COUNT(*) > 10                   -- HAVING: ainult linnad 10+ tellimusega
ORDER BY kogukäive DESC;

--
WITH kuu_myyk AS (
    SELECT
        DATE_TRUNC('month', sale_date) AS kuu,
        SUM(total_price) AS käive
    FROM sales
    WHERE sale_date >= '2024-01-01'
    GROUP BY DATE_TRUNC('month', sale_date)
)
SELECT
    kuu,
    käive,
    LAG(käive) OVER (ORDER BY kuu) AS eelmine_kuu,
    käive - LAG(käive) OVER (ORDER BY kuu) AS kasv
FROM kuu_myyk
ORDER BY kuu;


--Mis oli septembri languse põhjus, kas langus oli kõikides kategooriates? 
SELECT 
  p.category,
  SUM(s.total_price) AS kaive
FROM sales s
JOIN products p ON s.product_id = p.product_id
WHERE s.sale_date >= '2024-09-01' 
  AND s.sale_date < '2024-10-01'
GROUP BY p.category
ORDER BY kaive DESC;

--Võrdlen augustiga 
SELECT 
  p.category,
  SUM(s.total_price) AS kaive
FROM sales s
JOIN products p ON s.product_id = p.product_id
WHERE s.sale_date >= '2024-08-01' 
  AND s.sale_date < '2024-09-01'
GROUP BY p.category
ORDER BY kaive DESC;

--Võrdlen augusti ja septembri käive muutust kategooriate lõikes
WITH aug AS (
  SELECT 
    p.category,
    SUM(s.total_price) AS aug_kaive
  FROM sales s
  JOIN products p ON s.product_id = p.product_id
  WHERE s.sale_date >= '2024-08-01' 
    AND s.sale_date < '2024-09-01'
  GROUP BY p.category
),
sep AS (
  SELECT 
    p.category,
    SUM(s.total_price) AS sep_kaive
  FROM sales s
  JOIN products p ON s.product_id = p.product_id
  WHERE s.sale_date >= '2024-09-01' 
    AND s.sale_date < '2024-10-01'
  GROUP BY p.category
)
SELECT 
  aug.category,
  aug.aug_kaive,
  sep.sep_kaive,
  ROUND(
    (sep.sep_kaive - aug.aug_kaive) 
    / NULLIF(aug.aug_kaive, 0) * 100, 1
  ) AS muutus_protsent
FROM aug
JOIN sep ON aug.category = sep.category
ORDER BY muutus_protsent ASC;

--kategooriate marginaali võrdlus
SELECT 
    category, 
    ROUND(AVG((retail_price - cost_price) / retail_price)::numeric, 4) AS avg_margin
FROM products
WHERE category IN ('Jalanõusid', 'Laste_riided', 'Meeste_riided', 'Naiste_riided', 'Aksessuaarid') 
GROUP BY category
ORDER BY avg_margin DESC;
--Kõige kõrgem marginaal Aksessuaarid ja Laste riided

--Online vs pood  käibe võrdlus, 2024
SELECT
    s.channel AS kanal,
    COUNT(*) AS tellimusi,
    ROUND(SUM(s.total_price), 2) AS kogukäive,
    ROUND(AVG(s.total_price), 2) AS aov
FROM sales s
WHERE s.sale_date >= '2024-01-01'
  AND s.sale_date < '2025-01-01'
GROUP BY s.channel
ORDER BY kogukäive DESC;



--Kogukäibe, tellimuste arvu ja AOV võrdlus
SELECT  
  EXTRACT(YEAR FROM sale_date) AS aasta,
  ROUND(SUM(total_price), 2) AS kogukäive,
  COUNT(sale_id) AS tellimuste_arv,
  ROUND(AVG(total_price), 2) AS aov
FROM sales
WHERE sale_date >= '2023-01-01'
  AND sale_date < '2025-01-01'
GROUP BY EXTRACT(YEAR FROM sale_date)
ORDER BY aasta;
-- käibekasv 2024. aastal tuli suuremast tellimuste arvust, mitte kallimast ostukorvist. Tellimusi oli 20% rohkem ja kogukäive kasvas 19%,

--Analüüsin brutomarginaali ja kasumit kategooriate lõikes
SELECT
  p.category,

  ROUND(SUM(s.total_price), 2) AS kaive,
  SUM(s.quantity) AS myydud_kogus,
  COUNT(DISTINCT s.sale_id) AS tellimuste_arv,

  ROUND(SUM(s.quantity * p.cost_price), 2) AS omahind,

  ROUND(
    SUM(s.total_price) - SUM(s.quantity * p.cost_price),      --Ümardan 2 kohta peale koma 
    2
  ) AS brutokasum,

  ROUND(
    (
      SUM(s.total_price) - SUM(s.quantity * p.cost_price)     --Brutokasum ja brutomarginal
    ) / NULLIF(SUM(s.total_price), 0),
    4
  ) AS brutomarginaal

FROM sales s
JOIN products p 
  ON s.product_id = p.product_id

WHERE s.sale_date >= '2023-01-01'
  AND s.sale_date < '2025-01-01'
  AND p.category IN (
    'Jalanõusid',
    'Laste_riided',
    'Meeste_riided',
    'Naiste_riided',
    'Aksessuaarid'
  )

GROUP BY p.category           --grupeerin read kategooriate kaupa
ORDER BY brutokasum DESC;