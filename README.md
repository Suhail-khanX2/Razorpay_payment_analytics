**🌐 Razorpay-Style Payments Data Reporting & Analysis (SQL Project)
Overview 📘**

This repository contains a complete SQL-based analysis of a Razorpay-style payments dataset. The project explores how online transactions flow through a payment gateway using tables for payments, refunds and event logs.
By writing and running SQL queries, I examined transaction behaviour, customer spending, method performance and refund patterns.

The analysis includes summaries, joins, conditional logic and CTE-based reporting, helping convert raw transactional data into meaningful insights.

**Methodologies Used 🔧**

✔ Payment Status Analysis – Studied success, failure and pending transactions.
✔ Refund Tracking – Identified refunded orders and calculated refund amounts.
✔ Payment Method Comparison – Compared UPI, card, netbanking and wallet usage.
✔ Customer Spending Analysis – Computed total spending and segmented customers.
✔ Event Log Exploration – Used logs to understand the flow of each payment.
✔ Monthly Revenue Summary (CTE) – Created a month-wise breakdown of successful revenue.
✔ Conditional Logic (CASE) – Categorized customers based on total spending.
✔ Joins & Subqueries – Combined tables to build deeper transactional insights.

**Potential Challenges ⚠️**

✔ Handling inconsistent transaction patterns – Payments move across multiple statuses.
✔ Aligning logs with transactions – Events occur at different timestamps.
✔ Interpreting refund data – Some payments may have partial or full refunds.
✔ Building clear summaries – Grouping data for reporting without losing detail.
✔ Ensuring accurate aggregations – Revenue and spending must exclude failed or refunded values.

**Key Insights from SQL Reporting & Analysis 💡**

✔ UPI and card payments dominate the transaction mix.
✔ Customer spending varies widely, which helped form meaningful segments.
✔ Refunded transactions highlight dispute or failure patterns worth monitoring.
✔ Monthly summaries make revenue trends easier to understand.
✔ Event logs help trace the lifecycle of each payment, revealing delays and failures.
✔ Joins and CTEs provide cleaner reporting, especially for revenue and customer behaviour.

**Recommendations & Future Scope 🎯**

✔ Expand the dataset with merchants, settlements and failure reasons.
✔ Build dashboards with Power BI or Tableau.
✔ Study latency and retry patterns in logs.
✔ Add fraud detection indicators.
✔ Introduce more time-based reporting such as weekly trends.

Feel free to explore the repository, suggest improvements or build on this dataset. 🚀

**Download**
[Download SQL File](razorpay_payment_analytics.sql)

