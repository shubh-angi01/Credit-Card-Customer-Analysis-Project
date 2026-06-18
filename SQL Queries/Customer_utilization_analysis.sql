use CreditCardPortfolio
select Attrition_Flag, round(avg(Avg_Utilization_Ratio)*100,2) as avg_utlization from credit_card_customer group by Attrition_Flag

select Attrition_Flag, avg(Months_on_book) as avg_tenure from credit_card_customer group by Attrition_Flag