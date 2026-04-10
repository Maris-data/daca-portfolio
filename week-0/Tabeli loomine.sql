-- Loo tabel
CREATE TABLE team_members (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    role VARCHAR(100),
    week INT DEFAULT 0,
    joined_at TIMESTAMP DEFAULT NOW()
);

--lisa nimed 
INSERT INTO team_members (name, role, week) VALUES
    ('Maris Eenmaa', 'Andmeanalüütik', 0),
    ('Toomas Kask', 'IT Director', 0),
    ('Kristi Tamm', 'CEO', 0),
    ('Anna Mets', 'Marketing Lead', 0);

--loo toote tabel 
CREATE TABLE products (
    product_id    INTEGER PRIMARY KEY,             -- Toote ID (1001-1350)
    product_name  VARCHAR(200) NOT NULL,           -- Toote nimetus
    category      VARCHAR(50) NOT NULL,            -- Kategooria
    subcategory   VARCHAR(50) NOT NULL,            -- Alamkategooria
    supplier      VARCHAR(200),                    -- Tarnija nimi (viitab suppliers.supplier_name)
    cost_price    DECIMAL(10,2) NOT NULL,          -- Omahind (EUR)
    retail_price  DECIMAL(10,2) NOT NULL,          -- Jaehind (EUR)
    eco_certified BOOLEAN,                         -- Ökomärgis (TRUE/FALSE/NULL)
    created_at    DATE NOT NULL                    -- Toote lisamise kuupäev
);

--loenda 
SELECT COUNT(*) FROM sales_import;

--sorteeri hinna järgi
SELECT sale_id, total_price AS summa
FROM sales
ORDER BY total_price DESC
LIMIT 5;