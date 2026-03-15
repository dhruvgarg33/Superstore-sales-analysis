CREATE DATABASE superstore_project;
use superstore_project;
show tables;
select * from superstore;
select count(*) from superstore;



select 
round(sum(sales), 2) as total_revenue,
round(sum(profit), 2) as total_profit,
round(sum(profit)/sum(sales)*100, 2) as overall_profit_margin_pct,
count(distinct order_id) as total_orders,
round(avg(sales), 2) as avg_order_value
from superstore;

SELECT 
    Region,
    ROUND(SUM(Sales), 2) AS Total_Revenue,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND(SUM(Profit)/SUM(Sales)*100, 2) AS Profit_Margin_Pct,
    COUNT(DISTINCT Order_ID) AS Total_Orders
FROM superstore
GROUP BY Region
ORDER BY Total_Revenue DESC;


select 
category,
round(sum(sales), 2) as total_revenue,
round(sum(profit), 2) as total_profit,
round(sum(profit)/sum(sales)*100, 2) as profit_margin_pct,
count(distinct order_id) as total_orders 
from superstore 
group by category
order by profit_margin_pct desc;


SELECT 
    Segment,
    ROUND(SUM(Sales), 2) AS Total_Revenue,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND(SUM(Profit)/SUM(Sales)*100, 2) AS Profit_Margin_Pct,
    COUNT(DISTINCT Order_ID) AS Total_Orders,
    ROUND(AVG(Sales), 2) AS Avg_Order_Value
FROM superstore
GROUP BY Segment
ORDER BY Total_Profit DESC;

SELECT 
    Sub_Category,
    Category,
    ROUND(SUM(Sales), 2) AS Total_Revenue,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND(SUM(Profit)/SUM(Sales)*100, 2) AS Profit_Margin_Pct
FROM superstore
GROUP BY Sub_Category, Category
ORDER BY Total_Profit ASC;



SELECT 
    CASE 
        WHEN Discount = 0 THEN 'No Discount'
        WHEN Discount <= 0.2 THEN 'Low Discount'
        WHEN Discount <= 0.4 THEN 'Medium Discount'
        ELSE 'High Discount'
    END AS Discount_Category,
    COUNT(*) AS Total_Orders,
    ROUND(AVG(Profit), 2) AS Avg_Profit,
    ROUND(AVG(Sales), 2) AS Avg_Sales,
    ROUND(SUM(Profit)/SUM(Sales)*100, 2) AS Profit_Margin_Pct
FROM superstore
GROUP BY Discount_Category
ORDER BY Profit_Margin_Pct DESC;

SELECT 
    Product_Name,
    Category,
    ROUND(SUM(Sales), 2) AS Total_Revenue,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND(SUM(Profit)/SUM(Sales)*100, 2) AS Profit_Margin_Pct
FROM superstore
GROUP BY Product_Name, Category
ORDER BY Total_Profit DESC
LIMIT 10;

SELECT 
Order_ID,
    Product_Name,
    Category,
    ROUND(SUM(Sales), 2) AS Total_Revenue,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND(SUM(Profit)/SUM(Sales)*100, 2) AS Profit_Margin_Pct
FROM superstore
GROUP BY Product_Name, Category
ORDER BY Total_Profit DESC
LIMIT 10;

SELECT 
    MonthYear,
    ROUND(SUM(Sales), 2) AS Monthly_Revenue,
    ROUND(SUM(Profit), 2) AS Monthly_Profit,
    COUNT(DISTINCT Order_ID) AS Monthly_Orders
FROM superstore
GROUP BY MonthYear
ORDER BY MIN(Order_Date);

SHOW COLUMNS FROM superstore;

SELECT 
    SubCategory,
    Category,
    ROUND(SUM(Sales), 2) AS Total_Revenue,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND(SUM(Profit)/SUM(Sales)*100, 2) AS Profit_Margin_Pct
FROM superstore
GROUP BY SubCategory, Category
ORDER BY Total_Profit ASC;




