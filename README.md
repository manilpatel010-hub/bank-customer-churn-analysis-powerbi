# 📊 Bank Customer Churn Analysis (Power BI)

This project analyzes customer churn data to identify high-risk customers and key churn drivers. The goal is to provide actionable insights that help businesses improve customer retention and reduce revenue loss.

## Table of Contents
* [Project Overview](https://github.com/manilpatel010-hub/bank-customer-churn-analysis-powerbi/blob/main/README.md#-project-overview)]
* [Problem Statement(https://github.com/manilpatel010-hub/bank-customer-churn-analysis-powerbi/blob/main/README.md#problem-statement)]
* [Objective(https://github.com/manilpatel010-hub/bank-customer-churn-analysis-powerbi/blob/main/README.md#objective)]
* [Data Source(https://github.com/manilpatel010-hub/bank-customer-churn-analysis-powerbi/blob/main/README.md#data-source)]
* [Data Dictionary(https://github.com/manilpatel010-hub/bank-customer-churn-analysis-powerbi/blob/main/README.md#data-dictionary)]
* [Data Cleaning & Preparation(https://github.com/manilpatel010-hub/bank-customer-churn-analysis-powerbi/blob/main/README.md#data-cleaning--preparation)]
* [Dashboard(https://github.com/manilpatel010-hub/bank-customer-churn-analysis-powerbi/blob/main/README.md#dashboard)]
* [Insights(https://github.com/manilpatel010-hub/bank-customer-churn-analysis-powerbi/blob/main/README.md#key-insights)]
* [Recommendation(https://github.com/manilpatel010-hub/bank-customer-churn-analysis-powerbi/blob/main/README.md#recommendations)]
* [SQL Analysis(https://github.com/manilpatel010-hub/bank-customer-churn-analysis-powerbi/blob/main/README.md#sql-analysis)]
  

##  Project Overview

This project focuses on analyzing bank customer data to identify the key factors contributing to customer churn using Power BI, SQL, and Excel. The objective is to transform raw data into meaningful insights through data cleaning, transformation, and interactive visualizations.

The analysis explores customer demographics, financial behavior, and account activity to uncover patterns, trends, and correlations associated with churn. By leveraging dashboards and KPIs, the project highlights high-risk customer segments and the main drivers behind customer attrition.

Based on the insights generated, this project provides actionable recommendations to help the bank reduce churn, improve customer retention strategies, and optimize costs related to customer acquisition. It also enables the identification of at-risk customers, allowing for targeted and personalized retention efforts to enhance overall customer experience.

---

## Problem Statement

The bank is experiencing a high rate of customer churn, resulting in increased customer acquisition costs and reduced overall profitability. To effectively address this issue, the bank needs a data-driven approach to understand the key factors influencing customer attrition.
This project leverages Sql and  Power BI to analyze customer demographics, account activity, and financial behavior to identify patterns associated with churn. By developing interactive dashboards and key performance indicators (KPIs), the analysis aims to highlight high-risk customer segments and the primary drivers of churn.
The insights generated will support the bank in making informed business decisions, improving customer retention strategies, and enabling targeted actions to reduce churn and enhance customer lifetime value.

---

## Objective

- Identify customers likely to churn  
- Analyze key factors driving churn  
- Provide data-driven recommendations to improve retention

---

## Data Source

- **Domain:** Banking  
- **Dataset:** Bank Customer Churn Dataset  
- **Source:** [kaggle dataset](https://www.kaggle.com/datasets/gauravtopre/bank-customer-churn-dataset) 
- **Data Files:** Bank_Churn.csv 
- **Data Type:** CSV 
- **Dataset Size:** Contains data for approximately 10,000 customers.

This dataset includes customer demographic details, account information, and banking behavior, which are used to analyze patterns and identify factors contributing to customer churn.

---

## Data Dictionary

This section provides a detailed understanding of each feature used in the analysis and its relevance to customer churn.

1. **Customer_Id**  
   Unique identifier assigned to each customer. It has no direct influence on churn behavior.

2. **CreditScore**  
   Numerical representation of a customer’s creditworthiness. Customers with higher credit scores are generally less likely to churn.  
   - Excellent: 800–850  
   - Very Good: 740–799  
   - Good: 670–739  
   - Fair: 580–669  
   - Poor: 350–579  

3. **Country**  
   Customer’s location (e.g., country/region). Geographic factors can influence churn due to regional differences in services and competition.

4. **Gender**  
   Indicates whether the customer is male or female. This feature is analyzed to identify any behavioral differences in churn patterns.

5. **Age**  
   Customer’s age. Typically, younger customers show higher churn rates compared to older customers.

6. **Tenure**  
   Number of years the customer has been associated with the bank. Customers with longer tenure are generally more loyal and less likely to churn.

7. **Balance**  
   Account balance of the customer. Higher balance customers are usually less likely to leave the bank.

8. **Products_number**  
    Total number of bank products (e.g., savings, credit cards, loans) held by the customer. Customers with more products tend to be more engaged and less likely to churn.

9. **Credit_card**
    Indicates whether the customer owns a credit card.  
    - 1: Has credit card  
    - 0: Does not have a credit card  

10. **Active_member**  
    Indicates customer activity status.  
    - 1: Active customer  
    - 0: Inactive customer  
    Active customers are less likely to churn.

11. **Estimated_Salary**  
    Estimated annual income of the customer. Customers with higher salaries are generally more stable and less likely to leave.

12. **Exited**  
    Target variable indicating churn status.  
    - 0: Customer retained  
    - 1: Customer exited  

---

## Data Cleaning & Preparation

- Removed duplicate records to ensure data accuracy.  
- Dropped irrelevant columns such as RowNumber, CustomerId, and Surname.  
- Standardized data types across CSV and Excel files.  
- Cleaned and formatted text fields by removing inconsistencies and special characters.  
- Handled missing/null values appropriately.  
- Ensured consistency in numerical data (e.g., balance, salary).  
- Transformed and structured data for efficient analysis in Power BI.

---

## End-to-End Tasks Performed (Data Analyst Lifecycle)

• Requirement Understanding (Churn Analysis Objectives)  
• Data Collection (Kaggle – CSV)  
• Data Cleaning / Pre-processing  
• Data Modelling (Relationships between datasets)  
• Data Visualization (Power BI Dashboards & Charts)  
• DAX Calculations (KPIs & Measures)  
• Report Publishing (Power BI Service)  
• Dashboard Creation & Sharing

---

---
## Dashboard 

### Customer Risk Overview
[Customer churn Risk dashboard page1.png](https://github.com/manilpatel010-hub/bank-customer-churn-analysis-powerbi/blob/main/Dashboard/churn_dashboard_page1.png)

### Churn Drivers & Recommendations
[Customer churn Risk dashboard page2.png](https://github.com/manilpatel010-hub/bank-customer-churn-analysis-powerbi/blob/main/Dashboard/churn_dashboard_page2.png)

### live Dashboard
[[Power BI Dashboard](https://github.com/manilpatel010-hub/bank-customer-churn-analysis-powerbi/blob/main/Dashboard/bank%20churn%20analysis%20dashboard.pbix)]
---

## Key Insights

- ~480 high-risk customers (~5%) show highest churn probability  
- Customers with 1 product (~50%) contribute most to churn  
- Inactive customers (~35–40%) have significantly higher churn  
- Germany shows highest churn rate (~32%)
- Customers in the 46-50 age group exhibit the highest churn rate (~50%)
- Churn risk peaks among customers with Lower credit scores. 

---

## Recommendations

- Target high-risk customers with personalized retention strategies  
- Cross-sell products to single-product customers to increase engagement  
- Improve engagement for inactive users through campaigns  
- Focus on medium-risk segment to reduce overall churn volume  

---

## Tools & Technologies

- Power BI – Dashboard development & visualization
- DAX – Data modeling and risk scoring
- SQL – Data querying and analysis

---

##  SQL Analysis

Key queries used for churn analysis: [[(SQL file)](https://github.com/manilpatel010-hub/bank-customer-churn-analysis-powerbi/blob/main/sql/bank_churn_analysis.sql)]

```sql
-- Churn Rate by Geography
SELECT Country,
       COUNT(*) AS Total_Customers,
       SUM(Exited) AS Churned_Customers,
       ROUND(SUM(Exited)/COUNT(*)*100,2) AS Churn_Rate
FROM bank_churn
GROUP BY Country;

-- High Risk Customers
  select * ,
(
 (case when credit_score < 600 then 1 else 0 end) +
 (case when age > 45 then 1 else 0 end) +
 (case when tenure < 3 then 1 else 0 end) +
 (case when balance > 100000 then 1 else 0 end) +
 (case when  active_member = 0 then 1 else 0 end) 
 ) 
 as Risk_Score
 from bank_churn
 having risk_score >= 4;




