--Leian customers tabelis ridade arvu kokku on 3150 rida
SELECT COUNT(*) AS ridade_arv FROM customers;   

--Milline on customers tabeli struktuur
SELECT *  FROM customers
 LIMIT 10

/* 
 Millised linnad on esindatud?
12 linna,Jõhvi, Paide, Narva, Viljandi, Tallinn, Rakvere, Haapsalu, Valga, Pärnu, Kuressaare, Võru, Taru
*/
SELECT DISTINCT LOWER(TRIM(city)) AS city --TRIM eemaldab tühikud ja LOWER näitab linnu ühtse väärtusena
FROM customers;

-- Tallinna kliendid, sorteeritud perenime järgi    
SELECT * FROM customers
WHERE city = 'Tallinn'
ORDER BY last_name ASC
LIMIT 15;

-- vanim ja uusim registreerimine
SELECT
    MIN(registration_date) AS vanim,
    MAX(registration_date) AS uusim
FROM customers;

--unikaalsed kliendi ID 
SELECT COUNT(DISTINCT customer_id) AS unikaalseid_kliente
FROM customers;

-- puuduvad või tühjad eesnimed
SELECT COUNT(*) - COUNT(first_name) AS puuduvad_eesnimed
FROM customers;

--Mitu klienti, kus e-mail on puudu?
SELECT COUNT(*) - COUNT(email) AS puuduvad_emailid
FROM customers;    `

--Kontrollin, kas sama e-mail esineb mitu korda?
SELECT COUNT(*) AS kokku_emaile,
COUNT(DISTINCT email) AS unikaalseid_emaile
FROM customers;  

--Loen kliendid linnade lõikes
SELECT city, COUNT(*) AS klientide_arv
FROM customers
GROUP BY city
ORDER BY klientide_arv DESC;


--Loen kliendid linnade lõikes kokku, TRIM(city) eemaldab algusest ja lõpust tühikud, LOWER(...) muudab kõik väiketähtedeks
SELECT LOWER(TRIM(city)) AS city, COUNT(*) AS klientide_arv
FROM customers
WHERE city IS NOT NULL
  AND TRIM(city) <> ''
GROUP BY LOWER(TRIM(city))
ORDER BY klientide_arv DESC;

--Leian uuemad kliendid (viimase 6 kuu registreerimised):
SELECT * FROM customers
WHERE registration_date >= '2024-07-01'
ORDER BY registration_date DESC;

