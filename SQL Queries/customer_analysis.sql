use CreditCardPortfolio

select Gender,count(*) as Customer_count from credit_card_customer group by Gender order by count(*) desc
select Education_Level , count(*) as Customer_count from credit_card_customer group by Education_Level order by count(*) desc

select Marital_Status, count(*) as Customer_count from credit_card_customer group by Marital_Status order by count(*) desc

select Income_Category , count(*) as Customer_count from credit_card_customer group by Income_Category order by count(*) desc
select Card_Category, count(*) as Customer_count from credit_card_customer group by Card_Category order by count(*) desc