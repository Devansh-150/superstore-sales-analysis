-- Superstore Sales Analysis
-- SQL queries used for the project


-- 1. top 10 States by Sales
SELECT 
    state, SUM(sales) AS total_sales
FROM
    sales
GROUP BY state
ORDER BY SUM(sales) DESC
LIMIT 10;

-- 2. top selling cities (more than 100000$)
SELECT 
    city, SUM(sales) AS total_sales
FROM
    sales
GROUP BY city
HAVING SUM(sales) > 100000
ORDER BY SUM(sales) DESC;

-- 3. total sales by category
SELECT 
    category, SUM(sales)
FROM
    sales
GROUP BY category;

-- 4. top 10 Customers list
SELECT 
    customer_id, customer_name, SUM(sales)
FROM
    sales
GROUP BY customer_id , customer_name
ORDER BY SUM(sales) DESC
LIMIT 10;

-- 5. top 3 highest revenue generated products
SELECT 
    product_id, product_name, SUM(sales) AS total_sales
FROM
    sales
GROUP BY product_id , product_name
ORDER BY SUM(sales) DESC
LIMIT 3;

-- 6. top 3 products by transaction counts
SELECT 
    product_name, COUNT(*) AS total_count
FROM
    sales
GROUP BY product_name
ORDER BY COUNT(*) DESC
LIMIT 3;

-- 7. sales by region
SELECT 
    region, SUM(sales) AS total_region_sales
FROM
    sales
GROUP BY region;

-- 8. top 10 sub-categories by transactions count
SELECT 
    category, sub_category, COUNT(*) AS total_count
FROM
    sales
GROUP BY category , sub_category
ORDER BY COUNT(*) DESC
LIMIT 10;

-- 9. total customers
SELECT 
    COUNT(DISTINCT customer_id) AS total_customers
FROM
    sales;

-- 10. total distinct product sold (not much imp)
SELECT 
    COUNT(DISTINCT product_id) AS total_product_sold
FROM
    sales;

-- 11. Relation between(avg days takens) from order date to shipping out of warehouse(shipping date) by shipping mode
SELECT 
    ship_mode,
    ROUND(AVG(DATEDIFF(ship_date, order_date)), 2) AS avg_interval_days
FROM
    sales
GROUP BY ship_mode;

-- 12. Average order value (aov)
SELECT 
    ROUND(SUM(sales) / COUNT(DISTINCT order_id), 2) AS AOV
FROM
    sales; 

-- 13. Average sales per customer
SELECT 
    ROUND(SUM(sales)) / COUNT(customer_id) AS Avg_sale_per_customer
FROM
    sales;

