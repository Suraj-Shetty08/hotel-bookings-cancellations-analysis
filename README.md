# 🏨 Hotel Booking Cancellation Analysis | MYSQL | Tableau

🔗 [View Live Dashboard](https://public.tableau.com/app/profile/suraj.shetty5379/viz/hotel_bookings_analysis/HotelBookingCancellationAnalysis?publish=yes)

---

## 📌 Project Overview

This project analyzes 119,390 hotel booking records to understand the patterns and factors that drive booking cancellations. Using MySQL for data extraction and Tableau for visualization, the project explores how customer type, booking timing, market segment, seasonality, and deposit policies affect cancellation rates — uncovering insights that can help hotels reduce cancellations and improve operational planning.

---

## 📂 Dataset

**Source:** [Hotel Booking Demand — Kaggle](https://www.kaggle.com/datasets/jessemostipak/hotel-booking-demand?resource=download)
**Size:** 119,390 rows

**Key attributes include:**
- Hotel type (City Hotel / Resort Hotel)
- Customer type (New / Repeat)
- Market segment
- Country of origin
- Booking lead time
- Deposit type
- Booking month
- Cancellation status

---

## 🛠 Tools Used

| Tool | Purpose |
|------|---------|
| MySQL | Data storage, querying, and analysis |
| Tableau | Interactive dashboard and visualization |
| Excel | Data export and staging between MySQL and Tableau |

---

## 🗂 Files in This Repository

| File | Description |
|------|-------------|
| `setup.sql` | Creates the database, table schema, and imports the dataset |
| `analysis.sql` | 9 SQL queries covering all dimensions of cancellation analysis |
| `dashboard.png` | Screenshot of the final Tableau dashboard |

---

## 📊 SQL Analysis - Queries Covered

The `analysis.sql` file contains 9 queries:

1. Cancellation rate by hotel type
2. Average daily rate (ADR) by hotel type
3. Monthly seasonal trends
4. Market segment cancellation analysis
5. Lead time / booking time category analysis
6. Top 10 countries by cancellation rate
7. Repeat vs new guest analysis
8. Room type cancellation analysis
9. Deposit type cancellation analysis

---

## 📈 Key Business Insights

✔ **City hotels have a significantly higher cancellation rate (41.73%)** compared to resort hotels (27.76%)

✔ **New customers cancel far more frequently** than repeat customers, highlighting the value of loyalty programs

✔ **Early bookings have the highest cancellation rates (~57%)** — customers who book far in advance are most likely to cancel

✔ **Group bookings and online travel agency channels contribute the most to cancellations**

✔ **Cancellation rates peak in mid-year months (April–June)**, suggesting seasonal planning opportunities

✔ **Bookings with non-refundable deposits show a 99.36% cancellation rate** ; a data anomaly worth investigating, possibly reflecting policy misclassification

✔ **Portugal and Brazil show the highest cancellation rates** among countries with 1,000+ bookings

---

## 🎛 Dashboard Views

The Tableau dashboard includes 7 interactive charts:

- **Bar Chart** : Cancellation rate by hotel type
- **Horizontal Bar Chart** : Cancellation rate by market segment
- **World Map** : Top 10 countries by cancellation rate
- **Bar Chart** : Repeat vs new customer comparison
- **Bar Chart** : Monthly seasonal trends
- **Bar Chart** : Cancellation by booking time category
- **Pie Chart** : Cancellation distribution by deposit type

---

## 🎯 Project Purpose

This project is part of my **Data Analytics portfolio** to demonstrate skills in SQL querying, data analysis, and business insight generation using Tableau. It reflects a real-world hospitality use case where data-driven decisions can directly reduce revenue loss from cancellations.

---

## 👤 Author

**Suraj Shetty**
[GitHub](https://github.com/Suraj-Shetty08) | [LinkedIn](www.linkedin.com/in/suraj-shetty-ss080103)
