-- =====================================================
-- Week 3: SQL & Data Querying
-- Dataset: sales_data_sample
-- Author: FaaiQ ShieKh
-- Description: Basic SQL Queries for Sales Dataset
-- =====================================================

-- salesdbSelect the database
USE salesdb;

-- =====================================================
-- 1. View all tables in the database
-- =====================================================
SHOW TABLES;

-- =====================================================
-- 2. Display the structure of the table
-- Shows column names, data types, null values, etc.
-- =====================================================
DESCRIBE sales_data_sample;

-- =====================================================
-- 3. View all records
-- =====================================================
SELECT *
FROM sales_data_sample;

-- =====================================================
-- 4. View selected columns only
-- =====================================================
SELECT
    ORDERNUMBER,
    CUSTOMERNAME,
    PRODUCTLINE,
    COUNTRY,
    SALES
FROM sales_data_sample;

-- =====================================================
-- 5. Filter records using WHERE
-- Show only customers from the USA
-- =====================================================
SELECT *
FROM sales_data_sample
WHERE COUNTRY = 'USA';

-- =====================================================
-- 6. Sort data in descending order of sales
-- Highest sales first
-- =====================================================
SELECT
    ORDERNUMBER,
    CUSTOMERNAME,
    SALES
FROM sales_data_sample
ORDER BY SALES DESC;

-- =====================================================
-- 7. Sort data in ascending order of sales
-- Lowest sales first
-- =====================================================
SELECT
    ORDERNUMBER,
    CUSTOMERNAME,
    SALES
FROM sales_data_sample
ORDER BY SALES ASC;

-- =====================================================
-- 8. Count total number of orders
-- =====================================================
SELECT
    COUNT(*) AS TotalOrders
FROM sales_data_sample;

-- =====================================================
-- 9. Calculate total revenue
-- =====================================================
SELECT
    SUM(SALES) AS TotalRevenue
FROM sales_data_sample;

-- =====================================================
-- 10. Calculate average sales
-- =====================================================
SELECT
    AVG(SALES) AS AverageSales
FROM sales_data_sample;

-- =====================================================
-- 11. Count orders by country
-- =====================================================
SELECT
    COUNTRY,
    COUNT(*) AS TotalOrders
FROM sales_data_sample
GROUP BY COUNTRY;

-- =====================================================
-- 12. Show countries with more than 50 orders
-- =====================================================
SELECT
    COUNTRY,
    COUNT(*) AS TotalOrders
FROM sales_data_sample
GROUP BY COUNTRY
HAVING COUNT(*) > 50;

-- =====================================================
-- 13. Total revenue by country
-- =====================================================
SELECT
    COUNTRY,
    SUM(SALES) AS TotalRevenue
FROM sales_data_sample
GROUP BY COUNTRY
ORDER BY TotalRevenue DESC;

-- =====================================================
-- 14. Average sales by product line
-- =====================================================
SELECT
    PRODUCTLINE,
    AVG(SALES) AS AverageSales
FROM sales_data_sample
GROUP BY PRODUCTLINE
ORDER BY AverageSales DESC;

-- =====================================================
-- 15. Top 10 highest sales orders
-- =====================================================
SELECT
    ORDERNUMBER,
    CUSTOMERNAME,
    PRODUCTLINE,
    COUNTRY,
    SALES
FROM sales_data_sample
ORDER BY SALES DESC
LIMIT 10;

-- =====================================================
-- End of Basic SQL Queries
-- =====================================================