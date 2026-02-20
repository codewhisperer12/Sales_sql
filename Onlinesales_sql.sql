--Creating Table--
Drop Table Sales;
Create Table Sales(
    transaction_id Serial PRIMARY KEY,
    order_date DATE,
    product_Category TEXT,
    product_name TEXT,
    units_sold INTEGER,
    unit_price NUMERIC(10,2),
    total_revenue NUMERIC(12,2),
    region TEXT,
    payment_method TEXT
);

--Dataset Display after loading--
Select * from Sales;

--Extracting data from dataset--
SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(total_revenue) AS monthly_revenue,
    COUNT(DISTINCT transaction_id) AS order_volume
FROM sales
GROUP BY year, month
ORDER BY year, month;