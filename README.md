# 📊 Bank Customer Churn Analysis (Power BI)

## 🔍 Objective
Analyze customer churn pattern and identify high-risk customers to improve retention strategies.

---

## 📌 Project Overview
This project uses Power BI and SQL to analyze customer churn patterns, identify high-risk segments, and provide actionable business recommendations.

---

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
- Target high-risk customers with retention strategies  
- Cross-sell to single-product users  
- Improve engagement for inactive customers  
- Focus on medium-risk segment to reduce overall churn  

---

## 🧾 SQL Analysis
```sql
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
