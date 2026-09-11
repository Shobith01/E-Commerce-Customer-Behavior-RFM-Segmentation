# E-Commerce Customer Behavior & RFM Segmentation

## Project Overview
End-to-end business analysis of 1,654 orders from 200 customers 
to identify revenue drivers, customer segments, and retention 
opportunities using RFM (Recency, Frequency, Monetary) analysis.

## Tools Used
| Tool | Purpose |
|---|---|
| Excel | Data cleaning, VLOOKUP joins, Pivot Tables, KPI summary |
| SQL | RFM scoring, customer aggregation, revenue queries |
| Tableau | Interactive dashboard with 6 visualizations |

## Dataset Summary
| Metric | Value |
|---|---|
| Total Customers | 200 |
| Total Orders | 1,654 |
| Time Period | Jan 2022 – Dec 2024 |
| Cities | 12 US cities |
| Categories | 7 product categories |
| Membership Tiers | Free, Silver, Gold, Platinum |

## Key Business Insights
- Electronics is the top revenue category at $46K+ (30% of total)
- Champions (19% of customers) drive 60% of total revenue
- Average Order Value is $109 with a healthy return rate of 1.93%
- Platinum members have 3.5x higher AOV than Free tier members
- Los Angeles and New York are the highest revenue cities

## RFM Customer Segments
| Segment | Customers | Avg Monetary Value |
|---|---|---|
| Champions | 38 | $1,420 |
| Loyal Customers | 44 | $980 |
| At Risk | 28 | $620 |
| Potential Loyalist | 31 | $540 |
| Need Attention | 37 | $290 |
| Lost Customers | 22 | $180 |

## Dashboard Preview
<img width="1200" height="750" alt="DashBoard" src="https://github.com/user-attachments/assets/8521e70d-34f1-46fd-958b-b69bbcb3630e" />



## SQL Analysis Highlights
All queries are in `rfm_analysis_queries.sql`. Key analyses include:
- Customer-level RFM scoring with CASE WHEN logic
- Revenue by category and city breakdown
- Segment aggregation summary
- Year-over-year growth calculation
- Fraud/return rate analysis

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


## How to Reproduce This Analysis
1. Download `customers.csv` and `orders.csv`
2. Import both into any SQL editor
   (DB Browser for SQLite is free — sqlitebrowser.org)
3. Run queries from `ecommerce_rfm_analysis.sql` in order
4. Open `Ecommerce_Customer_Behavior.xlsx` 
   for the Excel pivot analysis
5. View `E-Commerce Customer Intelligence Dashboard.png`  
   for the final Tableau dashboard

## Tools Required to Reproduce
| Tool | Cost | Download |
|---|---|---|
| SQL Server Management Studio (SSMS) |Free Download Available | learn.microsoft.com |
| Microsoft Excel | Paid / Office 365 | microsoft.com |
| Tableau Desktop | Free trial available | tableau.com |
