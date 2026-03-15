# Superstore Sales Performance Analysis

## Project Overview
End-to-end business analytics project analyzing 9,125 sales transactions 
from a global retail superstore to identify profitability drivers, 
loss-making segments, and revenue trends across regions, categories, 
and customer segments.

## Business Problem
The company needed to understand which regions, product categories, and 
customer segments were driving profitability and where losses were occurring, 
in order to prioritize sales efforts and improve overall profit margins.

## Tools Used
- **Microsoft Excel** — Data cleaning, feature engineering, calculated columns
- **MySQL** — 8 SQL queries for business analysis and insight generation
- **Power BI** — Interactive dashboard with 6 visuals and dynamic slicers

## Data Cleaning (Excel)
- Identified and fixed mixed date formats in Ship Date column
- Created Profit Margin % column = Profit / Sales * 100
- Created Shipping Days column = Ship Date - Order Date
- Created Order Size categories (Small / Medium / Large) based on Sales value
- Created Profit Status flag (Profit / Loss) for analytical filtering
- Final dataset: 9,125 rows × 26 columns

## Key SQL Insights

### Overall Business Health
- Total Revenue: $2.17M | Total Profit: $273K | Profit Margin: 12.11%
- 4,776 total orders | Average Order Value: $238

### Regional Performance
- West region leads with highest revenue ($725K) and best margin (14.94%)
- Central region is underperforming with only 7.92% margin despite being 3rd in revenue

### Category Performance
- Technology: 17.4% margin — strongest category
- Office Supplies: 17.0% margin — consistent performer
- Furniture: only 2.49% margin despite $742K revenue — critical problem area

### Loss-Making Sub-Categories
- Tables: -$17,725 loss (highest loss-maker)
- Bookcases: -$3,472 loss
- Both are Furniture sub-categories pulling down overall margins

### Discount Impact — Key Finding
- No discount orders: 29.51% profit margin
- High discount orders: -77.4% profit margin
- Heavy discounting is the primary driver of losses in the business

### Customer Segments
- Home Office: best margin at 14.03% with highest avg order value ($241)
- Consumer: highest revenue but lowest margin at 11.55%

### Seasonality
- November and December are consistently the strongest months (4 years)
- January and February are consistently the weakest months

## Dashboard Features
- 5 KPI cards: Total Revenue, Total Profit, Profit Margin %, Total Orders, Avg Order Value
- Map visual: Sales by US State
- Line chart: Monthly Revenue Trend 2014–2017
- Bar chart: Profit by Sub-Category with red highlighting for loss-makers
- Bar chart: Profit Margin % by Category
- Donut chart: Revenue by Customer Segment
- Dynamic slicers: Region, Segment, Category, Year

## Business Recommendations
1. Reduce or eliminate discounts above 20% — they destroy margin completely
2. Investigate Tables pricing and cost structure — losing $17K is not sustainable
3. Invest in growing Home Office segment — best margin and order value
4. Focus Technology sales in Q4 — highest margin category during peak season

## Files in This Repository
- `superstore_cleaned.xlsx` — Cleaned and enriched dataset
- `superstore_analysis.sql` — All 8 SQL queries with business context
- `Superstore_Dashboard.pdf` — Final Power BI dashboard export
- `dashboard_screenshot.png` — Dashboard preview
