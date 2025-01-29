SELECT 
    SaleDate,
    SUM(TotalRevenue) AS DailyRevenue
FROM SalesTransaction_tbl
GROUP BY SaleDate
ORDER BY SaleDate ASC;