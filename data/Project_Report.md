# Data Analysis Report

## 1. Objective
To identify key performance metrics regarding product sales and marketing channel effectiveness.

## 2. Methodology
- **Database Tool**: SQLite
- **Operations**: Used `SELECT`, `SUM`, and `GROUP BY` to aggregate metrics.
- **Data Cleaning**: Applied `WHERE` filters to exclude 'Cancelled' orders and isolate 'Delivered' orders, ensuring the analysis reflects realized business impact.

## 3. Findings: Product Revenue
*   **Query**:
    ```sql
    SELECT "Product", SUM("TotalPrice") AS Revenue_Per_Product
    FROM my_table
    WHERE "OrderStatus" = 'Delivered'
    GROUP BY "Product"
    ORDER BY Revenue_Per_Product DESC;
    ```
*   **Results**:
    | Product | Total Revenue |
    | :--- | :--- |
    | Laptop | $40,714.43 |
    | Phone | $40,345.41 |
    | Printer | $38,054.73 |
    | Monitor | $35,999.62 |
    | Tablet | $31,794.52 |
    | Chair | $31,465.83 |
    | Desk | $24,225.78 |
*   **Impact**: Laptops and Phones are the top revenue drivers.

## 4. Findings: Marketing Channel Performance
*   **Query**:
    ```sql
    SELECT "ReferralSource", SUM("TotalPrice") AS Total_Revenue_Generated
    FROM my_table
    WHERE "OrderStatus" != 'Cancelled'
    GROUP BY "ReferralSource"
    ORDER BY Total_Revenue_Generated DESC;
    ```
*   **Results**:
    | Referral Source | Total Revenue |
    | :--- | :--- |
    | Instagram | $224,619.38 |
    | Email | $201,542.06 |
    | Facebook | $199,475.16 |
    | Google | $192,858.78 |
    | Referral | $169,870.37 |
*   **Impact**: Instagram and Email campaigns outperform other channels.
*