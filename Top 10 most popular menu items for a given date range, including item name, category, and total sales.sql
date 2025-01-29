#2.	Top 10 most popular menu items for a given date range, including item name, category, and total sales
SELECT 
    M.ItemName AS MenuItemName,
    M.Category AS MenuCategory,
    SUM(OD.Quantity) AS TotalQuantitySold
    
FROM OrderDetail_tbl OD

INNER JOIN Menu_tbl M
ON OD.MenuItemID = M.MenuItemID

INNER JOIN Order_tbl O
ON OD.OrderID = O.OrderID

WHERE O.OrderDate BETWEEN '2025-01-01' AND '2025-12-31'

GROUP BY M.MenuItemID, M.ItemName, M.Category

ORDER BY TotalQuantitySold DESC
LIMIT 10;
