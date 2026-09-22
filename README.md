# E-Commerce Customer Behavior & RFM Segmentation

## Project Overview
End-to-end business analysis of 1,654 orders from 200 customers 
to identify revenue drivers, customer segments, and retention 
opportunities using RFM (Recency, Frequency, Monetary) analysis.

---

## Business Problem

An e-commerce company with **200 customers and 1,654 orders** across 3 years 
(2022–2024) was facing three core problems:

**Problem 1 — No Customer Visibility**  
The business was treating all customers the same — sending the same offers to 
a Champion who spends $1,400 per order and a Lost Customer who hadn't bought 
in 6 months. This led to wasted marketing spend and poor retention.

**Problem 2 — No Clarity on Revenue Drivers**  
Management didn't know which product categories, cities, or membership tiers 
were actually driving revenue versus which ones looked busy but contributed 
little. Decisions were being made on gut feel rather than data.

**Problem 3 — No Early Warning System**  
There was no way to identify customers who were at risk of leaving before they 
actually left. By the time the business noticed a customer was gone, it was 
already too late to retain them.

---

## Solution

A full end-to-end analysis was built using **Excel, SQL, and Tableau** 
across three phases:

**Phase 1 — Data Preparation (Excel)**
- Joined Customers and Orders tables using VLOOKUP on `customer_id`
- Built pivot tables for revenue by category, membership tier, and order status
- Created KPI summary cards: Total Revenue, AOV, Total Orders, Return Rate, Top Category
- Calculated monthly trends to identify seasonality patterns

**Phase 2 — RFM Segmentation (SQL)**
- Calculated Recency (days since last purchase), Frequency (number of orders),
  and Monetary (total spend) for every customer
- Scored each customer 1–4 on all three dimensions using CASE WHEN logic
- Classified every customer into one of 6 segments:
  Champions, Loyal Customers, Potential Loyalist, At Risk, Need Attention, Lost Customers
- Produced a segment summary table showing average spend and order frequency per group

**Phase 3 — Interactive Dashboard (Tableau)**  
Built a single-screen dashboard with 3 filters (Year, Membership, Category) containing:
- Revenue by Category bar chart
- Customer Segment horizontal bar chart
- Monthly Revenue Trend line chart with average reference line
- Revenue by City map (12 US cities geocoded)
- Membership Tier Breakdown stacked bar chart
- 5 KPI cards across the header

---

## Key Business Findings

| Finding | Business Insight |
|---|---|
| Electronics drives 30% of revenue | Prioritize inventory and promotions here |
| 38 Champions generate 60% of revenue | Protect with loyalty rewards and early access |
| 28 customers are At Risk | Trigger re-engagement campaigns immediately |
| 22 customers are Lost | Low-cost win-back email campaign worth testing |
| Platinum AOV is 3.5x Free tier | Membership upgrade campaigns have strong ROI |
| Return rate is only 1.93% | Product quality and descriptions are healthy |
| Revenue peaks in late 2024 | Scale inventory ahead of Q4 demand |

---

## Business Recommendations

**Marketing:** Target Champions with exclusive deals and early access — 
they are the highest value segment. Avoid one-size-fits-all campaigns 
that waste budget on low-value customers.

**Retention:** The 28 At Risk customers need immediate action — a personalized 
discount or "we miss you" email triggered within 30 days of last purchase 
could recover significant revenue before they are lost.

**Product:** Electronics is the clear revenue winner. Expand the catalogue 
and negotiate better supplier terms given the volume this category drives.

**Membership:** The AOV gap between Platinum ($290) and Free ($82) is massive. 
A targeted Silver-to-Gold upgrade campaign with a one-time incentive would 
likely pay for itself within 2 orders.

---

## Tools Used

| Tool | Purpose |
|---|---|
| Excel | Data cleaning, VLOOKUP joins, Pivot Tables, KPI summary |
| SQL | RFM scoring, customer aggregation, revenue queries |
| Tableau | Interactive dashboard with 6 visualizations |

---

## Dataset Summary

| Metric | Value |
|---|---|
| Total Customers | 200 |
| Total Orders | 1,654 |
| Time Period | Jan 2022 – Dec 2024 |
| Cities | 12 US cities |
| Categories | 7 product categories |
| Membership Tiers | Free, Silver, Gold, Platinum |

---

## Key Business Insights

- Electronics is the top revenue category at $46K+ (30% of total revenue)
- Champions (19% of customers) drive 60% of total revenue
- Average Order Value is $109 with a healthy return rate of 1.93%
- Platinum members have 3.5x higher AOV than Free tier members
- Los Angeles and New York are the highest revenue cities

---

## RFM Customer Segments

| Segment | Customers | Avg Monetary Value |
|---|---|---|
| Champions | 38 | $1,420 |
| Loyal Customers | 44 | $980 |
| At Risk | 28 | $620 |
| Potential Loyalist | 31 | $540 |
| Need Attention | 37 | $290 |
| Lost Customers | 22 | $180 |

---

## Dashboard Preview

<img width="1200" height="750" alt="DashBoard" src="https://github.com/user-attachments/assets/8521e70d-34f1-46fd-958b-b69bbcb3630e" />

---

## SQL Analysis Highlights

All queries are in `ecommerce_rfm_analysis.sql`. Key analyses include:
- Customer-level RFM scoring with CASE WHEN logic
- Revenue by category and city breakdown
- Segment aggregation summary
- Year-over-year growth calculation
- Return rate analysis

---

## Project Structure

```text
E-Commerce-Customer-Behavior-RFM-Segmentation/
│
├── data/
│   ├── Ecommerce_Customer_Behavior.xlsx
│   ├── customers.csv
│   ├── orders.csv
│   └── SQL Customer Segmentation.xlsx
│
├── sql/
│   └── ecommerce_rfm_analysis.sql
│
├── dashboard/
│   └── E-Commerce Customer Intelligence Dashboard.png
│
└── README.md
```

---

## How to Reproduce This Analysis

1. Download `customers.csv` and `orders.csv`
2. Import both into any SQL editor
   (DB Browser for SQLite is free — sqlitebrowser.org)
3. Run queries from `ecommerce_rfm_analysis.sql` in order
4. Open `Ecommerce_Customer_Behavior.xlsx`
   for the Excel pivot analysis
5. View `E-Commerce Customer Intelligence Dashboard.png`
   for the final Tableau dashboard

---

## Tools Required to Reproduce

| Tool | Cost | Download |
|---|---|---|
| DB Browser for SQLite | Free | sqlitebrowser.org |
| Microsoft Excel | Paid / Office 365 | microsoft.com |
| Tableau Desktop | Free trial available | tableau.com |
