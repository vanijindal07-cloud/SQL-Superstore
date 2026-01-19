-- SUPERSTORE TABLE CREATION
CREATE TABLE superstore (
    order_id VARCHAR(20),
    order_date DATE,
    customer_name VARCHAR(100),
    region VARCHAR(50),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    sales DECIMAL(10,2),
    profit DECIMAL(10,2)
);

-- DATA INSERTION
INSERT INTO superstore VALUES
('SS-001','2019-01-02','Aarav Shah','West','Electronics','Laptop',4200,900),
('SS-002','2019-01-03','Riya Mehta','East','Kitchen','Mixer Grinder',1800,250);
/* remaining rows already added */

-- VIEW DATA
SELECT * FROM superstore;

-- FILTERING
SELECT * FROM superstore
WHERE category = 'Kitchen';

-- SORTING
SELECT customer_name, sales
FROM superstore
ORDER BY sales DESC;

-- AGGREGATION
SELECT category,
       SUM(sales) AS total_sales,
       AVG(profit) AS avg_profit
FROM superstore
GROUP BY category;

-- HAVING CLAUSE
SELECT category,
       SUM(sales) AS total_sales
FROM superstore
GROUP BY category
HAVING SUM(sales) > 15000;

-- DATE RANGE
SELECT *
FROM superstore
WHERE order_date BETWEEN '2019-02-01' AND '2019-02-28';

-- PATTERN SEARCH
SELECT *
FROM superstore
WHERE customer_name LIKE 'A%';

-- EXPORT QUERY
SELECT
    order_id,
    order_date,
    customer_name,
    region,
    category,
    sub_category,
    sales,
    profit
FROM superstore
ORDER BY order_date;
