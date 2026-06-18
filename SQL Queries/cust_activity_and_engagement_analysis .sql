use CreditCardPortfolio

select min(Total_Trans_Amt) as min_Trans_Amt,avg(Total_Trans_Amt) as Avg_Trans_amt,max(Total_Trans_Amt) as max_Trans_Amt  from credit_card_customer
select min(Total_Trans_Ct) as min_Trans_Ct,avg(Total_Trans_Ct) as Avg_Trans_Ct,max(Total_Trans_Ct) as max_Trans_Ct  from credit_card_customer
select Top 5 CLIENTNUM, max(Total_Trans_Amt) as highest_trans_amt from credit_card_customer group by CLIENTNUM order by highest_trans_amt desc
select Top 5 CLIENTNUM, max(Total_Trans_Ct) as highest_trans_Ct from credit_card_customer group by CLIENTNUM order by highest_trans_Ct desc

select Card_Category,avg(Total_Trans_Amt) as average_trans_amt from credit_card_customer group by Card_Category order by average_trans_amt desc
select Income_Category,avg(Total_Trans_Amt) as average_trans_amt from credit_card_customer group by Income_Category order by average_trans_amt desc

