# DAX Measures — Retail Business Intelligence & Profitability Optimisation

## 1. Total Revenue

```dax
Total Revenue = SUM(FactSales[Sales])
```

Calculates sales revenue within the current filter context.

## 2. Total Profit

```dax
Total Profit = SUM(FactSales[Profit])
```

Calculates total profit within the current filter context.

## 3. Profit Margin %

```dax
Profit Margin % =
DIVIDE([Total Profit], [Total Revenue], 0)
```

Calculates profit as a proportion of revenue. Format the measure as a percentage.

## 4. Total Orders

```dax
Total Orders = DISTINCTCOUNT(FactSales[Order ID])
```

Counts distinct orders rather than individual order lines.

## 5. Total Quantity

```dax
Total Quantity = SUM(FactSales[Quantity])
```

Calculates the total quantity of items sold.

## 6. Average Order Value

```dax
Average Order Value =
DIVIDE([Total Revenue], [Total Orders], 0)
```

Calculates average revenue per distinct order.

## Notes

These are the intended measure definitions. Compare them with the actual measures in Power BI and update this document if your formulas differ. Profit margin should be calculated from total profit divided by total revenue, not as an average of individual row margins.
