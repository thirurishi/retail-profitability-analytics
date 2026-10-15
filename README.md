 <div align="center">

# RETAIL INTELLIGENCE

### Retail Business Intelligence & Profitability Optimisation

**From raw sales data to actionable business insights.**

An end-to-end analytics project combining SQL, Power BI, data modelling and DAX to investigate sales performance, product profitability and discount patterns.

<br>

![SQL](https://img.shields.io/badge/SQL-SQLite-4479A1?style=for-the-badge&logo=sqlite&logoColor=white)
![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![DAX](https://img.shields.io/badge/DAX-Analytics-7B61A8?style=for-the-badge)
![Git](https://img.shields.io/badge/Git-Version%20Control-F05032?style=for-the-badge&logo=git&logoColor=white)

</div>

---

## Project at a glance

This project transforms retail order data into an interactive business intelligence solution. SQL is used to investigate business performance, while Power BI presents the findings through an executive dashboard and a detailed profitability report.

<table>
<tr>
<td width="50%" valign="top">

### 01 · Analyse

Explore sales data with SQL to calculate key performance indicators and investigate category, product and discount performance.

</td>
<td width="50%" valign="top">

### 02 · Model

Organise the data into a fact table and dimension tables to support structured analysis and interactive filtering.

</td>
</tr>
<tr>
<td width="50%" valign="top">

### 03 · Visualise

Build Power BI reports with KPI cards, sales trends, category comparisons, product tables and interactive slicers.

</td>
<td width="50%" valign="top">

### 04 · Validate

Compare SQL calculations with Power BI measures and document data quality checks, assumptions and limitations.

</td>
</tr>
</table>

## Key performance indicators

<div align="center">

<table>
<tr>
<td align="center" width="25%">

**TOTAL REVENUE**

# 2.33M

</td>
<td align="center" width="25%">

**TOTAL PROFIT**

# 292.30K

</td>
<td align="center" width="25%">

**ORDERS**

# 5,111

</td>
<td align="center" width="25%">

**PROFIT MARGIN**

# 12.56%

</td>
</tr>
</table>

</div>

| Metric | Result |
|---|---:|
| Sales rows | 10,194 |
| Total quantity | 38,654 |
| Average order value | Revenue divided by distinct orders |

*The figures above reflect the current project calculations. Currency is not specified because the source currency has not been independently confirmed.*

---

## Interactive Power BI report

### 01 — Executive Overview

A high-level view of retail performance, designed to help users understand the overall business situation quickly.

**What it includes**
- Revenue, profit, profit margin, orders and quantity KPIs
- Sales trend analysis
- Category performance comparisons
- Regional filtering

<div align="center">

<img src="powerbi/screenshorts/Executive%20Overview.png" alt="Executive Overview Power BI dashboard" width="100%">

*Executive Overview — sales performance at a glance.*

</div>

### 02 — Profitability Deep Dive

A more detailed view of profitability across categories and individual products.

**What it includes**
- Category-level profit comparisons
- Product profitability analysis
- Conditional formatting to highlight negative profit
- Discount filtering for interactive exploration

<div align="center">

<img src="powerbi/screenshorts/Profitability%20Deep%20Dive.png" alt="Profitability Deep Dive Power BI dashboard" width="100%">

*Profitability Deep Dive — explore product-level performance.*

</div>

---

## SQL analysis

Four SQL scripts address the main business questions.

| Script | Analysis |
|---|---|
| `01_overall_kpis.sql` | Overall revenue, profit, orders, quantity and margin |
| `02_category_profitability.sql` | Revenue and profit by product category |
| `03_product_profitability.sql` | Product-level profitability and low-profit products |
| `04_discount_analysis.sql` | Profitability patterns across discount bands |

### Business questions investigated

- Which product categories generate the most revenue and profit?
- Which products generate low or negative profit?
- How does profitability vary across discount levels?
- What are the overall sales and profitability KPIs?
- Do SQL calculations reconcile with Power BI measures?

---

## Data model & calculations

The Power BI model follows a fact-and-dimension structure to support analysis across products, customers, dates and regions.

**Core components**

- `FactSales` — sales transactions and numerical business measures
- `DimProduct` — product attributes and categories
- `DimCustomer` — customer and segment information
- `DimDate` — calendar attributes for time-based analysis
- `DimRegion` — geographic attributes for regional analysis

### DAX measures

The report includes six core measures:

`Total Revenue` · `Total Profit` · `Profit Margin %` · `Total Orders` · `Total Quantity` · `Average Order Value`

Read the detailed documentation:

- [Data model](docs/data_model.md)
- [DAX measures](docs/dax_measures.md)
- [Data quality report](docs/data_quality_report.md)

---

## Technology stack

<div align="center">

| Tool | Role in the project |
|---|---|
| **SQLite** | SQL-based business analysis |
| **Power Query** | Data preparation and transformation |
| **Power BI Desktop** | Interactive reporting and visualisation |
| **DAX** | KPI and business measure calculations |
| **Git & GitHub** | Version control and project documentation |

</div>

---

## Repository structure

```text
retail-profitability-analytics/
├── docs/
│   ├── data_model.md
│   ├── data_quality_report.md
│   └── dax_measures.md
├── powerbi/
│   ├── retail_profitability.pbix
│   └── screenshorts/
│       ├── Executive Overview.png
│       └── Profitability Deep Dive.png
├── sql/
│   ├── 01_overall_kpis.sql
│   ├── 02_category_profitability.sql
│   ├── 03_product_profitability.sql
│   └── 04_discount_analysis.sql
├── .gitignore
└── README.md
```

Raw datasets and the local SQLite database are excluded from version control.

---

## How to explore the project

1. Clone or download this repository.
2. Open `powerbi/retail_profitability.pbix` in Power BI Desktop.
3. Explore the report pages, filters and slicers.
4. Review the SQL scripts to understand the business calculations.
5. Read the documentation to understand the model, measures and validation notes.

The original dataset is not included. To reproduce the analysis, obtain an appropriately licensed copy of the source data and follow the documented data preparation and validation steps.

---

## Data quality & limitations

- The analysis is based on the available retail order dataset and may not represent the performance of an actual company.
- SQL-to-Power BI reconciliation was performed for the reported KPIs.
- Source numeric formatting and conversion assumptions should be considered when interpreting results.
- Discount patterns show associations; they do not independently establish causation.
- Currency has not been independently confirmed.

---

<div align="center">

### Turning data into business understanding.

**Thirumurugan Kumar**

MSc Data Science & Analytics  
Data Analytics · SQL · Power BI · DAX

</div>
