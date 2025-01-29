USE restaurant_db;

-- Restaurant Location Table
CREATE TABLE RestaurantLocation_tbl (
    LocationID INT AUTO_INCREMENT PRIMARY KEY,
    LocationName VARCHAR(100),
    AddLine1 VARCHAR(100),
    AddLine2 VARCHAR(100),
    AddLine3 VARCHAR(100)
);


-- ResLocContact Table
CREATE TABLE ResLocContact_tbl (
    ContactID INT AUTO_INCREMENT PRIMARY KEY,
    LocationID INT,
    ContactNo VARCHAR(15),
    FOREIGN KEY (LocationID) REFERENCES RestaurantLocation_tbl(LocationID)
);

-- User Table
CREATE TABLE User_tbl (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    Username VARCHAR(50),
    FirstName VARCHAR(50),
    MidName VARCHAR(50),
    LastName VARCHAR(50),
    Password VARCHAR(100),
    Role VARCHAR(20)
);

-- Admin Detail Table
CREATE TABLE AdminDetail_tbl (
    AdminDetailID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT,
    FirstName VARCHAR(50),
    MidName VARCHAR(50),
    LastName VARCHAR(50),
    Position VARCHAR(50),
    LocationID INT,
    FOREIGN KEY (LocationID) REFERENCES RestaurantLocation_tbl(LocationID),
    FOREIGN KEY (UserID) REFERENCES User_tbl(UserID)
);

-- CustomerDetail Table
CREATE TABLE CustomerDetail_tbl (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT,
    FirstName VARCHAR(50),
    MidName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    FOREIGN KEY (UserID) REFERENCES User_tbl(UserID)
);

-- Customer Contact Detail Table
CREATE TABLE CustomerContactDetail_tbl (
    RecID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    ContactNumber VARCHAR(15),
    FOREIGN KEY (CustomerID) REFERENCES CustomerDetail_tbl(CustomerID)
);

-- Reservation Table
CREATE TABLE Reservation_tbl (
    ReservationID INT AUTO_INCREMENT PRIMARY KEY,
    NumberOfGuests INT,
    RestaurantLocationID INT,
    CustomerID INT,
    FOREIGN KEY (RestaurantLocationID) REFERENCES RestaurantLocation_tbl(LocationID),
    FOREIGN KEY (CustomerID) REFERENCES CustomerDetail_tbl(CustomerID)
);

-- Order Table
CREATE TABLE Order_tbl (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    ReservationID INT,
    FOREIGN KEY (ReservationID) REFERENCES Reservation_tbl(ReservationID)
);

-- Menu Table
CREATE TABLE Menu_tbl (
    MenuItemID INT AUTO_INCREMENT PRIMARY KEY,
    ItemName VARCHAR(100),
    Description TEXT,
    Category VARCHAR(50),
    Price DECIMAL(6,2)
);

-- Order Detail Table
CREATE TABLE OrderDetail_tbl (
    OrderDetailID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT,
    MenuItemID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Order_tbl(OrderID),
    FOREIGN KEY (MenuItemID) REFERENCES Menu_tbl(MenuItemID)
);

-- Inventory Table
CREATE TABLE Inventory_tbl (
    InventoryID INT AUTO_INCREMENT PRIMARY KEY,
    IngredientName VARCHAR(100),
    CurrentStock INT,
    ReorderLevel INT,
    LastUpdated DATE
);

-- Menu Ingredient Table
CREATE TABLE MenuIngredient_tbl (
    MenuIngredientID INT AUTO_INCREMENT PRIMARY KEY,
    MenuItemID INT,
    IngredientName VARCHAR(100),
    QuantityUsedPerItem INT,
    InventoryID INT,
    FOREIGN KEY (MenuItemID) REFERENCES Menu_tbl(MenuItemID),
    FOREIGN KEY (InventoryID) REFERENCES Inventory_tbl(InventoryID)
);

