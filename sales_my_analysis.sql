-- Show all customer records
SELECT * FROM customers;

-- Show total number of customers
SELECT count(*) FROM customers;

-- Unique product code by market_code
SELECT distinct product_code 
FROM transactions
where market_code='Mark001'

-- Find the revenue by date
SELECT SUM(transactions.sales_amount) 
FROM transactions INNER JOIN date 
ON transactions.order_date=date.date where date.year=2020 and 
transactions.currency="INR\r" or transactions.currency="USD\r";

-- Revenue by year and month
SELECT SUM(transactions.sales_amount) 
FROM transactions INNER JOIN date 
ON transactions.order_date=date.date where date.year=2020 
and date.month_name="January" 
and (transactions.currency="INR\r" or transactions.currency="USD\r");

-- Find the count of sales_amount by product_code
SELECT products.product_code,sum(transactions.sales_amount) 
FROM transactions INNER JOIN products ON transactions.product_code=products.product_code
group by products.product_code
order by 2 desc;