#1.	Total sales for each menu category for a given date range.
SELECT 
    MI.IngredientName AS MenuCategory,
    SUM(ST.TotalRevenue) AS TotalRevenue
    
FROM salestransaction_tbl ST 
    
INNER JOIN salesdetail_tbl SL 
ON ST.SalesID = SL.SalesID

INNER JOIN menuingredient_tbl MI 
ON MI.MenuItemID = SL.MenuItemID
    
WHERE ST.SaleDate BETWEEN '2025-01-01' AND '2025-12-31'

GROUP BY 
    MI.IngredientName
    
ORDER BY 
	TotalRevenue DESC
    
    
    