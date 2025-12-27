# Retail Sales Analysis & Revenue Optimization

Analyzed 80,000+ retail transactions using SQL to identify seasonal sales patterns, evaluated store performance, and built a Tableau dashboard to support business decisions and pricing recommendations.

---

## 📌 Project Overview

This project analyzes a large retail sales dataset to identify:
- Seasonal revenue trends
- Store-level sales performance
- Pricing opportunities to increase revenue

---

## 🛠 Tools & Technologies

- SQL (MySQL / PostgreSQL / SQLite)
- Tableau
- Excel / CSV
- GitHub

---

## 📊 Dataset

The folder `data/` contains a retail sales CSV dataset with the following columns:

| Column Name      | Description |
|------------------|-------------|
| transaction_id   | Unique transaction identifier |
| transaction_date | Date of the sale |
| store_location   | Store city/location |
| product_category | Category of the sold product |
| quantity         | Units sold |
| unit_price       | Price per unit |
| total_amount     | revenue = quantity × unit_price |

> **Note:** The full dataset contains 80,000+ records. A sample is included.

---

## 📌 SQL Analysis

SQL queries used for analyzing seasonal trends and store revenue:

### Seasonal Revenue
```sql
SELECT 
  EXTRACT(MONTH FROM transaction_date) AS month,
  SUM(total_amount) AS monthly_revenue
FROM retail_sales
GROUP BY month
ORDER BY month;
