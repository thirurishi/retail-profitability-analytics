
SELECT
    "Product ID",
    "Product Name",
    SUM(CAST(REPLACE(Sales, ',', '.') AS REAL)) AS Revenue,
    SUM(CAST(REPLACE(Profit, ',', '.') AS REAL)) AS Profit,
    ROUND(
        100.0 * SUM(CAST(REPLACE(Profit, ',', '.') AS REAL))
        / NULLIF(SUM(CAST(REPLACE(Sales, ',', '.') AS REAL)), 0),
        2
    ) AS Margin_Pct
FROM Orders
GROUP BY "Product ID", "Product Name"
HAVING SUM(CAST(REPLACE(Sales, ',', '.') AS REAL)) > 1000
   AND SUM(CAST(REPLACE(Profit, ',', '.') AS REAL))
       / NULLIF(SUM(CAST(REPLACE(Sales, ',', '.') AS REAL)), 0) < 0.05
ORDER BY Revenue DESC
LIMIT 20;
