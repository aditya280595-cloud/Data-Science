-- This code for practice basis

use learn;

-- Basic Calculation

SELECT 
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity
FROM study;

-- This code for find Aveerage sales and Profit

select 
avg(Sales) as Average_Sales,
avg(Profit) as Average_profit
from study;

-- Top 10 Products Error

SELECT Product_Name, SUM(Sales) AS Total_Sales
FROM study
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 10;

-- Top Customers error
use learn;
SELECT Customer_Name, SUM(Sales) AS Total_Sales
FROM study
GROUP BY Customer_Name
ORDER BY Total_Sales DESC
LIMIT 10;

-- Category aur Sub-Category ke Sales error

SELECT Category, Sub_Category, SUM(Sales) AS Total_Sales
FROM study
GROUP BY Category, Sub_Category
ORDER BY Total_Sales DESC;

-- Mahine ke Sales ka Trend error

SELECT DATE_FORMAT(STR_TO_DATE(Order_Date, '%d-%m-%y'), '%Y-%m') AS Month, 
       SUM(Sales) AS Monthly_Sales
FROM study
GROUP BY Month
ORDER BY Month;

-- Country/Region ke Sales
SELECT Country, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
FROM study
GROUP BY Country
ORDER BY Total_Sales DESC;

-- Shipping Cost error

SELECT Ship_Mode, AVG(Shipping_Cost) AS Avg_Shipping_Cost
FROM study
GROUP BY Ship_Mode;


-- Profit Margin %
SELECT 
    (SUM(Profit) / SUM(Sales)) * 100 AS Profit_Margin_Percent
FROM study;

-- Negative Profit wale Orders

SELECT *
FROM study
WHERE Profit < 0;

-- Order Priority Analysis
SELECT Order_Priority, COUNT(*) AS Total_Orders, SUM(Sales) AS Total_Sales
FROM study
GROUP BY Order_Priority;

-- Top Markets (Sales ke hisaab se)

SELECT Market, SUM(Sales) AS Total_Sales
FROM study
GROUP BY Market
ORDER BY Total_Sales DESC;









