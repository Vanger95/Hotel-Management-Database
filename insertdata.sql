USE restaurant_db;

-- Insert Sample Data for RestaurantLocation_tbl
INSERT INTO RestaurantLocation_tbl (LocationName, AddLine1, AddLine2, AddLine3) VALUES
('Downtown', '123 Main St.', 'Suite 200', 'City Center'),
('Uptown', '456 High St.', NULL, 'Suburb'),
('Midtown', '789 Elm St.', 'Building B', 'MidCity'),
('Harbor', '101 Ocean Dr.', NULL, 'HarborView'),
('Airport', '202 Sky Way', 'Terminal 1', 'AirCity'),
('Mall', '303 Mall Blvd.', 'Floor 3', 'ShoppingDistrict'),
('Old Town', '404 Market St.', NULL, 'HistoricalArea'),
('University', '505 Campus Rd.', NULL, 'CollegeTown'),
('TechPark', '606 Innovation Dr.', 'Suite 100', 'TechCity'),
('Beach', '707 Shoreline Ave.', 'Cabana 5', 'Seaside');

-- Insert Sample Data for ResLocContact_tbl
INSERT INTO ResLocContact_tbl (LocationID, ContactNo) VALUES
(1, '555-1234'), (1, '555-5678'),
(2, '555-8765'), (3, '555-4321'),
(4, '555-2222'), (5, '555-3333'),
(6, '555-4444'), (7, '555-5555'),
(8, '555-6666'), (9, '555-7777');

-- Insert Sample Data for User_tbl
INSERT INTO User_tbl (Username, FirstName, MidName, LastName, Password, Role) VALUES
('admin_john', 'John', 'A.', 'Doe', SHA2('admin123', 256), 'Admin'),
('manager_jane', 'Jane', 'B.', 'Smith', SHA2('manager456', 256), 'Manager'),
('chef_mike', 'Mike', NULL, 'Brown', SHA2('chef789', 256), 'Chef'),
('waiter_amy', 'Amy', 'C.', 'White', SHA2('waiter001', 256), 'Waiter'),
('cashier_tom', 'Tom', NULL, 'Hanks', SHA2('cashier202', 256), 'Cashier'),
('supervisor_sara', 'Sara', 'E.', 'Taylor', SHA2('supervisor303', 256), 'Supervisor'),
('host_ella', 'Ella', 'F.', 'Green', SHA2('host404', 256), 'Host'),
('assistant_jim', 'Jim', NULL, 'Black', SHA2('assistant505', 256), 'Assistant'),
('tech_sam', 'Sam', 'G.', 'Gray', SHA2('tech606', 256), 'Technician'),
('driver_lee', 'Lee', NULL, 'Clark', SHA2('driver707', 256), 'Driver'),
('emily_stone', 'Emily', 'H.', 'Stone', SHA2('emily123', 256), 'Customer'),
('chris_evans', 'Chris', 'M.', 'Evans', SHA2('chris123', 256), 'Customer'),
('anna_hathaway', 'Anna', 'B.', 'Hathaway', SHA2('anna123', 256), 'Customer'),
('robert_downey', 'Robert', NULL, 'Downey', SHA2('robert123', 256), 'Customer'),
('scarlett_johansson', 'Scarlett', 'J.', 'Johansson', SHA2('scarlett123', 256), 'Customer'),
('tom_holland', 'Tom', NULL, 'Holland', SHA2('tom123', 256), 'Customer'),
('benedict_cumberbatch', 'Benedict', 'C.', 'Cumberbatch', SHA2('benedict123', 256), 'Customer'),
('mark_ruffalo', 'Mark', NULL, 'Ruffalo', SHA2('mark123', 256), 'Customer'),
('zendaya_coleman', 'Zendaya', 'A.', 'Coleman', SHA2('zendaya123', 256), 'Customer'),
('natalie_portman', 'Natalie', NULL, 'Portman', SHA2('natalie123', 256), 'Customer');

