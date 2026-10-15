# Data Model — Retail Business Intelligence & Profitability Optimisation

## 1. Overview

The Power BI model organises retail order data into a fact table and supporting dimension tables. This structure supports filtering and aggregating sales and profitability across products, customers, dates, and geographic locations.

## 2. Tables

### FactSales

**Purpose:** Stores order-line-level sales information and numeric business metrics.

Key fields include:
- Order ID
- Row ID
- Order Date
- Product ID
- Customer ID
- Sales
- Profit
- Quantity
- Discount

### DimProduct

**Purpose:** Describes products and supports product-level analysis.

Key fields:
- ProductKey
- Product Name
- Category
- Sub-Category

### DimCustomer

**Purpose:** Describes customers and their segments.

Key fields:
- CustomerKey
- Customer Name
- Segment

### DimDate

**Purpose:** Provides date attributes for time-based reporting.

Key fields:
- Date
- Year
- Quarter
- Month
- Month Number
- Year-Month

### DimRegion

**Purpose:** Supports geographic analysis.

Key fields:
- RegionKey
- Country/Region
- State/Province
- City
- Postal Code
- Region

## 3. Relationships

The intended model uses one-to-many relationships from each dimension to FactSales:

- `DimProduct[ProductKey]` → `FactSales[Product ID]`
- `DimCustomer[CustomerKey]` → the matching customer key in `FactSales`
- `DimDate[Date]` → `FactSales[Order Date]`
- `DimRegion[RegionKey]` → `FactSales[RegionKey]`

Relationships should use unique keys on the dimension side and use single-direction filtering from dimensions to the fact table.

## 4. Analytical Benefits

- Product and category comparisons
- Customer-segment analysis
- Time-based sales trends
- Regional performance analysis
- Reusable DAX measures
- Consistent filtering across report pages

## 5. Validation Notes

Before publication, confirm that all intended relationships are active, dimension keys are unique, and the fact table contains matching keys. Verify the date relationship uses compatible date types and that the date table covers the required reporting period.
