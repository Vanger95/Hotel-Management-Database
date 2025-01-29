SELECT 
    M.Category AS MenuCategory,
    SUM(SD.QuantitySold * M.Price) AS TotalSales
    
FROM SalesDetail_tbl SD

INNER JOIN Menu_tbl M
ON SD.MenuItemID = M.MenuItemID

GROUP BY M.Category
ORDER BY TotalSales DESC;
