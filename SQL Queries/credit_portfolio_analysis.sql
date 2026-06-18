use CreditCardPortfolio

select min(round(Credit_Limit,2)) as min_limit,round(avg(Credit_Limit),2) as avg_limit, max(round(Credit_Limit,2)) as max_limit from credit_card_customer

select Card_Category,round(avg(Credit_Limit),2) as avg_limit from credit_card_customer group by Card_Category order by avg_limit desc 

select Income_Category,round(avg(Credit_Limit),2) as avg_limit from credit_card_customer group by Income_Category order by avg_limit desc

select TOP 10 
CLIENTNUM,max(Credit_Limit) as Highest_limit from credit_card_customer group by CLIENTNUM order by Highest_limit desc 