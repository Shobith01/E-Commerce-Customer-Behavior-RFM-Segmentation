# E-Commerce Customer Behavior & RFM Segmentation

## Project Overview

An end-to-end Data Analysis and Business Analysis project using **Excel, SQL, and Tableau** to analyze customer behavior, identify revenue drivers, segment customers using **RFM (Recency, Frequency, Monetary) analysis**, and generate actionable business recommendations.

The analysis is based on **1,654 orders from 200 customers** across a three-year period from 2022 to 2024.

---

## Business Problem

An e-commerce company was facing three key business challenges:

### 1. No Customer Visibility

The business was treating all customers similarly instead of tailoring strategies based on customer value and purchasing behavior.

For example, a high-value Champion customer and an inactive Lost customer could receive the same type of marketing communication.

This resulted in inefficient marketing efforts and limited customer retention opportunities.

### 2. No Clarity on Revenue Drivers

Management lacked a consolidated view of which:

- Product categories
- Cities
- Membership tiers

were contributing most to overall revenue.

Business decisions were therefore difficult to make using data-driven insights.

### 3. No Early Warning System for Customer Churn

The business had no structured method to identify customers who were becoming inactive before they were completely lost.

An RFM-based customer segmentation approach was therefore used to identify high-value, loyal, at-risk, and lost customers.

---

## Project Objective

The objective of this project was to:

- Analyze customer purchasing behavior.
- Identify major revenue drivers.
- Segment customers based on RFM scores.
- Identify high-value and at-risk customer segments.
- Analyze revenue by category, city, and membership tier.
- Build an interactive dashboard for business stakeholders.
- Translate analytical findings into actionable business recommendations.

---

# Project Approach

The project was completed across three major phases.

## Phase 1 — Data Preparation & Exploration Using Excel

Excel was used for initial data preparation, exploration, and KPI analysis.

### Activities Performed

- Joined Customers and Orders data using `customer_id`.
- Used VLOOKUP to create a master dataset.
- Created Pivot Tables for revenue and customer analysis.
- Analyzed revenue by product category.
- Analyzed revenue by membership tier.
- Analyzed order status and returns.
- Calculated Total Revenue, Average Order Value, Total Orders, Return Rate, and Top Category.
- Created monthly revenue analysis to identify trends.

### Excel Deliverables

The Excel analysis files are available in:

`./excel/`

---

# Phase 2 — Customer Segmentation Using SQL

SQL was used to perform customer-level analysis and RFM segmentation.

### RFM Analysis

Each customer was evaluated using three dimensions:

**Recency**  
Number of days since the customer's most recent delivered order.

**Frequency**  
Number of delivered orders placed by the customer.

**Monetary**  
Total amount spent on delivered orders.

Customers were scored from **1 to 4** across the three RFM dimensions using SQL `CASE WHEN` logic.

### Customer Segments

The analysis classified customers into six segments:

- Champions
- Loyal Customers
- Potential Loyalist
- At Risk
- Need Attention
- Lost Customers

### SQL Analysis Includes

- Customer-level RFM calculations
- RFM scoring using `CASE WHEN`
- Customer segment classification
- Revenue by product category
- Revenue by city
- Customer segment summaries
- Year-over-year revenue analysis
- Return rate analysis

The complete SQL analysis is available in:

`./sql/ecommerce_rfm_analysis.sql`

---

# Phase 3 — Interactive Dashboard Using Tableau

An interactive **E-Commerce Customer Intelligence Dashboard** was created using Tableau.

The dashboard provides a consolidated view of customer behavior, revenue performance, and business KPIs.

### Dashboard Components

- Total Revenue KPI
- Total Orders KPI
- Average Order Value KPI
- Return Rate KPI
- Top Category KPI
- Revenue by Category
- Customer Segment Analysis
- Monthly Revenue Trend
- Revenue by City
- Membership Tier Breakdown

### Dashboard Filters

The dashboard includes filters for:

- Year
- Membership
- Category

The final dashboard image is available in:

`./dashboard/`

---

# Key Business Findings

| Finding | Business Insight |
|---|---|
| Electronics is the top revenue category | Prioritize inventory, promotions, and supplier planning around the strongest-performing category |
| Champions are the highest-value customer segment | Protect high-value customers through loyalty and retention initiatives |
| 28 customers are At Risk | Target these customers with re-engagement and win-back campaigns |
| 22 customers are Lost | Test low-cost win-back campaigns to recover potentially valuable customers |
| Platinum customers have significantly higher AOV than Free customers | Membership upgrade campaigns may provide opportunities to increase customer value |
| Return Rate is 1.93% | The current return rate provides a useful baseline for future monitoring |
| Revenue shows stronger performance toward late 2024 | Use historical trends to support future demand and inventory planning |

