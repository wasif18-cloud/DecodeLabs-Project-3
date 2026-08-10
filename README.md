# 📊 Data Analytics Project 3 -- SQL Data Analysis

## 📌 Project Overview

This project focuses on analyzing an e-commerce dataset using **SQL**
and **MySQL Workbench**. The goal is to extract useful insights by
filtering, sorting, grouping, and aggregating data.

## 🛠️ Tools Used

-   MySQL
-   MySQL Workbench
-   SQL
-   CSV Dataset

## 🗄️ Database

-   **Database Name:** `Decodelabs`
-   **Table Name:** `Project3`

The dataset contains order information such as Order ID, Order Date,
Customer ID, Product, Quantity, Unit Price, Payment Method, Order
Status, Referral Source, and Total Price.

## 🔍 SQL Operations Performed

-   Created database and table
-   Displayed all records using `SELECT`
-   Filtered data using `WHERE`
-   Sorted data using `ORDER BY`
-   Grouped data using `GROUP BY`
-   Counted total orders using `COUNT()`
-   Calculated total sales using `SUM()`
-   Calculated average order value using `AVG()`
-   Found highest and lowest priced orders
-   Calculated quantity sold for each product
-   Used `HAVING` to filter grouped results
-   Analyzed orders by payment method
-   Analyzed orders by referral source
-   Calculated sales by order status

## 💻 Sample Queries

``` sql
-- Show all data
SELECT * FROM Project3;

-- Total number of orders
SELECT COUNT(*) AS OrderID
FROM Project3;

-- Total sales
SELECT SUM(TotalPrice) AS TotalSales
FROM Project3;

-- Average order value
SELECT AVG(TotalPrice) AS Average_Order_Value
FROM Project3;

-- Orders by payment method
SELECT PaymentMethod, COUNT(*) AS Total_Order
FROM Project3
GROUP BY PaymentMethod;

-- Total quantity sold for each product
SELECT Product, SUM(Quantity) AS Total_Quantity_Sold
FROM Project3
GROUP BY Product;
```

## 🎯 Skills Demonstrated

-   SQL Fundamentals
-   Database Creation
-   Data Querying
-   Data Filtering
-   Data Sorting
-   Data Grouping
-   Aggregate Functions
-   E-commerce Data Analysis

## 📁 Project Files

-   `Project 3 (Sql Source Code).txt` -- SQL queries used for analysis
-   `Data Analytics Project 3(2).pdf` -- Project instructions and
    reference material

## ✅ Conclusion

This project demonstrates the use of SQL to convert raw e-commerce data
into useful insights through filtering, sorting, grouping, and aggregate
functions.

------------------------------------------------------------------------

**Data Analytics Project 3 \| SQL Data Analysis**
