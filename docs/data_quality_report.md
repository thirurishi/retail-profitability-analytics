# Data Quality and Validation Report

## 1. Dataset Overview

The project uses a retail orders dataset containing 10,194 order-line rows in the current SQLite database.

## 2. Numeric Conversion

The raw Sales and Profit values use decimal commas in the inspected records. The SQLite analysis converts commas to decimal points before casting values to numeric types.

Example:

- Raw Sales: `16,448`
- Converted Sales: `16.448`
- Raw Profit: `5,5512`
- Converted Profit: `5.5512`

The conversion must be applied consistently when reproducing the analysis.

## 3. KPI Reconciliation

The following overall values were returned by the SQLite validation query:

| KPI | SQLite result |
|---|---:|
| Sales rows | 10,194 |
| Distinct orders | 5,111 |
| Total revenue | 2,326,534.35 |
| Total profit | 292,296.81 |
| Total quantity | 38,654 |
| Profit margin | 12.56% |

The Power BI table displayed matching revenue, profit, and profit margin totals. The distinct-order and quantity measures should also be checked against the report before final publication.

## 4. Current Checks

- [x] Confirmed SQLite row count.
- [x] Calculated distinct orders.
- [x] Calculated revenue and profit totals.
- [x] Compared displayed revenue and profit totals with Power BI.
- [ ] Confirmed all dimension keys are unique.
- [ ] Confirmed all relationships are active and correctly configured.
- [ ] Checked missing values and duplicate rows.
- [ ] Reconciled every KPI at full precision.

## 5. Limitations

- The dataset is a practice dataset and should not be presented as company-specific data.
- Discount patterns alone do not prove that discounts caused lower profit.
- Final conclusions depend on validating numeric types, relationships, and KPI calculations.