-- Insert Sample Data for AdminDetail_tbl
INSERT INTO AdminDetail_tbl (UserID, FirstName, MidName, LastName, Position, LocationID) VALUES
(1, 'John', 'A.', 'Doe', 'General Manager', 1),
(2, 'Jane', 'B.', 'Smith', 'Branch Manager', 2),
(3, 'Mike', NULL, 'Brown', 'Head Chef', 3),
(4, 'Amy', 'C.', 'White', 'Shift Supervisor', 4),
(5, 'Tom', NULL, 'Hanks', 'Head Cashier', 5),
(6, 'Sara', 'E.', 'Taylor', 'Operations Manager', 6),
(7, 'Ella', 'F.', 'Green', 'Front Desk Manager', 7),
(8, 'Jim', NULL, 'Black', 'Assistant Manager', 8),
(9, 'Sam', 'G.', 'Gray', 'Technical Lead', 9),
(10, 'Lee', NULL, 'Clark', 'Logistics Manager', 10);

-- Insert Sample Data for CustomerDetail_tbl
INSERT INTO CustomerDetail_tbl (UserID, FirstName, MidName, LastName, Email) VALUES
( 11, 'Emily', 'H.', 'Stone', 'emily.stone@example.com'),
( 12, 'Chris', 'M.', 'Evans', 'chris.evans@example.com'),
( 13, 'Anna', 'B.', 'Hathaway', 'anna.hathaway@example.com'),
( 14, 'Robert', NULL, 'Downey', 'robert.downey@example.com'),
( 15, 'Scarlett', 'J.', 'Johansson', 'scarlett.j@example.com'),
( 16, 'Tom', NULL, 'Holland', 'tom.holland@example.com'),
( 17, 'Benedict', 'C.', 'Cumberbatch', 'benedict.c@example.com'),
( 18, 'Mark', NULL, 'Ruffalo', 'mark.ruffalo@example.com'),
( 19, 'Zendaya', 'A.', 'Coleman', 'zendaya.c@example.com'),
( 20, 'Natalie', NULL, 'Portman', 'natalie.portman@example.com');

-- Insert Sample Data for CustomerContactDetail_tbl
INSERT INTO CustomerContactDetail_tbl (CustomerID, ContactNumber) VALUES
(1, '555-1010'), (1, '555-1011'),
(2, '555-2020'), (3, '555-3030'),
(4, '555-4040'), (5, '555-5050'),
(6, '555-6060'), (7, '555-7070'),
(8, '555-8080'), (9, '555-9090');

-- Insert Sample Data for Reservation_tbl
INSERT INTO Reservation_tbl (NumberOfGuests, RestaurantLocationID, CustomerID) VALUES
(4, 1, 1), (2, 2, 2), (5, 3, 3), (6, 4, 4), (3, 5, 5),
(8, 6, 6), (7, 7, 7), (4, 8, 8), (9, 9, 9), (10, 10, 10);

-- Insert Sample Data for Order_tbl
INSERT INTO Order_tbl (OrderDate, TotalAmount, ReservationID) VALUES
('2025-01-01', 150.00, 1), ('2025-01-02', 200.00, 2), ('2025-01-03', 250.00, 3),
('2025-01-04', 300.00, 4), ('2025-01-05', 350.00, 5), ('2025-01-06', 400.00, 6),
('2025-01-07', 450.00, 7), ('2025-01-08', 500.00, 8), ('2025-01-09', 550.00, 9),
('2025-01-10', 600.00, 10);

-- Insert Sample Data for Menu_tbl
INSERT INTO Menu_tbl (ItemName, Description, Category, Price) VALUES
('Caesar Salad', 'Crisp romaine lettuce, croutons, and Caesar dressing.', 'Appetizer', 7.99),
('Grilled Chicken', 'Juicy grilled chicken served with vegetables.', 'Main Course', 12.99),
('Chocolate Cake', 'Rich chocolate cake with a molten center.', 'Dessert', 6.99),
('Lemonade', 'Freshly squeezed lemonade.', 'Beverage', 2.99),
('Beef Steak', 'Tender beef steak cooked to your liking.', 'Main Course', 19.99),
('Pasta Primavera', 'Pasta with fresh vegetables in a light sauce.', 'Main Course', 14.99),
('Cheesecake', 'Creamy cheesecake with a graham cracker crust.', 'Dessert', 8.99),
('Iced Tea', 'Refreshing iced tea.', 'Beverage', 2.49),
('Shrimp Cocktail', 'Chilled shrimp with cocktail sauce.', 'Appetizer', 10.99),
('Veggie Burger', 'Grilled veggie patty with toppings.', 'Main Course', 11.99);

