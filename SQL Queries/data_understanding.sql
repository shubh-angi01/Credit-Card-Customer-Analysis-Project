create database CreditCardPortfolio

use CreditCardPortfolio

select count(CLIENTNUM) as total_customer from credit_card_customer

select sum(case when Attrition_Flag= 'Existing Customer' then 1 else 0 end) as Total_existing_cust, sum(case when Attrition_Flag= 'Attrited Customer' then 1 else 0 end) as Total_attrited_cust from credit_card_customer

select (sum(case when Attrition_Flag= 'Attrited Customer' then 1 else 0 end)*100/count(CLIENTNUM) )as Total_Attrition_rate from credit_card_customer 

select min(Customer_Age) as min_age ,avg(Customer_Age) as average_age, max(Customer_Age) as max_age from credit_card_customer