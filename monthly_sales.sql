SELECT
  EXTRACT(MONTH FROM transaction_date) AS month,
  SUM(total_amount) AS monthly_revenue
FROM retail_sales
GROUP BY month
ORDER BY month;