-- Insert Sample Data for OrderDetail_tbl
INSERT INTO OrderDetail_tbl (OrderID, MenuItemID, Quantity) VALUES
(1, 1, 2), (1, 3, 1), (2, 4, 3), (2, 2, 2), (3, 5, 1),
(3, 6, 2), (4, 7, 1), (4, 8, 2), (5, 9, 1), (5, 10, 3);

INSERT INTO Inventory_tbl (IngredientName, CurrentStock, ReorderLevel, LastUpdated) VALUES
('Lettuce', 50, 10, '2025-01-01'),
('Chicken', 30, 5, '2025-01-02'),
('Chocolate', 20, 5, '2025-01-03'),
('Lemons', 40, 10, '2025-01-04'),
('Beef', 25, 8, '2025-01-05'),
('Pasta', 60, 15, '2025-01-06'),
('Cheese', 45, 10, '2025-01-07'),
('Tea Leaves', 35, 5, '2025-01-08'),
('Shrimp', 20, 5, '2025-01-09'),
('Buns', 50, 10, '2025-01-10');

-- Insert Sample Data for MenuIngredient_tbl
INSERT INTO MenuIngredient_tbl (MenuItemID, IngredientName, QuantityUsedPerItem, InventoryID) VALUES
(1, 'Lettuce', 1, 1), (1, 'Croutons', 1, 2),
(2, 'Chicken', 1, 2), (3, 'Chocolate', 2, 3),
(4, 'Lemons', 3, 4), (5, 'Beef', 1, 5),
(6, 'Pasta', 1, 6), (6, 'Cheese', 1, 7),
(7, 'Cheese', 2, 7), (8, 'Tea Leaves', 1, 8);

-- Insert Sample Data for Employee_tbl
INSERT INTO Employee_tbl (FirstName, MidName, LastName, Salary, JobRole, LocationID) VALUES
('John', 'A.', 'Smith', 50000.00, 'Manager', 1),
('Emily', 'B.', 'Johnson', 45000.00, 'Chef', 2),
('Robert', 'C.', 'Williams', 40000.00, 'Waiter', 3),
('Anna', 'D.', 'Brown', 42000.00, 'Cashier', 4),
('James', 'E.', 'Jones', 48000.00, 'Supervisor', 5),
('Sophia', 'F.', 'Garcia', 46000.00, 'Host', 6),
('Michael', 'G.', 'Martinez', 55000.00, 'Manager', 7),
('Linda', 'H.', 'Clark', 43000.00, 'Technician', 8),
('David', 'I.', 'Lopez', 47000.00, 'Assistant', 9),
('Sarah', 'J.', 'Hall', 52000.00, 'Coordinator', 10);

-- Insert Sample Data for DiscountType_tbl
INSERT INTO DiscountType_tbl (DiscountType) VALUES
('Percentage'), ('Fixed Amount');

-- Insert Sample Data for Discount_tbl
INSERT INTO Discount_tbl (DiscountTypeID, DiscountValue, ApplicableTo, ValidFrom, ValidTo, OrderID) VALUES
(1, 10.00, 'All Items', '2025-01-01', '2025-01-31', 1),
(2, 5.00, 'Main Course', '2025-01-01', '2025-01-15', 2),
(1, 15.00, 'Desserts', '2025-01-10', '2025-02-10', 3),
(2, 7.50, 'Appetizers', '2025-01-05', '2025-01-20', 4),
(1, 20.00, 'Beverages', '2025-01-15', '2025-02-15', 5),
(1, 25.00, 'All Items', '2025-02-01', '2025-02-28', 6),
(2, 8.00, 'Main Course', '2025-01-20', '2025-02-10', 7),
(1, 12.00, 'Desserts', '2025-01-25', '2025-02-25', 8),
(2, 6.00, 'Appetizers', '2025-02-01', '2025-02-15', 9),
(1, 18.00, 'Beverages', '2025-02-05', '2025-02-28', 10);

-- Insert Sample Data for OrderDiscount_tbl
INSERT INTO OrderDiscount_tbl (OrderID, DiscountID) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
(6, 6), (7, 7), (8, 8), (9, 9), (10, 10);

