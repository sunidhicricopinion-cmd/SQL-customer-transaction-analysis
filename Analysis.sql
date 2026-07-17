Q1.-----TOTAL REVENUE ?
Select SUM (Amount) AS total_revenue
from customer_transcation;

Q2.------Revenue by Region ?
Select region,
sum (AMOUNT) as revenue
from customer_transcations
Group by region 
Group by revenue desc;

Q3.-------TOTAL TRANSCATION ?
SELECT COUNT(TRANSACTION_ID)
FROM customer_transcations;

Q4.--------AVG TRANSCATION VALUE?
SELECT AVG(Amount)
FROM customer_transcations;

Q5.--------MONTHLY  REVENUE?
SELECT SUM(Amount) AS REVENUE, MONTH(TRANSACTION_DATE)
FROM customer_transcations;

Q6.-------- which region genertaed the highest revenue?
select region , sum (AMOUNT) as revenue
from customer_transcations
GROUP BY region
ORDER BY total_revenue DESC
LIMIT 1;

Q7.----------who are the top 5 customers by revenue?
Select Customer_ID, sum(Amount) as revenue, 
from  customer_transcations
GROUP BY customer_id	
ORDER BY total_revenue DESC
LIMIT 5;

Q8.-------- which  month  genertaed the highest revenue?
select DATE_FORMAT(transaction_date,'%Y-%m') , sum (AMOUNT) as  total_revenue
from customer_transcations
GROUP BY DATE_FORMAT(transaction_date, '%Y-%m')
ORDER BY total_revenue DESC
LIMIT 1;

Q9.-----Which customers made the highest single transaction?

    SELECT
    customer_id,
    transaction_id,
    amount
FROM customer_transactions
WHERE amount = (
    SELECT MAX(amount)
    FROM customer_transactions
);
	


	
	

	
