-- total customer in dataset

select count(*) as total_customers
from db_churn.bank_churn;

-- total customer who churned

select count(*) as churnerd_customers
from db_churn.bank_churn
where exited = 1;

-- churn_rate (percentage of customer leaving bank) 

select count(*) as total_customers,
sum(exited) as Churned_customers,
sum(exited) * 100 / count(*) as churnrate
from db_churn.bank_churn;

-- customers by Geography (country)

select country,
count(*) as customers,
sum(exited) as churned
from db_churn.bank_churn
group by country;

-- average balance of customers

select 
 avg(balance) as Ave_balance
from db_churn.bank_churn;

-- average balance of customers retained vs churned

select exited,
 avg(balance) as Ave_balance
from db_churn.bank_churn
group by exited;

-- average balance of customers who churned

select avg(balance) as churned_balance
from db_churn.bank_churn
where exited = 1;

-- churn by age group

select
case
 when age >=18 and  age <= 30 then ' 18-30 '
when age >=31 and  age <= 45 then ' 31-45 '
when age >=46 and  age <= 60 then ' 46-60 '
when age >60 then '60+'
end as Age_group,
count(*) as customers,
 sum(exited) as churned
from db_churn.bank_churn
group by age_group
order by age_group;

-- churn by tenure

select tenure,
count(*) as customers,
 sum(exited) as churned
from db_churn.bank_churn
group by tenure
order by tenure;

-- churn by number of products

select products_number,
count(*) as customers,
 sum(exited) as churned
from db_churn.bank_churn
group by products_number
order by products_number;

-- credit  Score impact on churn

select
case
 when credit_score >= 350 and  credit_score <= 579 then 'Poor'
when credit_score >= 580 and  credit_score <= 669 then 'Fair'
when credit_score >= 670 and  credit_score <= 739 then 'Good'
when credit_score >= 740 and  credit_score <= 799 then 'very Good'
when credit_score >= 800 then 'Excellent'
end as Creditscore,
count(*) as customers,
 sum(exited) as churned
from db_churn.bank_churn
group by Creditscore
order by Creditscore;

-- credit card impact on churn

select credit_card,
count(*) as customers,
 sum(exited) as churned,
  (sum(exited) *100.0 / count(*)) as churn_percentage
from db_churn.bank_churn
group by credit_card;

-- active vs inactive customers

select active_member,
count(*) as customers,
 sum(exited) as churned,
  (sum(exited) *100.0 / count(*)) as churn_percentage
from db_churn.bank_churn
group by active_member;

 -- risk_score of customers
 
 select * ,
 (
 (case when credit_score < 600 then 1 else 0 end) +
 (case when age > 45 then 1 else 0 end) +
 (case when tenure < 3 then 1 else 0 end) +
 (case when balance > 100000 then 1 else 0 end) +
 (case when  active_member = 0 then 1 else 0 end) 
 ) 
 as Risk_Score
 from bank_churn;
 
 -- High risk customers
 
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

 
 