---

# Key Dashboard KPIs

| KPI | Value |
|---|---:|
| Total Revenue | $154,704.02 |
| Total Orders | 1,419 |
| Average Order Value | $109.02 |
| Return Rate | 1.93% |
| Top Category | Electronics |

---

# RFM Customer Segmentation

| Segment | Customers | Avg Monetary Value |
|---|---:|---:|
| Champions | 38 | $1,420 |
| Loyal Customers | 44 | $980 |
| At Risk | 28 | $620 |
| Potential Loyalist | 31 | $540 |
| Need Attention | 37 | $290 |
| Lost Customers | 22 | $180 |

The RFM segmentation helps the business move away from a one-size-fits-all customer strategy and instead prioritize customers based on their purchasing behavior and value.

---

# Business Recommendations

## 1. High-Value Customer Retention

Champions and Loyal Customers represent the strongest-value customer segments.

### Recommendation

- Provide exclusive offers to high-value customers.
- Introduce early access to new products and promotions.
- Use personalized offers based on previous purchasing behavior.
- Monitor purchasing activity to identify changes in customer engagement.

### Expected Impact

Protect existing revenue, increase repeat purchases, and improve customer lifetime value.

---

## 2. At-Risk Customer Win-Back

The analysis identifies **28 At Risk customers** who represent an opportunity for customer retention.

### Recommendation

- Launch targeted re-engagement campaigns.
- Use personalized promotional offers.
- Consider purchase history when designing offers.
- Track whether customers return after the campaign.

### Expected Impact

Recover potential lost revenue and prevent At Risk customers from progressing into the Lost segment.

---

## 3. Membership Tier Conversion

The membership analysis indicates differences in customer value across membership tiers.

### Recommendation

- Identify high-value customers in lower membership tiers.
- Promote the benefits of higher membership levels.
- Provide targeted upgrade incentives.
- Track customer behavior after membership upgrades.

### Expected Impact

Increase membership engagement, customer spending, and long-term customer value.

---

# Business Analysis Documentation

This project also includes Business Analysis documentation to demonstrate the translation of analytical findings into structured business requirements and actionable recommendations.

### Business Requirements Document (BRD)

The BRD defines:

- Business background
- Business objective
- Stakeholders
- Project scope
- Out-of-scope items
- Assumptions
- Functional requirements
- Non-functional requirements
- Expected business outcomes

[View Business Requirements Document](./documentation/BRD%20-%20E-Commerce%20Customer%20Behavior%20%26%20RFM%20Segmentation.pdf)

### User Stories

The User Stories document defines stakeholder requirements and acceptance criteria for key business use cases.

It also includes requirements traceability between user stories and functional requirements.

[View User Stories](./documentation/UserStories_E-Commerce%20Customer%20Behavior%20%26%20RFM%20Segmentation.pdf)

### Strategic Recommendations

The Strategic Recommendations document converts analytical findings into actionable business recommendations focused on:

- High-value customer retention
- At-risk customer win-back
- Membership growth
- Revenue opportunities

[View Strategic Recommendations](./documentation/Strategic%20Recommendations%20-%20E-Commerce%20Customer%20Behavior%20%26%20RFM%20Segmentation.pdf)

---

# Dashboard Preview

![E-Commerce Customer Intelligence Dashboard](./dashboard/E-Commerce%20Customer%20Intelligence%20Dashboard.png)

---

# Tools & Technologies

| Tool | Purpose |
|---|---|
| Excel | Data preparation, VLOOKUP joins, Pivot Tables, KPI analysis |
| SQL | Customer aggregation, RFM scoring, segmentation, revenue analysis |
| Tableau | Interactive dashboard and data visualization |

---

# Dataset Summary

| Metric | Value |
|---|---:|
| Total Customers | 200 |
| Total Orders | 1,654 |
| Time Period | Jan 2022 – Dec 2024 |
| Cities | 12 US cities |
| Product Categories | 7 |
| Membership Tiers | Free, Silver, Gold, Platinum |

---

# Project Structure

```text
E-Commerce-Customer-Behavior-RFM-Segmentation/
│
├── data/
│   ├── customers.csv
│   └── orders.csv
│
├── excel/
│   ├── Ecommerce_Customer_Behavior.xlsx
│   └── SQL Customer Segmentation.csv.xlsx
│
├── sql/
│   └── ecommerce_rfm_analysis.sql
│
├── dashboard/
│   └── E-Commerce Customer Intelligence Dashboard.png
│
├── documentation/
│   ├── BRD_ECommerce_RFM_v1.0.pdf
│   ├── UserStories_ECommerce_RFM.pdf
│   └── Strategic_Recommendations_ECommerce_RFM.pdf
│
└── README.md