-- Insert Sample Data for Supplier_tbl
INSERT INTO Supplier_tbl (FullName, AddLine1, AddLine2, City) VALUES
('Fresh Produce Co.', '123 Farm Lane', NULL, 'Ruralville'),
('Seafood Suppliers Inc.', '456 Ocean St.', NULL, 'Harbor City'),
('Dairy Distributors', '789 Milk Way', 'Suite A', 'DairyTown'),
('Meat Masters', '101 Steak Ave.', NULL, 'Meatropolis'),
('Baking Essentials', '202 Flour Rd.', 'Building B', 'Bakerville'),
('Spice Traders', '303 Spice Blvd.', 'Suite 300', 'Spice City'),
('Tea Importers', '404 Leaf Ln.', NULL, 'TeaTown'),
('Cheese Works', '505 Cheese St.', 'Floor 2', 'Cheeseville'),
('Fruit World', '606 Orchard Dr.', NULL, 'Fruitopia'),
('Veggie Market', '707 Greenhouse Ln.', 'Unit 7', 'VeggieVille');

-- Insert Sample Data for SupplierContact
INSERT INTO SupplierContact (SupplierID, ContactNo) VALUES
(1, '555-1234'), (2, '555-5678'), (3, '555-8765'),
(4, '555-4321'), (5, '555-2222'), (6, '555-3333'),
(7, '555-4444'), (8, '555-5555'), (9, '555-6666'), (10, '555-7777');

-- Insert Sample Data for SupplierMenuIngredient_tbl
INSERT INTO SupplierMenuIngredient_tbl (SupplierID, IngredientName, QuantitySupplied) VALUES
(1, 'Lettuce', 100), (2, 'Shrimp', 50), (3, 'Cheese', 200),
(4, 'Beef', 80), (5, 'Flour', 150), (6, 'Spices', 100),
(7, 'Tea Leaves', 120), (8, 'Cheese', 150), (9, 'Apples', 100),
(10, 'Carrots', 200);

-- Insert Sample Data for SalesTransaction_tbl
INSERT INTO SalesTransaction_tbl (SaleDate, TotalRevenue) VALUES
('2025-01-01', 1000.00), ('2025-01-02', 1500.00), ('2025-01-03', 1200.00),
('2025-01-04', 1300.00), ('2025-01-05', 1100.00), ('2025-01-06', 1600.00),
('2025-01-07', 1400.00), ('2025-01-08', 1700.00), ('2025-01-09', 1250.00),
('2025-01-10', 1350.00);

-- Insert Sample Data for PaymentType_tbl
INSERT INTO PaymentType_tbl (PaymentType) VALUES
('Cash'), ('Credit Card'), ('Debit Card'), ('Mobile Payment'), ('Gift Card'),
('Bank Transfer'), ('Cryptocurrency'), ('Prepaid Card'), ('Check'), ('PayPal');

-- Insert Sample Data for SalesDetail_tbl
INSERT INTO SalesDetail_tbl (SalesID, MenuItemID, QuantitySold, PaymentTypeID) VALUES
(1, 1, 2, 1), (2, 3, 1, 2), (3, 4, 3, 3), (4, 2, 2, 4),
(5, 5, 1, 5), (6, 6, 2, 6), (7, 7, 1, 7), (8, 8, 2, 8),
(9, 9, 1, 9), (10, 10, 3, 10);

-- Insert Sample Data for ReportType_tbl
INSERT INTO ReportType_tbl (ReportType) VALUES
('Sales Report'), ('Inventory Report'), ('Reservation Report'), ('Customer Feedback'),
('Employee Performance'), ('Daily Summary'), ('Monthly Summary'), ('Annual Summary'),
('Custom Report'), ('Manager Report');

-- Insert Sample Data for Report_tbl
INSERT INTO Report_tbl (ReportTypeID, GeneratedBy, DateGenerated, Content) VALUES
(1, 1, '2025-01-01', 'Daily sales report.'), (2, 2, '2025-01-02', 'Inventory update.'),
(3, 3, '2025-01-03', 'Reservation statistics.'), (4, 4, '2025-01-04', 'Customer feedback overview.'),
(5, 5, '2025-01-05', 'Employee performance metrics.'), (6, 6, '2025-01-06', 'Daily summary.'),
(7, 7, '2025-01-07', 'Monthly sales summary.'), (8, 8, '2025-01-08', 'Annual review.'),
(9, 9, '2025-01-09', 'Custom data analysis.'), (10, 10, '2025-01-10', 'Manager summary report.');