-- Employee Table
CREATE TABLE Employee_tbl (
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    MidName VARCHAR(50),
    LastName VARCHAR(50),
    Salary DECIMAL(10,2),
    JobRole VARCHAR(50),
    LocationID INT,
    FOREIGN KEY (LocationID) REFERENCES RestaurantLocation_tbl(LocationID)
);


---------------------------------------------
-- Discount Table
CREATE TABLE DiscountType_tbl(

	DiscountTypeID INT AUTO_INCREMENT PRIMARY KEY,
    DiscountType VARCHAR(20)

);
CREATE TABLE Discount_tbl (
    DiscountID INT AUTO_INCREMENT PRIMARY KEY,
    DiscountTypeID VARCHAR(20),
    DiscountValue DECIMAL(6,2),
    ApplicableTo VARCHAR(50),
    ValidFrom DATE,
    ValidTo DATE,
	OrderID INT,
	FOREIGN KEY (OrderID) REFERENCES Order_tbl(OrderID)
);

-- Order Discount Table
CREATE TABLE OrderDiscount_tbl (
    OrderID INT,
    DiscountID INT,
    PRIMARY KEY (OrderID, DiscountID),
    FOREIGN KEY (OrderID) REFERENCES Order_tbl(OrderID),
    FOREIGN KEY (DiscountID) REFERENCES Discount_tbl(DiscountID)
);

-- Supplier Table
CREATE TABLE Supplier_tbl (
    SupplierID INT AUTO_INCREMENT PRIMARY KEY,
    FullName VARCHAR(100),
    AddLine1 VARCHAR(100),
    AddLine2 VARCHAR(100),
    City VARCHAR(50)
);

-- Supplier Contact Table
CREATE TABLE SupplierContact (
    SupContactID INT AUTO_INCREMENT PRIMARY KEY,
    SupplierID INT,
    ContactNo VARCHAR(15),
    FOREIGN KEY (SupplierID) REFERENCES Supplier_tbl(SupplierID)
);

-- Supplier Menu Ingredient Table
CREATE TABLE SupplierMenuIngredient_tbl (
    SupplierMenuIngredientID INT AUTO_INCREMENT PRIMARY KEY,
    SupplierID INT,
    IngredientName VARCHAR(100),
    QuantitySupplied INT,
    FOREIGN KEY (SupplierID) REFERENCES Supplier_tbl(SupplierID)
);

-- Sales Transaction Table
CREATE TABLE SalesTransaction_tbl (
    SalesID INT AUTO_INCREMENT PRIMARY KEY,
    SaleDate DATE,
    TotalRevenue DECIMAL(10,2)
);

-- Payment Type Table
CREATE TABLE PaymentType_tbl (
    PaymentTypeID INT AUTO_INCREMENT PRIMARY KEY,
    PaymentType VARCHAR(50)
);


-- Sales Detail Table
CREATE TABLE SalesDetail_tbl (
    SaleDetailID INT AUTO_INCREMENT PRIMARY KEY,
    SalesID INT,
    MenuItemID INT,
    QuantitySold INT,
    PaymentTypeID INT,
    FOREIGN KEY (SalesID) REFERENCES SalesTransaction_tbl(SalesID),
    FOREIGN KEY (MenuItemID) REFERENCES Menu_tbl(MenuItemID),
    FOREIGN KEY (PaymentTypeID) REFERENCES PaymentType_tbl(PaymentTypeID)
);
-- Report Type Table
CREATE TABLE ReportType_tbl (
    ReportTypeID INT AUTO_INCREMENT PRIMARY KEY,
    ReportType VARCHAR(50)
);

-- Report Tableadmindetail_tbl
CREATE TABLE Report_tbl (
    ReportID INT AUTO_INCREMENT PRIMARY KEY,
    ReportTypeID INT,
    GeneratedBy INT,
    DateGenerated DATE,
    Content TEXT,
    FOREIGN KEY (ReportTypeID) REFERENCES ReportType_tbl(ReportTypeID)
);




