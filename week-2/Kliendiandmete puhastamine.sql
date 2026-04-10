--Kliendiandmete Puhastamine
CREATE TABLE customers_test AS SELECT * FROM customers;
SELECT COUNT(*) AS ridade_arv FROM customers_test; -- ridade arv 3150

--Leia duplikaatsed e-mailid:
SELECT email, COUNT(*) AS koopiate_arv
FROM customers_test
GROUP BY email
HAVING COUNT(*) > 1
ORDER BY koopiate_arv DESC;


--Leia puuduvad nimed:
SELECT
    COUNT(*) FILTER (WHERE first_name IS NULL OR first_name = '') AS null_eesnimi,
    COUNT(*) FILTER (WHERE last_name IS NULL OR last_name = '') AS null_perenimi
FROM customers_test;

-- Kontrolli linnade nimekujusid — kas on ebajärjekindlusi?
SELECT city, COUNT(*) AS arv
FROM customers_test
GROUP BY city
ORDER BY city;

--Kontrolli kontaktandmeid — puuduvad telefoninumbrid ja e-mailid:
SELECT
    COUNT(*) FILTER (WHERE phone IS NULL OR phone = '') AS null_telefon,
    COUNT(*) FILTER (WHERE email IS NULL OR email = '') AS null_email
FROM customers_test;

--vihje
SELECT city, COUNT(*) FROM customers_test
GROUP BY city HAVING COUNT(*) > 1;


--Asenda NULL nimed
UPDATE customers_test
SET first_name = 'Tundmatu'
WHERE first_name IS NULL OR first_name = '';

-- Ühtlusta linnanimed INITCAP + TRIM abil
UPDATE customers_test
SET city = INITCAP(TRIM(city))
WHERE city != INITCAP(TRIM(city));

-- Standardiseeri e-mailid väiketähtedeks
UPDATE customers_test
SET email = LOWER(TRIM(email))
WHERE email != LOWER(TRIM(email));

-- Kontrolli tulemust
SELECT city, COUNT(*) AS arv
FROM customers_test
GROUP BY city ORDER BY city;

--Lisa CASE WHEN formaadistandardiseerimiseks, standardiseeri telefoninumbrid
SELECT phone,
    CASE
        WHEN phone LIKE '+372%' THEN phone
        WHEN phone LIKE '372%' THEN '+' || phone
        WHEN LENGTH(phone) = 7 THEN '+372' || phone
        ELSE phone
    END AS standardne_telefon
FROM customers_test
WHERE phone IS NOT NULL
LIMIT 10;
