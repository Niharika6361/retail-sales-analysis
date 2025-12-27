SELECT
  product_category,
  AVG(unit_price) AS avg_price,
  SUM(quantity) AS total_units_sold,
  SUM(total_amount) AS revenue
FROM retail_sales
GROUP BY product_category
ORDER BY revenue DESC;
