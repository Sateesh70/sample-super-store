#1. Total Sales, Profit, and Discount by Region
SELECT
  region,
  SUM(sales) AS total_sales,
  SUM(profit) AS total_profit,
  SUM(discount) AS total_discount
FROM sample
GROUP BY region
ORDER BY total_sales DESC;

#2.Sales and Profit by Category and Sub-Category
SELECT
  category,
  SUM(sales) AS total_sales,
  SUM(profit) AS total_profit
FROM sample
GROUP BY category
ORDER BY total_sales DESC;
#Q3. Sales and Profit by Shipping Mode
SELECT
  SUM(sales) AS total_sales,
  SUM(profit) AS total_profit
FROM sample
ORDER BY total_sales DESC;
#Q4. Monthly Sales and Profit Trends
SELECT
  SUM(sales) AS total_sales,
  SUM(profit) AS total_profit
FROM sample
ORDER BY total_sales DESC;
#Q5. Sales and Profit by Customer Segment
SELECT
  segment,
  SUM(sales) AS total_sales,
  SUM(profit) AS total_profit
FROM sample
GROUP BY segment
ORDER BY total_sales DESC;
#6Top 5 Products by Sales and Profit
SELECT
  product_name,
  SUM(sales) AS total_sales,
  SUM(profit) AS total_profit
FROM sample
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 5;
#Q7. Sales and Profit by State (Geo Analysis)
SELECT
  state,
  SUM(sales) AS total_sales,
  SUM(profit) AS total_profit
FROM sample
GROUP BY state
ORDER BY total_sales DESC;
#Q8. Discount Analysis: How Discount Affects Sales and Profit
SELECT
  discount,
  COUNT(order_id) AS number_of_orders,
  SUM(sales) AS total_sales,
  SUM(profit) AS total_profit
FROM sample
GROUP BY discount
ORDER BY discount DESC;
#Q9. Total Quantity of Products Sold by Category
SELECT
  category,
  SUM(quantity) AS total_quantity
FROM sample
GROUP BY category
ORDER BY total_quantity DESC;
#Q10. Sales Performance for Each Customer (Top Customers)
SELECT
  customer_name,
  SUM(sales) AS total_sales,
  SUM(profit) AS total_profit
FROM sample
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;





