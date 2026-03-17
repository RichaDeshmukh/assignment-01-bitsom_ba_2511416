-- Q1

SELECT category,
SUM(revenue)
FROM fact_sales
JOIN dim_product
USING(product_id)
GROUP BY category;
-- Q2

SELECT store_id,
SUM(revenue)
FROM fact_sales
GROUP BY store_id
ORDER BY SUM(revenue) DESC
LIMIT 2;
-- Q3

SELECT month,
SUM(revenue)
FROM fact_sales
JOIN dim_date
USING(date_id)
GROUP BY month;
