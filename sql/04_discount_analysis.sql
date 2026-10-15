SELECT
    CASE
        WHEN CAST(REPLACE(Discount, ',', '.') AS REAL) = 0
            THEN '0% discount'
        WHEN CAST(REPLACE(Discount, ',', '.') AS REAL) <= 0.20
            THEN '1-20% discount'
        WHEN CAST(REPLACE(Discount, ',', '.') AS REAL) <= 0.50
            THEN '21-50% discount'
        ELSE 'Above 50% discount'
    END AS Discount_Band,
    COUNT(*) AS Transaction_Rows,
    ROUND(
        SUM(CAST(REPLACE(Sales, ',', '.') AS REAL)), 2
    ) AS Revenue,
    ROUND(
        SUM(CAST(REPLACE(Profit, ',', '.') AS REAL)), 2
    ) AS Profit,
    ROUND(
        100.0 * SUM(CAST(REPLACE(Profit, ',', '.') AS REAL))
        / NULLIF(SUM(CAST(REPLACE(Sales, ',', '.') AS REAL)), 0),
        2
    ) AS Margin_Pct
FROM Orders
GROUP BY Discount_Band
ORDER BY Margin_Pct DESC;