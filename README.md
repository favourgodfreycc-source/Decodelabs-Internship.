# Decodelabs-Internship.
# Project 2: Exploratory Data Analysis (EDA) - Sales Forensic Investigation

## 1. Problem Statement
The objective of this analysis was to interrogate sales data to uncover hidden patterns, trends, and outliers. Specifically, we aimed to identify the drivers of high-value revenue (transactions > $3,000) to provide actionable business recommendations.

## 2. Methodology
- **Data Integrity:** Performed a forensic scan on 1,200 records, checking for missing values, duplicates, and incorrect data types.
- **Cleaning:** Standardized data types (e.g., converted 'Date' to datetime objects) to ensure temporal accuracy.
- **Statistical Analysis:** Used the IQR method for outlier detection and the Five-Number Summary to establish the "center of gravity" of our sales distribution.
- **Visualization:** Utilized histograms and boxplots to visualize data skewness and identify significant anomalies.

## 3. Key Findings
- **Distribution:** Sales data is right-skewed, indicating that while most transactions are moderate in value, a small subset of high-value "Signal" orders drives a significant portion of revenue.
- **Payment Insights:** High-value transactions ($3,000+) are most frequently completed using **Gift Cards**, followed by Online and Debit Card payments. This suggests that the Gift Card program is a critical driver of premium revenue.

## 4. Recommendations
- **Targeted Promotions:** Bundle high-value items with "Bonus Gift Card" offers to incentivize high-ticket purchase behavior.
- **Experience Optimization:** Given the high reliance on Gift Cards for top-tier purchases, ensure the redemption process is seamless to protect our highest-value revenue stream.
-
