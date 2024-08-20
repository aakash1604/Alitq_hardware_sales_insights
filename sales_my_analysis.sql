SELECT products.product_code,sum(transactions.sales_amount) 
FROM transactions INNER JOIN products ON transactions.product_code=products.product_code
group by products.product_code
order by 2 desc