-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: restaurant_db
-- ------------------------------------------------------
-- Server version	9.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admindetail_tbl`
--

DROP TABLE IF EXISTS `admindetail_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admindetail_tbl` (
  `AdminDetailID` int NOT NULL AUTO_INCREMENT,
  `UserID` int DEFAULT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `MidName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Position` varchar(50) DEFAULT NULL,
  `LocationID` int DEFAULT NULL,
  PRIMARY KEY (`AdminDetailID`),
  KEY `LocationID` (`LocationID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `admindetail_tbl_ibfk_1` FOREIGN KEY (`LocationID`) REFERENCES `restaurantlocation_tbl` (`LocationID`),
  CONSTRAINT `admindetail_tbl_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `user_tbl` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admindetail_tbl`
--

LOCK TABLES `admindetail_tbl` WRITE;
/*!40000 ALTER TABLE `admindetail_tbl` DISABLE KEYS */;
INSERT INTO `admindetail_tbl` VALUES (1,1,'John','A.','Doe','General Manager',1),(2,2,'Jane','B.','Smith','Branch Manager',2),(3,3,'Mike',NULL,'Brown','Head Chef',3),(4,4,'Amy','C.','White','Shift Supervisor',4),(5,5,'Tom',NULL,'Hanks','Head Cashier',5),(6,6,'Sara','E.','Taylor','Operations Manager',6),(7,7,'Ella','F.','Green','Front Desk Manager',7),(8,8,'Jim',NULL,'Black','Assistant Manager',8),(9,9,'Sam','G.','Gray','Technical Lead',9),(10,10,'Lee',NULL,'Clark','Logistics Manager',10);
/*!40000 ALTER TABLE `admindetail_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customercontactdetail_tbl`
--

DROP TABLE IF EXISTS `customercontactdetail_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customercontactdetail_tbl` (
  `RecID` int NOT NULL AUTO_INCREMENT,
  `CustomerID` int DEFAULT NULL,
  `ContactNumber` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`RecID`),
  KEY `CustomerID` (`CustomerID`),
  CONSTRAINT `customercontactdetail_tbl_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customerdetail_tbl` (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customercontactdetail_tbl`
--

LOCK TABLES `customercontactdetail_tbl` WRITE;
/*!40000 ALTER TABLE `customercontactdetail_tbl` DISABLE KEYS */;
INSERT INTO `customercontactdetail_tbl` VALUES (1,1,'555-1010'),(2,1,'555-1011'),(3,2,'555-2020'),(4,3,'555-3030'),(5,4,'555-4040'),(6,5,'555-5050'),(7,6,'555-6060'),(8,7,'555-7070'),(9,8,'555-8080'),(10,9,'555-9090');
/*!40000 ALTER TABLE `customercontactdetail_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customerdetail_tbl`
--

DROP TABLE IF EXISTS `customerdetail_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerdetail_tbl` (
  `CustomerID` int NOT NULL AUTO_INCREMENT,
  `UserID` int DEFAULT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `MidName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `customerdetail_tbl_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user_tbl` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerdetail_tbl`
--

LOCK TABLES `customerdetail_tbl` WRITE;
/*!40000 ALTER TABLE `customerdetail_tbl` DISABLE KEYS */;
INSERT INTO `customerdetail_tbl` VALUES (1,11,'Emily','H.','Stone','emily.stone@example.com'),(2,12,'Chris','M.','Evans','chris.evans@example.com'),(3,13,'Anna','B.','Hathaway','anna.hathaway@example.com'),(4,14,'Robert',NULL,'Downey','robert.downey@example.com'),(5,15,'Scarlett','J.','Johansson','scarlett.j@example.com'),(6,16,'Tom',NULL,'Holland','tom.holland@example.com'),(7,17,'Benedict','C.','Cumberbatch','benedict.c@example.com'),(8,18,'Mark',NULL,'Ruffalo','mark.ruffalo@example.com'),(9,19,'Zendaya','A.','Coleman','zendaya.c@example.com'),(10,20,'Natalie',NULL,'Portman','natalie.portman@example.com');
/*!40000 ALTER TABLE `customerdetail_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount_tbl`
--

DROP TABLE IF EXISTS `discount_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discount_tbl` (
  `DiscountID` int NOT NULL AUTO_INCREMENT,
  `DiscountTypeID` varchar(20) DEFAULT NULL,
  `DiscountValue` decimal(6,2) DEFAULT NULL,
  `ApplicableTo` varchar(50) DEFAULT NULL,
  `ValidFrom` date DEFAULT NULL,
  `ValidTo` date DEFAULT NULL,
  `OrderID` int DEFAULT NULL,
  PRIMARY KEY (`DiscountID`),
  KEY `OrderID` (`OrderID`),
  CONSTRAINT `discount_tbl_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `order_tbl` (`OrderID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount_tbl`
--

LOCK TABLES `discount_tbl` WRITE;
/*!40000 ALTER TABLE `discount_tbl` DISABLE KEYS */;
INSERT INTO `discount_tbl` VALUES (1,'1',10.00,'All Items','2025-01-01','2025-01-31',1),(2,'2',5.00,'Main Course','2025-01-01','2025-01-15',2),(3,'1',15.00,'Desserts','2025-01-10','2025-02-10',3),(4,'2',7.50,'Appetizers','2025-01-05','2025-01-20',4),(5,'1',20.00,'Beverages','2025-01-15','2025-02-15',5),(6,'1',25.00,'All Items','2025-02-01','2025-02-28',6),(7,'2',8.00,'Main Course','2025-01-20','2025-02-10',7),(8,'1',12.00,'Desserts','2025-01-25','2025-02-25',8),(9,'2',6.00,'Appetizers','2025-02-01','2025-02-15',9),(10,'1',18.00,'Beverages','2025-02-05','2025-02-28',10);
/*!40000 ALTER TABLE `discount_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discounttype_tbl`
--

DROP TABLE IF EXISTS `discounttype_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discounttype_tbl` (
  `DiscountTypeID` int NOT NULL AUTO_INCREMENT,
  `DiscountType` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`DiscountTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discounttype_tbl`
--

LOCK TABLES `discounttype_tbl` WRITE;
/*!40000 ALTER TABLE `discounttype_tbl` DISABLE KEYS */;
INSERT INTO `discounttype_tbl` VALUES (1,'Percentage'),(2,'Fixed Amount');
/*!40000 ALTER TABLE `discounttype_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_tbl`
--

DROP TABLE IF EXISTS `employee_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_tbl` (
  `EmployeeID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) DEFAULT NULL,
  `MidName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Salary` decimal(10,2) DEFAULT NULL,
  `JobRole` varchar(50) DEFAULT NULL,
  `LocationID` int DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`),
  KEY `LocationID` (`LocationID`),
  CONSTRAINT `employee_tbl_ibfk_1` FOREIGN KEY (`LocationID`) REFERENCES `restaurantlocation_tbl` (`LocationID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_tbl`
--

LOCK TABLES `employee_tbl` WRITE;
/*!40000 ALTER TABLE `employee_tbl` DISABLE KEYS */;
INSERT INTO `employee_tbl` VALUES (1,'John','A.','Smith',50000.00,'Manager',1),(2,'Emily','B.','Johnson',45000.00,'Chef',2),(3,'Robert','C.','Williams',40000.00,'Waiter',3),(4,'Anna','D.','Brown',42000.00,'Cashier',4),(5,'James','E.','Jones',48000.00,'Supervisor',5),(6,'Sophia','F.','Garcia',46000.00,'Host',6),(7,'Michael','G.','Martinez',55000.00,'Manager',7),(8,'Linda','H.','Clark',43000.00,'Technician',8),(9,'David','I.','Lopez',47000.00,'Assistant',9),(10,'Sarah','J.','Hall',52000.00,'Coordinator',10);
/*!40000 ALTER TABLE `employee_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_tbl`
--

DROP TABLE IF EXISTS `inventory_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory_tbl` (
  `InventoryID` int NOT NULL AUTO_INCREMENT,
  `IngredientName` varchar(100) DEFAULT NULL,
  `CurrentStock` int DEFAULT NULL,
  `ReorderLevel` int DEFAULT NULL,
  `LastUpdated` date DEFAULT NULL,
  PRIMARY KEY (`InventoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_tbl`
--

LOCK TABLES `inventory_tbl` WRITE;
/*!40000 ALTER TABLE `inventory_tbl` DISABLE KEYS */;
INSERT INTO `inventory_tbl` VALUES (1,'Lettuce',50,10,'2025-01-01'),(2,'Chicken',30,5,'2025-01-02'),(3,'Chocolate',20,5,'2025-01-03'),(4,'Lemons',40,10,'2025-01-04'),(5,'Beef',25,8,'2025-01-05'),(6,'Pasta',60,15,'2025-01-06'),(7,'Cheese',45,10,'2025-01-07'),(8,'Tea Leaves',35,5,'2025-01-08'),(9,'Shrimp',20,5,'2025-01-09'),(10,'Buns',50,10,'2025-01-10');
/*!40000 ALTER TABLE `inventory_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_tbl`
--

DROP TABLE IF EXISTS `menu_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_tbl` (
  `MenuItemID` int NOT NULL AUTO_INCREMENT,
  `ItemName` varchar(100) DEFAULT NULL,
  `Description` text,
  `Category` varchar(50) DEFAULT NULL,
  `Price` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`MenuItemID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_tbl`
--

LOCK TABLES `menu_tbl` WRITE;
/*!40000 ALTER TABLE `menu_tbl` DISABLE KEYS */;
INSERT INTO `menu_tbl` VALUES (1,'Caesar Salad','Crisp romaine lettuce, croutons, and Caesar dressing.','Appetizer',7.99),(2,'Grilled Chicken','Juicy grilled chicken served with vegetables.','Main Course',12.99),(3,'Chocolate Cake','Rich chocolate cake with a molten center.','Dessert',6.99),(4,'Lemonade','Freshly squeezed lemonade.','Beverage',2.99),(5,'Beef Steak','Tender beef steak cooked to your liking.','Main Course',19.99),(6,'Pasta Primavera','Pasta with fresh vegetables in a light sauce.','Main Course',14.99),(7,'Cheesecake','Creamy cheesecake with a graham cracker crust.','Dessert',8.99),(8,'Iced Tea','Refreshing iced tea.','Beverage',2.49),(9,'Shrimp Cocktail','Chilled shrimp with cocktail sauce.','Appetizer',10.99),(10,'Veggie Burger','Grilled veggie patty with toppings.','Main Course',11.99);
/*!40000 ALTER TABLE `menu_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menuingredient_tbl`
--

DROP TABLE IF EXISTS `menuingredient_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menuingredient_tbl` (
  `MenuIngredientID` int NOT NULL AUTO_INCREMENT,
  `MenuItemID` int DEFAULT NULL,
  `IngredientName` varchar(100) DEFAULT NULL,
  `QuantityUsedPerItem` int DEFAULT NULL,
  `InventoryID` int DEFAULT NULL,
  PRIMARY KEY (`MenuIngredientID`),
  KEY `MenuItemID` (`MenuItemID`),
  KEY `InventoryID` (`InventoryID`),
  CONSTRAINT `menuingredient_tbl_ibfk_1` FOREIGN KEY (`MenuItemID`) REFERENCES `menu_tbl` (`MenuItemID`),
  CONSTRAINT `menuingredient_tbl_ibfk_2` FOREIGN KEY (`InventoryID`) REFERENCES `inventory_tbl` (`InventoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menuingredient_tbl`
--

LOCK TABLES `menuingredient_tbl` WRITE;
/*!40000 ALTER TABLE `menuingredient_tbl` DISABLE KEYS */;
INSERT INTO `menuingredient_tbl` VALUES (1,1,'Lettuce',1,1),(2,1,'Croutons',1,2),(3,2,'Chicken',1,2),(4,3,'Chocolate',2,3),(5,4,'Lemons',3,4),(6,5,'Beef',1,5),(7,6,'Pasta',1,6),(8,6,'Cheese',1,7),(9,7,'Cheese',2,7),(10,8,'Tea Leaves',1,8);
/*!40000 ALTER TABLE `menuingredient_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_tbl`
--

DROP TABLE IF EXISTS `order_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_tbl` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `OrderDate` date DEFAULT NULL,
  `TotalAmount` decimal(10,2) DEFAULT NULL,
  `ReservationID` int DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `ReservationID` (`ReservationID`),
  CONSTRAINT `order_tbl_ibfk_1` FOREIGN KEY (`ReservationID`) REFERENCES `reservation_tbl` (`ReservationID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_tbl`
--

LOCK TABLES `order_tbl` WRITE;
/*!40000 ALTER TABLE `order_tbl` DISABLE KEYS */;
INSERT INTO `order_tbl` VALUES (1,'2025-01-01',150.00,1),(2,'2025-01-02',200.00,2),(3,'2025-01-03',250.00,3),(4,'2025-01-04',300.00,4),(5,'2025-01-05',350.00,5),(6,'2025-01-06',400.00,6),(7,'2025-01-07',450.00,7),(8,'2025-01-08',500.00,8),(9,'2025-01-09',550.00,9),(10,'2025-01-10',600.00,10);
/*!40000 ALTER TABLE `order_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetail_tbl`
--

DROP TABLE IF EXISTS `orderdetail_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetail_tbl` (
  `OrderDetailID` int NOT NULL AUTO_INCREMENT,
  `OrderID` int DEFAULT NULL,
  `MenuItemID` int DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  PRIMARY KEY (`OrderDetailID`),
  KEY `OrderID` (`OrderID`),
  KEY `MenuItemID` (`MenuItemID`),
  CONSTRAINT `orderdetail_tbl_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `order_tbl` (`OrderID`),
  CONSTRAINT `orderdetail_tbl_ibfk_2` FOREIGN KEY (`MenuItemID`) REFERENCES `menu_tbl` (`MenuItemID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetail_tbl`
--

LOCK TABLES `orderdetail_tbl` WRITE;
/*!40000 ALTER TABLE `orderdetail_tbl` DISABLE KEYS */;
INSERT INTO `orderdetail_tbl` VALUES (1,1,1,2),(2,1,3,1),(3,2,4,3),(4,2,2,2),(5,3,5,1),(6,3,6,2),(7,4,7,1),(8,4,8,2),(9,5,9,1),(10,5,10,3);
/*!40000 ALTER TABLE `orderdetail_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdiscount_tbl`
--

DROP TABLE IF EXISTS `orderdiscount_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdiscount_tbl` (
  `OrderID` int NOT NULL,
  `DiscountID` int NOT NULL,
  PRIMARY KEY (`OrderID`,`DiscountID`),
  KEY `DiscountID` (`DiscountID`),
  CONSTRAINT `orderdiscount_tbl_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `order_tbl` (`OrderID`),
  CONSTRAINT `orderdiscount_tbl_ibfk_2` FOREIGN KEY (`DiscountID`) REFERENCES `discount_tbl` (`DiscountID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdiscount_tbl`
--

LOCK TABLES `orderdiscount_tbl` WRITE;
/*!40000 ALTER TABLE `orderdiscount_tbl` DISABLE KEYS */;
INSERT INTO `orderdiscount_tbl` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);
/*!40000 ALTER TABLE `orderdiscount_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymenttype_tbl`
--

DROP TABLE IF EXISTS `paymenttype_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paymenttype_tbl` (
  `PaymentTypeID` int NOT NULL AUTO_INCREMENT,
  `PaymentType` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`PaymentTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymenttype_tbl`
--

LOCK TABLES `paymenttype_tbl` WRITE;
/*!40000 ALTER TABLE `paymenttype_tbl` DISABLE KEYS */;
INSERT INTO `paymenttype_tbl` VALUES (1,'Cash'),(2,'Credit Card'),(3,'Debit Card'),(4,'Mobile Payment'),(5,'Gift Card'),(6,'Bank Transfer'),(7,'Cryptocurrency'),(8,'Prepaid Card'),(9,'Check'),(10,'PayPal');
/*!40000 ALTER TABLE `paymenttype_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_tbl`
--

DROP TABLE IF EXISTS `report_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report_tbl` (
  `ReportID` int NOT NULL AUTO_INCREMENT,
  `ReportTypeID` int DEFAULT NULL,
  `GeneratedBy` int DEFAULT NULL,
  `DateGenerated` date DEFAULT NULL,
  `Content` text,
  PRIMARY KEY (`ReportID`),
  KEY `ReportTypeID` (`ReportTypeID`),
  CONSTRAINT `report_tbl_ibfk_1` FOREIGN KEY (`ReportTypeID`) REFERENCES `reporttype_tbl` (`ReportTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_tbl`
--

LOCK TABLES `report_tbl` WRITE;
/*!40000 ALTER TABLE `report_tbl` DISABLE KEYS */;
INSERT INTO `report_tbl` VALUES (1,1,1,'2025-01-01','Daily sales report.'),(2,2,2,'2025-01-02','Inventory update.'),(3,3,3,'2025-01-03','Reservation statistics.'),(4,4,4,'2025-01-04','Customer feedback overview.'),(5,5,5,'2025-01-05','Employee performance metrics.'),(6,6,6,'2025-01-06','Daily summary.'),(7,7,7,'2025-01-07','Monthly sales summary.'),(8,8,8,'2025-01-08','Annual review.'),(9,9,9,'2025-01-09','Custom data analysis.'),(10,10,10,'2025-01-10','Manager summary report.');
/*!40000 ALTER TABLE `report_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reporttype_tbl`
--

DROP TABLE IF EXISTS `reporttype_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reporttype_tbl` (
  `ReportTypeID` int NOT NULL AUTO_INCREMENT,
  `ReportType` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ReportTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reporttype_tbl`
--

LOCK TABLES `reporttype_tbl` WRITE;
/*!40000 ALTER TABLE `reporttype_tbl` DISABLE KEYS */;
INSERT INTO `reporttype_tbl` VALUES (1,'Sales Report'),(2,'Inventory Report'),(3,'Reservation Report'),(4,'Customer Feedback'),(5,'Employee Performance'),(6,'Daily Summary'),(7,'Monthly Summary'),(8,'Annual Summary'),(9,'Custom Report'),(10,'Manager Report');
/*!40000 ALTER TABLE `reporttype_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation_tbl`
--

DROP TABLE IF EXISTS `reservation_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation_tbl` (
  `ReservationID` int NOT NULL AUTO_INCREMENT,
  `NumberOfGuests` int DEFAULT NULL,
  `RestaurantLocationID` int DEFAULT NULL,
  `CustomerID` int DEFAULT NULL,
  PRIMARY KEY (`ReservationID`),
  KEY `RestaurantLocationID` (`RestaurantLocationID`),
  KEY `CustomerID` (`CustomerID`),
  CONSTRAINT `reservation_tbl_ibfk_1` FOREIGN KEY (`RestaurantLocationID`) REFERENCES `restaurantlocation_tbl` (`LocationID`),
  CONSTRAINT `reservation_tbl_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `customerdetail_tbl` (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation_tbl`
--

LOCK TABLES `reservation_tbl` WRITE;
/*!40000 ALTER TABLE `reservation_tbl` DISABLE KEYS */;
INSERT INTO `reservation_tbl` VALUES (1,4,1,1),(2,2,2,2),(3,5,3,3),(4,6,4,4),(5,3,5,5),(6,8,6,6),(7,7,7,7),(8,4,8,8),(9,9,9,9),(10,10,10,10);
/*!40000 ALTER TABLE `reservation_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resloccontact_tbl`
--

DROP TABLE IF EXISTS `resloccontact_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resloccontact_tbl` (
  `ContactID` int NOT NULL AUTO_INCREMENT,
  `LocationID` int DEFAULT NULL,
  `ContactNo` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ContactID`),
  KEY `LocationID` (`LocationID`),
  CONSTRAINT `resloccontact_tbl_ibfk_1` FOREIGN KEY (`LocationID`) REFERENCES `restaurantlocation_tbl` (`LocationID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resloccontact_tbl`
--

LOCK TABLES `resloccontact_tbl` WRITE;
/*!40000 ALTER TABLE `resloccontact_tbl` DISABLE KEYS */;
INSERT INTO `resloccontact_tbl` VALUES (1,1,'555-1234'),(2,1,'555-5678'),(3,2,'555-8765'),(4,3,'555-4321'),(5,4,'555-2222'),(6,5,'555-3333'),(7,6,'555-4444'),(8,7,'555-5555'),(9,8,'555-6666'),(10,9,'555-7777');
/*!40000 ALTER TABLE `resloccontact_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurantlocation_tbl`
--

DROP TABLE IF EXISTS `restaurantlocation_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurantlocation_tbl` (
  `LocationID` int NOT NULL AUTO_INCREMENT,
  `LocationName` varchar(100) DEFAULT NULL,
  `AddLine1` varchar(100) DEFAULT NULL,
  `AddLine2` varchar(100) DEFAULT NULL,
  `AddLine3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`LocationID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurantlocation_tbl`
--

LOCK TABLES `restaurantlocation_tbl` WRITE;
/*!40000 ALTER TABLE `restaurantlocation_tbl` DISABLE KEYS */;
INSERT INTO `restaurantlocation_tbl` VALUES (1,'Downtown','123 Main St.','Suite 200','City Center'),(2,'Uptown','456 High St.',NULL,'Suburb'),(3,'Midtown','789 Elm St.','Building B','MidCity'),(4,'Harbor','101 Ocean Dr.',NULL,'HarborView'),(5,'Airport','202 Sky Way','Terminal 1','AirCity'),(6,'Mall','303 Mall Blvd.','Floor 3','ShoppingDistrict'),(7,'Old Town','404 Market St.',NULL,'HistoricalArea'),(8,'University','505 Campus Rd.',NULL,'CollegeTown'),(9,'TechPark','606 Innovation Dr.','Suite 100','TechCity'),(10,'Beach','707 Shoreline Ave.','Cabana 5','Seaside');
/*!40000 ALTER TABLE `restaurantlocation_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesdetail_tbl`
--

DROP TABLE IF EXISTS `salesdetail_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salesdetail_tbl` (
  `SaleDetailID` int NOT NULL AUTO_INCREMENT,
  `SalesID` int DEFAULT NULL,
  `MenuItemID` int DEFAULT NULL,
  `QuantitySold` int DEFAULT NULL,
  `PaymentTypeID` int DEFAULT NULL,
  PRIMARY KEY (`SaleDetailID`),
  KEY `SalesID` (`SalesID`),
  KEY `MenuItemID` (`MenuItemID`),
  KEY `PaymentTypeID` (`PaymentTypeID`),
  CONSTRAINT `salesdetail_tbl_ibfk_1` FOREIGN KEY (`SalesID`) REFERENCES `salestransaction_tbl` (`SalesID`),
  CONSTRAINT `salesdetail_tbl_ibfk_2` FOREIGN KEY (`MenuItemID`) REFERENCES `menu_tbl` (`MenuItemID`),
  CONSTRAINT `salesdetail_tbl_ibfk_3` FOREIGN KEY (`PaymentTypeID`) REFERENCES `paymenttype_tbl` (`PaymentTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesdetail_tbl`
--

LOCK TABLES `salesdetail_tbl` WRITE;
/*!40000 ALTER TABLE `salesdetail_tbl` DISABLE KEYS */;
INSERT INTO `salesdetail_tbl` VALUES (1,1,1,2,1),(2,2,3,1,2),(3,3,4,3,3),(4,4,2,2,4),(5,5,5,1,5),(6,6,6,2,6),(7,7,7,1,7),(8,8,8,2,8),(9,9,9,1,9),(10,10,10,3,10);
/*!40000 ALTER TABLE `salesdetail_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salestransaction_tbl`
--

DROP TABLE IF EXISTS `salestransaction_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salestransaction_tbl` (
  `SalesID` int NOT NULL AUTO_INCREMENT,
  `SaleDate` date DEFAULT NULL,
  `TotalRevenue` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`SalesID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salestransaction_tbl`
--

LOCK TABLES `salestransaction_tbl` WRITE;
/*!40000 ALTER TABLE `salestransaction_tbl` DISABLE KEYS */;
INSERT INTO `salestransaction_tbl` VALUES (1,'2025-01-01',1000.00),(2,'2025-01-02',1500.00),(3,'2025-01-03',1200.00),(4,'2025-01-04',1300.00),(5,'2025-01-05',1100.00),(6,'2025-01-06',1600.00),(7,'2025-01-07',1400.00),(8,'2025-01-08',1700.00),(9,'2025-01-09',1250.00),(10,'2025-01-10',1350.00);
/*!40000 ALTER TABLE `salestransaction_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier_tbl`
--

DROP TABLE IF EXISTS `supplier_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier_tbl` (
  `SupplierID` int NOT NULL AUTO_INCREMENT,
  `FullName` varchar(100) DEFAULT NULL,
  `AddLine1` varchar(100) DEFAULT NULL,
  `AddLine2` varchar(100) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`SupplierID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_tbl`
--

LOCK TABLES `supplier_tbl` WRITE;
/*!40000 ALTER TABLE `supplier_tbl` DISABLE KEYS */;
INSERT INTO `supplier_tbl` VALUES (1,'Fresh Produce Co.','123 Farm Lane',NULL,'Ruralville'),(2,'Seafood Suppliers Inc.','456 Ocean St.',NULL,'Harbor City'),(3,'Dairy Distributors','789 Milk Way','Suite A','DairyTown'),(4,'Meat Masters','101 Steak Ave.',NULL,'Meatropolis'),(5,'Baking Essentials','202 Flour Rd.','Building B','Bakerville'),(6,'Spice Traders','303 Spice Blvd.','Suite 300','Spice City'),(7,'Tea Importers','404 Leaf Ln.',NULL,'TeaTown'),(8,'Cheese Works','505 Cheese St.','Floor 2','Cheeseville'),(9,'Fruit World','606 Orchard Dr.',NULL,'Fruitopia'),(10,'Veggie Market','707 Greenhouse Ln.','Unit 7','VeggieVille');
/*!40000 ALTER TABLE `supplier_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliercontact`
--

DROP TABLE IF EXISTS `suppliercontact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliercontact` (
  `SupContactID` int NOT NULL AUTO_INCREMENT,
  `SupplierID` int DEFAULT NULL,
  `ContactNo` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`SupContactID`),
  KEY `SupplierID` (`SupplierID`),
  CONSTRAINT `suppliercontact_ibfk_1` FOREIGN KEY (`SupplierID`) REFERENCES `supplier_tbl` (`SupplierID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliercontact`
--

LOCK TABLES `suppliercontact` WRITE;
/*!40000 ALTER TABLE `suppliercontact` DISABLE KEYS */;
INSERT INTO `suppliercontact` VALUES (1,1,'555-1234'),(2,2,'555-5678'),(3,3,'555-8765'),(4,4,'555-4321'),(5,5,'555-2222'),(6,6,'555-3333'),(7,7,'555-4444'),(8,8,'555-5555'),(9,9,'555-6666'),(10,10,'555-7777');
/*!40000 ALTER TABLE `suppliercontact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliermenuingredient_tbl`
--

DROP TABLE IF EXISTS `suppliermenuingredient_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliermenuingredient_tbl` (
  `SupplierMenuIngredientID` int NOT NULL AUTO_INCREMENT,
  `SupplierID` int DEFAULT NULL,
  `IngredientName` varchar(100) DEFAULT NULL,
  `QuantitySupplied` int DEFAULT NULL,
  PRIMARY KEY (`SupplierMenuIngredientID`),
  KEY `SupplierID` (`SupplierID`),
  CONSTRAINT `suppliermenuingredient_tbl_ibfk_1` FOREIGN KEY (`SupplierID`) REFERENCES `supplier_tbl` (`SupplierID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliermenuingredient_tbl`
--

LOCK TABLES `suppliermenuingredient_tbl` WRITE;
/*!40000 ALTER TABLE `suppliermenuingredient_tbl` DISABLE KEYS */;
INSERT INTO `suppliermenuingredient_tbl` VALUES (1,1,'Lettuce',100),(2,2,'Shrimp',50),(3,3,'Cheese',200),(4,4,'Beef',80),(5,5,'Flour',150),(6,6,'Spices',100),(7,7,'Tea Leaves',120),(8,8,'Cheese',150),(9,9,'Apples',100),(10,10,'Carrots',200);
/*!40000 ALTER TABLE `suppliermenuingredient_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_tbl`
--

DROP TABLE IF EXISTS `user_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_tbl` (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `Username` varchar(50) DEFAULT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `MidName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `Role` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_tbl`
--

LOCK TABLES `user_tbl` WRITE;
/*!40000 ALTER TABLE `user_tbl` DISABLE KEYS */;
INSERT INTO `user_tbl` VALUES (1,'admin_john','John','A.','Doe','240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9','Admin'),(2,'manager_jane','Jane','B.','Smith','4682ac63f25bf51e92fc3b6e3033d29c4f6ccee77ae5a6543e4aff9698aa6b49','Manager'),(3,'chef_mike','Mike',NULL,'Brown','34092988514969b972e0532777b6d5311eb329f7e5d61892ee21f1abdd1d21f7','Chef'),(4,'waiter_amy','Amy','C.','White','5cb35b005702b50dc50a2c995ef2758aba6fd02e05b3e6c73aaac70ac72b29ad','Waiter'),(5,'cashier_tom','Tom',NULL,'Hanks','c345f89df99da97313be9dedd9b047507355062e5427e1eb606de40b9284b141','Cashier'),(6,'supervisor_sara','Sara','E.','Taylor','eb18fc668ec884cd285e6e615444052c3f4f86d04486a2bcd362348323aa101e','Supervisor'),(7,'host_ella','Ella','F.','Green','ca74c404b980e969af2a6674fd19425f35cb9f1eeb060e5c54d4ab0e61d9e201','Host'),(8,'assistant_jim','Jim',NULL,'Black','29a9aa610ed78e5297c8bafae156df331ee226956a724094db6c35f339dea625','Assistant'),(9,'tech_sam','Sam','G.','Gray','fc59050a54ae411f8f6d91454d13ba9265096e2ad094a85f354c4edd8f2dd93c','Technician'),(10,'driver_lee','Lee',NULL,'Clark','1ee6f7f441dde89e38d4f9272ce4c8b163c8875209ce9b6c32babfd7a7167d58','Driver'),(11,'emily_stone','Emily','H.','Stone','5eda3cda6825004208c8d5fe430304e7c7127058922d9f2d1671389e71fd9222','Customer'),(12,'chris_evans','Chris','M.','Evans','e59ae67897757d1a138a46c1f501ce94321e96aa7ec4445e0e97e94f2ec6c8e1','Customer'),(13,'anna_hathaway','Anna','B.','Hathaway','7f92063f461ca1991c0f734dca11d2c98d30e14f08c0e5a7f8e631eca3bc1b52','Customer'),(14,'robert_downey','Robert',NULL,'Downey','d9d2e736c7be7fa7ce00d33b1d43967436c450d2569f9acdc1e8aa2baff87204','Customer'),(15,'scarlett_johansson','Scarlett','J.','Johansson','290b72ad433dafe2a44158f86c4c83022501bc2402103b280e93a38702bc2878','Customer'),(16,'tom_holland','Tom',NULL,'Holland','bf91df79a0c1db76d19817bf00d30631981b7d11bfb85a821e6527e62542c801','Customer'),(17,'benedict_cumberbatch','Benedict','C.','Cumberbatch','5845e9f0e3eebba6718375247f26d9052108bbf7a189cdcf71e45847765f975b','Customer'),(18,'mark_ruffalo','Mark',NULL,'Ruffalo','43d9423892ab14c9da8388f7036067fa0a15b5663e563f22d3383cfc933c1690','Customer'),(19,'zendaya_coleman','Zendaya','A.','Coleman','f8e0e8501e870d2eaa0c744c5fe1001e78b83a9081d1e743b27e8441598ec259','Customer'),(20,'natalie_portman','Natalie',NULL,'Portman','9bbb591b88679e5131b3509e67bd38390e2f55c4d9df9b67873eae3e5c28c3cc','Customer');
/*!40000 ALTER TABLE `user_tbl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21  1:33:05
