# SQL Data Analysis: E-commerce Orders

## Project Overview

This project uses SQL Server queries to explore an e-commerce orders
dataset and identify patterns in order volume, recorded order value,
customer activity, product performance, payment methods, referral
sources, coupon use, order statuses, and monthly trends.

The project was completed as part of **Project 3: SQL Data Analysis**.
The core requirements were to write `SELECT` queries, filter and sort
records with `WHERE` and `ORDER BY`, group records with `GROUP BY`, and
perform basic aggregations using `COUNT`, `SUM`, and `AVG`.

## Objectives

-   Inspect the dataset and understand its size, date range, and
    customer coverage.
-   Filter and sort orders to investigate high-value orders and
    cancelled orders.
-   Summarise order counts, quantities, and recorded order values.
-   Compare products, order statuses, payment methods, referral sources,
    and coupon codes.
-   Identify repeat customers and examine cancelled or returned orders.
-   Explore order patterns over time.
-   Validate whether each recorded total matches quantity multiplied by
    unit price.

## Dataset

The workbook contains **1,200 order records** and 17 columns, including:

-   `OrderID`
-   `Date`, `Month`, `Year`, `Quarter`
-   `CustomerID`
-   `Product`, `Quantity`, `Unit_Price`, `Total_Price`
-   `Payment_Method`, `Order_Status`
-   `Coupon_Code`, `Referral_Source`
-   `Shipping_Address`, `Tracking_Number`, `Items_In_Cart`

The data covers **1 January 2023 to 30 June 2025**. The 2025 data
therefore covers only the first six months and should not be compared
with full-year totals without accounting for the shorter period.

## Tools and Technologies

-   **Microsoft SQL Server / SQL Server Management Studio (SSMS)** for
    querying
-   **Excel** for reviewing the dataset and organising query outputs
-   **T-SQL** for filtering, sorting, grouping, aggregations, date
    functions, and validation

## SQL Skills Demonstrated

-   `SELECT` to retrieve fields and records
-   `WHERE` to filter records by value or order status
-   `ORDER BY` to sort results
-   `GROUP BY` to summarise records by category
-   `COUNT()` and `COUNT(DISTINCT ...)` to count records and unique
    customers
-   `SUM()`, `AVG()`, `MIN()`, and `MAX()` for descriptive statistics
-   `HAVING` to identify customers with more than one order
-   `TOP` to return the ten highest-value orders
-   `IN`, `AND`, `YEAR()`, `MONTH()`, and `ABS()` for filtering, trend
    analysis, and data validation

## Business Questions

1.  How many order records and unique customers are in the dataset?
2.  What is the earliest and latest order date?
3.  Which orders have a recorded value above 1,000?
4.  What are the ten highest-value recorded orders?
5.  How many high-value orders were cancelled?
6.  How do order counts and recorded values vary by order status?
7.  Which products have the highest order volumes, unit quantities, and
    recorded order values?
8.  How do payment methods and referral sources compare by order volume
    and recorded value?
9.  Which customers placed more than one order?
10. How are coupon codes distributed across orders?
11. Which products have the most cancelled or returned orders?
12. How do order volume and recorded order value vary by month and year?
13. Do recorded totals match `Quantity * Unit_Price`?

## Key Findings

-   The dataset contains **1,200 orders** from **1,189 unique
    customers**.
-   Total quantity ordered is **3,535 units**.
-   The sum of `Total_Price` is **1,264,761.96** in the dataset's
    currency units. This is the *total recorded order value*, not
    confirmed realised revenue, because the dataset includes cancelled,
    returned, pending, shipped, and delivered orders.
-   The average recorded order value is **1,053.97**; the minimum is
    **11.39** and the maximum is **3,456.40**.
-   **Cancelled** is the most common order status (250 orders), followed
    by **Returned** (247).
-   **Chair** has the highest product-level recorded order value
    (195,620.11), narrowly ahead of **Printer** (195,612.61).
-   **Online** is the most frequently used payment method (258 orders);
    **Credit Card** has the highest recorded order value by payment
    method (263,847.63).
-   **Instagram** is the most frequent referral source (259 orders) and
    has the highest recorded order value by referral source
    (275,285.45).
-   **FREESHIP** is the most common coupon category (313 orders),
    followed by `No Coupon` (309).
-   The data contains 11 customers with two orders each.
-   The highest order count and recorded order value for a month-year
    combination occurred in **June 2024** (53 orders; 68,068.54).
-   The validation check found no meaningful differences between
    `Total_Price` and `Quantity * Unit_Price` at a tolerance of 0.01.

See `RESULTS_AND_FINDINGS.md` for the detailed interpretation and
limitations.

## Repository Contents

Suggested repository structure:

``` text
.
├── Task 3-Blossom Ezenwaka.sql
├── Task-3-Blossom Ezenwaka.xlsx
├── README.md
└── RESULTS_AND_FINDINGS.md
```

## How to Run

1.  Open SQL Server Management Studio and connect to the SQL Server
    instance containing the imported dataset.
2.  Select the database where the table is stored.
3.  Confirm the table name and column names match the script. The
    queries in this project reference `[Task-2-Blossom Ezenwaka]` and
    fields such as `[Total_Price]` and `[Unit_Price]`.
4.  Run the queries in sections and inspect each result set.
5.  If the table is in a different database or schema, update the table
    reference accordingly.

## Limitations and Interpretation

-   `Total_Price` is described as recorded order value. It should not
    automatically be treated as realised revenue because order statuses
    include cancelled and returned orders.
-   The dataset ends in June 2025, so 2025 represents a partial year.
-   The dataset appears structured for practice. The validation query
    checks arithmetic consistency, but does not establish whether the
    source data reflects real business activity.
-   A higher order value for a product or channel does not by itself
    establish profitability or causal effectiveness. Cost, margin,
    marketing spend, and other context would be needed.

## Conclusion

This project demonstrates foundational SQL analysis by turning raw
order-level records into summaries that can support further business
investigation. It combines filtering, sorting, grouping, aggregation,
customer analysis, trend analysis, and a basic arithmetic validation
check.
