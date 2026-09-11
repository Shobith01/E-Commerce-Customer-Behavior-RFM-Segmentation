USE Ecommerce_Analysis;
GO


-- Basic Exploration
-- Total orders and unique customers

SELECT 
    COUNT(*) AS Total_Orders,
    COUNT(DISTINCT customer_id) AS Unique_Customers
FROM Orders;


-- Revenue by Category
-- Considering only delivered orders

SELECT 
    category,
    SUM(order_total) AS Total_Revenue,
    COUNT(order_id) AS No_Of_Orders,
    AVG(order_total) AS Avg_Revenue
FROM Orders
WHERE order_status = 'Delivered'
GROUP BY category
ORDER BY Total_Revenue DESC;


-- Order Status Breakdown

SELECT 
    order_status,
    COUNT(*) AS Total_Count
FROM Orders
GROUP BY order_status;


-- Customer Level Summary
-- One row per customer

SELECT 
    customer_id,
    COUNT(order_id) AS Frequency,
    SUM(order_total) AS Monetary,
    MAX(order_date) AS Last_Order_Date,
    MIN(order_date) AS First_Order_Date
FROM Orders
WHERE order_status = 'Delivered'
GROUP BY customer_id
ORDER BY Monetary DESC;


-- RFM Analysis

WITH Customer_Summary AS 
(
    SELECT 
        customer_id,
        COUNT(order_id) AS Frequency,
        SUM(order_total) AS Monetary,
        MAX(order_date) AS Last_Order_Date,
        MIN(order_date) AS First_Order_Date,
        DATEDIFF(DAY, MAX(order_date), '2024-12-31') AS Recency_Days
    FROM Orders
    WHERE order_status = 'Delivered'
    GROUP BY customer_id
),

RFM_Scores AS
(
    SELECT 
        *,
        
        CASE 
            WHEN Recency_Days <= 30 THEN 4
            WHEN Recency_Days <= 90 THEN 3
            WHEN Recency_Days <= 180 THEN 2
            ELSE 1
        END AS R_Score,

        CASE
            WHEN Frequency >= 15 THEN 4
            WHEN Frequency >= 8 THEN 3
            WHEN Frequency >= 4 THEN 2
            ELSE 1
        END AS F_Score,

        CASE
            WHEN Monetary >= 1500 THEN 4
            WHEN Monetary >= 800 THEN 3
            WHEN Monetary >= 300 THEN 2
            ELSE 1
        END AS M_Score

    FROM Customer_Summary
),

RFM_Final AS
(
    SELECT 
        *,
        R_Score + F_Score + M_Score AS RFM_Total
    FROM RFM_Scores
),

Segmented_Customers AS
(
    SELECT 
        *,
        
        CASE
            WHEN R_Score = 4 
                 AND F_Score >= 3 
                 AND M_Score >= 3
                THEN 'Champions'

            WHEN R_Score >= 3 
                 AND F_Score >= 3
                THEN 'Loyal Customers'

            WHEN R_Score >= 3 
                 AND F_Score <= 2
                THEN 'Potential Loyalist'

            WHEN R_Score = 4 
                 AND F_Score = 1
                THEN 'New Customers'

            WHEN R_Score = 2 
                 AND F_Score >= 2
                THEN 'At Risk'

            WHEN R_Score = 1 
                 AND F_Score >= 2
                THEN 'Lost Customers'

            ELSE 'Need Attention'
        END AS Customer_Segment

    FROM RFM_Final
)


-- Final customer-level RFM output

SELECT 
    customer_id,
    Frequency,
    Monetary,
    Last_Order_Date,
    First_Order_Date,
    Recency_Days,
    R_Score,
    F_Score,
    M_Score,
    RFM_Total,
    Customer_Segment
FROM Segmented_Customers
ORDER BY RFM_Total DESC;


-- Customer Segment Summary

WITH Customer_Summary AS 
(
    SELECT 
        customer_id,
        COUNT(order_id) AS Frequency,
        SUM(order_total) AS Monetary,
        MAX(order_date) AS Last_Order_Date,
        MIN(order_date) AS First_Order_Date,
        DATEDIFF(DAY, MAX(order_date), '2024-12-31') AS Recency_Days
    FROM Orders
    WHERE order_status = 'Delivered'
    GROUP BY customer_id
),

RFM_Scores AS
(
    SELECT 
        *,
        
        CASE 
            WHEN Recency_Days <= 30 THEN 4
            WHEN Recency_Days <= 90 THEN 3
            WHEN Recency_Days <= 180 THEN 2
            ELSE 1
        END AS R_Score,

        CASE
            WHEN Frequency >= 15 THEN 4
            WHEN Frequency >= 8 THEN 3
            WHEN Frequency >= 4 THEN 2
            ELSE 1
        END AS F_Score,

        CASE
            WHEN Monetary >= 1500 THEN 4
            WHEN Monetary >= 800 THEN 3
            WHEN Monetary >= 300 THEN 2
            ELSE 1
        END AS M_Score

    FROM Customer_Summary
),

RFM_Final AS
(
    SELECT 
        *,
        R_Score + F_Score + M_Score AS RFM_Total
    FROM RFM_Scores
),

Segmented_Customers AS
(
    SELECT 
        *,
        
        CASE
            WHEN R_Score = 4 
                 AND F_Score >= 3 
                 AND M_Score >= 3
                THEN 'Champions'

            WHEN R_Score >= 3 
                 AND F_Score >= 3
                THEN 'Loyal Customers'

            WHEN R_Score >= 3 
                 AND F_Score <= 2
                THEN 'Potential Loyalist'

            WHEN R_Score = 4 
                 AND F_Score = 1
                THEN 'New Customers'

            WHEN R_Score = 2 
                 AND F_Score >= 2
                THEN 'At Risk'

            WHEN R_Score = 1 
                 AND F_Score >= 2
                THEN 'Lost Customers'

            ELSE 'Need Attention'
        END AS Customer_Segment

    FROM RFM_Final
)

SELECT
    Customer_Segment,
    COUNT(*) AS Customer_Count,
    ROUND(AVG(Monetary), 2) AS Avg_Revenue,
    ROUND(AVG(Frequency), 1) AS Avg_Orders,
    ROUND(AVG(Recency_Days), 0) AS Avg_Recency_Days
FROM Segmented_Customers
GROUP BY Customer_Segment
ORDER BY Avg_Revenue DESC;