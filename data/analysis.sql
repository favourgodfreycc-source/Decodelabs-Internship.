-- First check the data structure
SELECT * FROM my_table LIMIT 10
-- Calculate Total Revenue by Product for Delivered orders
SELECT 
    "Product", 
    SUM("TotalPrice") AS Revenue_Per_Product
FROM my_table
WHERE "OrderStatus" = 'Delivered'
GROUP BY "Product"
ORDER BY Revenue_Per_Product DESC;
-- Calculate Total Revenue by Referral Source (excluding Cancelled orders)
SELECT 
    "ReferralSource", 
    SUM("TotalPrice") AS Total_Revenue_Generated
FROM my_table
WHERE "OrderStatus" != 'Cancelled'
GROUP BY "ReferralSource"
ORDER BY Total_Revenue_Generated DESC;