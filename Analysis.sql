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
FROM customer_transcations

Q4.--------AVG TRANSCATION VALUE?
SELECT AVG(Amount)
FROM customer_transcations

Q4.--------MONTHLY  REVENUE?
SELECT SUM(Amount) AS REVENUE, MONTH(TRANSACTION_DATE)
FROM customer_transcations
	

	
