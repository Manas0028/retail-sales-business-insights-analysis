CREATE DATABASE market_research;
USE market_research;

-- Total Revenue
SELECT SUM(Sales) AS Total_Revenue
FROM orders;

-- Total Profit
SELECT SUM(Profit) AS Total_Profit
FROM orders;

-- Revenue by Region
SELECT Region,
       SUM(Sales) AS Revenue
FROM orders
GROUP BY Region
ORDER BY Revenue DESC;

-- Profit by Category
SELECT Category,
       SUM(Profit) AS Profit
FROM orders
GROUP BY Category
ORDER BY Profit DESC;

-- Top 10 Customers
SELECT Customer_Name,
       SUM(Sales) AS Revenue
FROM orders
GROUP BY Customer_Name
ORDER BY Revenue DESC
LIMIT 10;
