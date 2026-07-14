-- view data
SELECT * FROM superstore LIMIT 10;

-- total sales
 SELECT sum(Sales) AS Total_Sales FROM superstore;

-- total profit
SELECT sum(Profit) AS Total_Profit FROM superstore;

-- sales by category
SELECT Category, SUM(Sales) AS Total_Sales 
FROM superstore
GROUP BY Category
ORDER BY Total_Sales DESC;

-- profit by region 
SELECT Region, SUM(Profit) AS Total_Profit
FROM superstore 
GROUP BY Region
ORDER BY Total_Profit DESC;

-- top 10 customers
SELECT
 `Customer Name`,
SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC 
LIMIT 10;

-- top 10 products
SELECT `Product Name`,
sum(Sales) AS Total_Sales
FROM superstore
GROUP BY `Product Name`
ORDER BY Total_Sales DESC 
LIMIT 10;

-- avg discount by category
SELECT Category, AVG(Discount) AS Average_Discount
FROM superstore 
GROUP BY Category
ORDER BY Average_Discount DESC;

-- products making loss
SELECT `Product Name`, SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY `Product name`
HAVING Total_Profit < 0
ORDER BY Total_Profit;