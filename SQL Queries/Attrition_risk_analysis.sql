use CreditCardPortfolio
select Gender, sum(case when Attrition_Flag='Attrited Customer' then 1 else 0 end) as Attrited_Customers from credit_card_customer group by Gender
select  sum(case when Gender='M' and  Attrition_Flag='Attrited Customer' then 1 else 0 end) *100/sum(case when Gender='M' then 1 else 0 end) as male_attrition_rate ,
sum(case when Gender='F' and  Attrition_Flag='Attrited Customer' then 1 else 0 end) *100/sum(case when Gender='F' then 1 else 0 end) as female_attrition_rate
from credit_card_customer

select (case 
when Customer_Age between 20 and 30 then '20-30'
when Customer_Age between 31 and 40 then '31-40'
when Customer_Age between 41 and 50 then '41-50'
when Customer_Age between 51 and 60 then '51-60'
else '60+' end) as Age_Group, sum(case when Attrition_Flag='Attrited Customer' then 1 else 0 end) as Attrited_Customers,
sum(case when Attrition_Flag='Attrited Customer' then 1 else 0 end)*100/count(Customer_Age) as Attrited_Rate
from credit_card_customer
group by  (case 
when Customer_Age between 20 and 30 then '20-30'
when Customer_Age between 31 and 40 then '31-40'
when Customer_Age between 41 and 50 then '41-50'
when Customer_Age between 51 and 60 then '51-60'
else '60+' end) order by Attrited_Rate desc


select Income_Category, sum(case when Attrition_Flag='Attrited Customer' then 1 else 0 end) as Attrited_Customers, 
sum(case when Attrition_Flag='Attrited Customer' then 1 else 0 end) *100/count(*) as Attrited_Rate 
from credit_card_customer group by Income_Category order by Attrited_Rate desc

select Card_Category, sum(case when Attrition_Flag='Attrited Customer' then 1 else 0 end) as Attrited_Customers,
sum(case when Attrition_Flag='Attrited Customer' then 1 else 0 end)*100/count(*) as Attrited_Rate
from credit_card_customer group by Card_Category order by Attrited_Rate desc

select Education_Level, sum(case when Attrition_Flag='Attrited Customer' then 1 else 0 end) as Attrited_Customers from credit_card_customer group by Education_Level order by Attrited_Customers desc

select Marital_Status, sum(case when Attrition_Flag='Attrited Customer' then 1 else 0 end) as Attrited_Customers from credit_card_customer group by Marital_Status order by Attrited_Customers desc

select Attrition_Flag, avg(Total_Trans_Amt) as avg_trans_amt ,avg(Total_Trans_Ct) as avg_trans_ct from credit_card_customer group by Attrition_Flag