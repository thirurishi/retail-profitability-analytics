# Retail Business Intelligence & Profitability Optimisation

An end-to-end retail analytics project using **SQL, Power BI, data modelling, and DAX** to analyse sales performance, profitability, and discount patterns.

## Project Overview

This project transforms raw retail order data into a business intelligence solution. It combines SQL-based analysis with an interactive Power BI report to explore revenue, profit, product performance, and discount-related profitability patterns.

## Business Questions

- Which product categories generate the most revenue and profit?
- Which products generate negative or low profit?
- How does profitability vary across discount levels?
- What are the overall revenue, profit, order volume, and profit margin?
- Can SQL calculations be reconciled with Power BI measures?

## Technology Stack

- **SQL:** SQLite
- **Data preparation:** Power Query
- **Data modelling:** Star schema
- **Reporting:** Power BI Desktop
- **Calculations:** DAX
- **Version control:** Git and GitHub

## Dashboard Pages

### 1. Executive Overview

Provides a high-level view of retail performance through KPI cards, sales trends, category comparisons, and regional filtering.

![Executive Overview](powerbi/screenshots/executive_overview.png)

### 2. Profitability Deep Dive

Examines category profitability and product-level performance. Conditional formatting highlights negative-profit products, while a discount slicer supports interactive analysis.

![Profitability Deep Dive](powerbi/screenshots/profitability_deep_dive.png)

## Key Metrics

| Metric | Result |
|---|---:|
| Sales rows | 10,194 |
| Distinct orders | 5,111 |
| Total revenue | 2,326,534.35 |
| Total profit | 292,296.81 |
| Total quantity | 38,654 |
| Overall profit margin | 12.56% |

The KPI totals were compared between SQLite and Power BI. Currency is not specified because the source dataset's currency has not been independently confirmed.

## SQL Analysis

The SQL analysis covers:

- Overall sales and profitability KPIs
- Revenue and profit by category
- Product-level profitability
- Discount-band analysis
- Distinct order counts and quantity totals

SQL scripts are stored in the `sql/` directory.

## Data Model

The Power BI model uses a fact table and dimension tables to support filtering and analysis across products, customers, dates, and regions.

See [`docs/data_model.md`](docs/data_model.md) for the model details.

## Data Quality and Validation

The project includes checks for row counts, numeric conversions, KPI consistency, and SQL-to-Power BI reconciliation.

See [`docs/data_quality_report.md`](docs/data_quality_report.md) for the validation notes and limitations.

## Repository Structure

```text
retail-profitability-analytics/
├── data/
│   ├── raw/                 # Excluded from Git
│   └── processed/           # Excluded from Git
├── docs/
│   ├── data_model.md
│   ├── data_quality_report.md
│   └── dax_measures.md
├── powerbi/
│   ├── retail_profitability.pbix
│   └── screenshots/
├── sql/
├── .gitignore
└── README.md
```

## How to Explore

1. Clone or download this repository.
2. Open `powerbi/retail_profitability.pbix` using Power BI Desktop.
3. Use the report filters and slicers to explore sales and profitability.
4. Review the SQL scripts to understand the KPI calculations.

The original dataset is not included. Provide your own appropriately licensed copy and follow the project documentation to reproduce the analysis.

## Limitations

- The analysis is based on the available retail order dataset and may not represent a real company's performance.
- Discount patterns show associations and do not, by themselves, establish causation.
- Findings should be interpreted in the context of the dataset's coverage and data quality.

## Author

**Thirumurugan Kumar**  
Data Science & Analytics Master's student | Data Analytics | SQL | Power BI
