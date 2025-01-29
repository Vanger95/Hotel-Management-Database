#4.	Current inventory levels for each ingredient, including ingredient name, category, and quantity in stock.
SELECT 
    I.IngredientName AS IngredientName,
    M.Category AS IngredientCategory,
    I.CurrentStock AS QuantityInStock
    
FROM Inventory_tbl I

INNER JOIN MenuIngredient_tbl MI
ON I.InventoryID = MI.InventoryID

INNER JOIN Menu_tbl M
ON MI.MenuItemID = M.MenuItemID

ORDER BY I.CurrentStock DESC;
