# 📊 Bank Customer Churn Analysis (Power BI)

This project analyzes customer churn data to identify high-risk customers and key churn drivers. The goal is to provide actionable insights that help businesses improve customer retention and reduce revenue loss.

## Table of Contents
1 [Project Overview (https://github.com/manilpatel010-hub/bank-customer-churn-analysis-powerbi/blob/main/README.md#-project-overview)] 

## 🚀 Project Overview




---

## 🎯 Objective
- Identify customers likely to churn  
- Analyze key factors driving churn  
- Provide data-driven recommendations to improve retention  

## 📊 Dashboard Preview

### Customer Risk Overview
![Dashboard]([Customer churn Risk dashboard page1.png](https://github.com/manilpatel010-hub/bank-customer-churn-analysis-powerbi/blob/main/Dashboard/churn_dashboard_page1.png))

### Churn Drivers & Recommendations
![Dashboard]([Customer churn Risk dashboard page2.png](https://github.com/manilpatel010-hub/bank-customer-churn-analysis-powerbi/blob/main/Dashboard/churn_dashboard_page2.png))

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

⸻

🛠 Tools & Technologies
	•	Power BI – Dashboard development & visualization
	•	DAX – Data modeling and risk scoring
	•	SQL – Data querying and analysis

⸻

📁 Repository Structure
	•	dashboard/ → Power BI file & dashboard images
	•	sql/ → SQL queries
	•	docs/ → Insights and recommendations
	•	data/ → Dataset reference

⸻

▶️ How to Use
	1.	Download the .pbix file from the dashboard/ folder
	2.	Open it in Power BI Desktop
	3.	Explore interactive visuals and filters

⸻

📈 Business Impact

This analysis highlights that customer churn is primarily driven by low engagement.
By targeting high-risk and medium-risk customers, businesses can significantly improve retention and reduce churn.

⸻

📄 Detailed Insights

([View Insights & Recommendations](https://github.com/manilpatel010-hub/bank-customer-churn-analysis-powerbi/blob/main/docs/Insights_recommendations..md)) 

⸻

🔗 Dataset

([Kaggle - Bank Customer Churn Dataset](https://www.kaggle.com/datasets/gauravtopre/bank-customer-churn-dataset))

⸻

⭐ Project Highlights
	•	End-to-end data analysis project
	•	Business-focused insights and recommendations
	•	Interactive dashboard with real-world use case

