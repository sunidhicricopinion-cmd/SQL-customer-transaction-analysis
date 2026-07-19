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
	
Q10.-------- which customers have made multiple customer transcations?

SELECT
customer_id,
COUNT(transaction_id) AS total_transactions
FROM customer_transactions
GROUP BY customer_id
HAVING COUNT(transaction_id) > 1;

Q12.----------- what is the average trancation amount by region?

SELECT
    region,
    AVG(amount) AS average_transaction_amount
FROM customer_transactions
GROUP BY region;

Q13.---------- Rank customer based on total spending?

	SELECT
    customer_id,
    SUM(amount) AS total_spending,
    RANK() OVER (ORDER BY SUM(amount) DESC) AS customer_rank
FROM customer_transactions
GROUP BY customer_id;


Q14.------------Identify high value transaction ( above avrage transaction amount)?

SELECT
transaction_id,
customer_id,
transaction_date,
amount,
region
FROM customer_transactions
WHERE amount > (
SELECT AVG(amount)
FROM customer_transactions
);

Q15.----------Calculate each region's contribution to total revenue?

SELECT
region,
SUM(amount) AS regional_revenue,
ROUND(
(SUM(amount) / (SELECT SUM(amount) FROM customer_transactions)) * 100,2
    ) AS contribution_percentage
FROM customer_transactions
GROUP BY region
ORDER BY contribution_percentage DESC;


	
	
	





	

	
	

	
