# 📊 Bank Customer Churn Analysis (Power BI)

This project analyzes customer churn data to identify high-risk customers and key churn drivers. The goal is to provide actionable insights that help businesses improve customer retention and reduce revenue loss.

## Table of Contents
* [Project Overview](https://github.com/manilpatel010-hub/bank-customer-churn-analysis-powerbi/blob/main/README.md#-project-overview)
* [Problem Statement]

##  Project Overview

## Project Overview

This project focuses on analyzing bank customer data to identify the key factors contributing to customer churn using Power BI, SQL, and Excel. The objective is to transform raw data into meaningful insights through data cleaning, transformation, and interactive visualizations.

The analysis explores customer demographics, financial behavior, and account activity to uncover patterns, trends, and correlations associated with churn. By leveraging dashboards and KPIs, the project highlights high-risk customer segments and the main drivers behind customer attrition.

Based on the insights generated, this project provides actionable recommendations to help the bank reduce churn, improve customer retention strategies, and optimize costs related to customer acquisition. It also enables the identification of at-risk customers, allowing for targeted and personalized retention efforts to enhance overall customer experience.

---

## Problem Statement

The bank is experiencing a high rate of customer churn, resulting in increased customer acquisition costs and reduced overall profitability. To effectively address this issue, the bank needs a data-driven approach to understand the key factors influencing customer attrition.
This project leverages Sql and  Power BI to analyze customer demographics, account activity, and financial behavior to identify patterns associated with churn. By developing interactive dashboards and key performance indicators (KPIs), the analysis aims to highlight high-risk customer segments and the primary drivers of churn.
The insights generated will support the bank in making informed business decisions, improving customer retention strategies, and enabling targeted actions to reduce churn and enhance customer lifetime value.

## Objective
- Identify customers likely to churn  
- Analyze key factors driving churn  
- Provide data-driven recommendations to improve retention  

## 📊 Dashboard Preview

### Customer Risk Overview
[Customer churn Risk dashboard page1.png](https://github.com/manilpatel010-hub/bank-customer-churn-analysis-powerbi/blob/main/Dashboard/churn_dashboard_page1.png)

### Churn Drivers & Recommendations
[Customer churn Risk dashboard page2.png](https://github.com/manilpatel010-hub/bank-customer-churn-analysis-powerbi/blob/main/Dashboard/churn_dashboard_page2.png)

---

## 📈 Key Insights
- ~480 high-risk customers (~5%) show highest churn probability  
- Customers with 1 product (~50%) contribute most to churn  
- Inactive customers (~35–40%) have significantly higher churn  
- Germany shows highest churn rate (~32%)
- Customers in the 46-50 age group exhibit the highest churn rate (~50%)
- Churn risk peaks among customers with Lower credit scores. 

---

## 💡 Recommendations
- Target high-risk customers with personalized retention strategies  
- Cross-sell products to single-product customers to increase engagement  
- Improve engagement for inactive users through campaigns  
- Focus on medium-risk segment to reduce overall churn volume  
---

## 🛠 Tools & Technologies
	•	Power BI – Dashboard development & visualization
	•	DAX – Data modeling and risk scoring
	•	SQL – Data querying and analysis

---

## ▶️ How to Use
	1.	Download the .pbix file from the dashboard/ folder
	2.	Open it in Power BI Desktop
	3.	Explore interactive visuals and filters

---

## 📈 Business Impact

This analysis highlights that customer churn is primarily driven by low engagement.
By targeting high-risk and medium-risk customers, businesses can significantly improve retention and reduce churn.

---

## 📄 Detailed Insights

([View Insights & Recommendations](https://github.com/manilpatel010-hub/bank-customer-churn-analysis-powerbi/blob/main/docs/Insights_recommendations..md)) 

---

## 🔗 Dataset

[Kaggle - Bank Customer Churn Dataset](https://www.kaggle.com/datasets/gauravtopre/bank-customer-churn-dataset)

---

## ⭐ Project Highlights
	•	End-to-end data analysis project
	•	Business-focused insights and recommendations
	•	Interactive dashboard with real-world use case
---

## 🧾 SQL Analysis
Key queries used for churn analysis:

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

---


