/* -------------------------------------------------------------------------
                            Template File for SQL
  -------------------------------------------------------------------------- */

/* CREATING TABLES */

-- Create Account Table
CREATE TABLE Account 
(
  UserID INT(5) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  UserName VARCHAR(25) NOT NULL,
  Password VARCHAR(18) NOT NULL,
  EmailAddress VARCHAR(30) NOT NULL,
  AccountType ENUM('Member', 'Employee', 'Supervisor') NOT NULL
);

-- Create Member Table
CREATE TABLE Member 
(
  MemberID INT(5) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  MemberName VARCHAR(18) NOT NULL,
  MemberBirthday DATE,
  MemberPhoneNum VARCHAR(15) NOT NULL,
  MemberBillingAddr VARCHAR(50) NOT NULL,
  MemberShippingAddr VARCHAR(50) NOT NULL,
  LoyaltyPoints INT(10),
  PaymentInfo INT(50) NOT NULL,
  UserID INT(5),
  FOREIGN KEY (UserID) REFERENCES Account(UserId)
);

-- Create Employee Table
CREATE TABLE Employee 
(
  EmployeeID INT(5) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  EmpName VARCHAR(18) NOT NULL,
  EmpSSN VARCHAR(15) NOT NULL,
  EmpPhoneNum VARCHAR(15) NOT NULL,
  EmpClockedHours DECIMAL(3,2),
  EmpHourlyWage DECIMAL(10,2) NOT NULL,
  UserID INT(5) NOT NULL,
  DepartmentID INT(5) NOT NULL,
  FOREIGN KEY (UserID) REFERENCES Account(UserId),
  FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

-- Create Supervisor Table
CREATE TABLE Supervisor 
(
  SupervisorID INT(5) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  DepartmentID INT(5) NOT NULL,
  UserID INT(5) NOT NULL,
  FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID),
  FOREIGN KEY (UserID) REFERENCES Account(UserId)
);

-- Create Department Table
CREATE TABLE Department 
(
  DepartmentID INT(5) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  DepartmentName VARCHAR(15) UNIQUE NOT NULL,
  SupervisorID INT(5) NOT NULL,
  FOREIGN KEY (SupervisorID) REFERENCES Supervisor(SupervisorID)
);

-- DEPARTMENT TABLES GO HERE

-- Create Order Table
CREATE TABLE 'Order'
(
  OrderID INT(10) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  OdrShippingAddress VARCHAR(50) NOT NULL,
  BillingAddress VARCHAR(50) NOT NULL,
  TotalAmount DECIMAL(10, 2) NOT NULL,
  SalesTax DECIMAL (10, 2) NOT NULL,
  ShippingCost DECIMAL (10, 2) NOT NULL,
  PromoCode INT
);

-- Create Suppliers Table
CREATE TABLE Suppliers 
(
  SupplierID INT(5) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  SupplierName VARCHAR(50) NOT NULL
);

/* creating product table */
create table Products 
(
  ProductID INT(5) AUTO_INCREMENT PRIMARY KEY NOT NULL,
  ProductName VARCHAR(50) NOT NULL,
  Category VARCHAR(35) NOT NULL,
  TotalInventory INT(20) NOT NULL DEFAULT 0,
  CostPrice DECIMAL(10,2) NOT NULL,
  RetailPrice DECIMAL(10,2) NOT NULL,
  Review VARCHAR(50) NULL,
  SupplierID INT(50) NOT NULL,
  Descript VARCHAR(350),
  constraint products_Supplier_fkey foreign KEY (SupplierID) references suppliers (SupplierID)
);

-- POPULATE TABLES -- 

-- Insert data into products table
INSERT INTO Products (ProductID, ProductName, Category, TotalInventory, CostPrice, RetailPrice, Review, SupplierID, Descript)
VALUES
  (1, 'Root to Tip Hair Growth Serum'   , 'Wellness'   , 10, 13.13, 42.99 , NULL, 1, 'Root to tip hair growth serum for strong, healthy and vibrant hair.'),
  (2, 'Revitalizing Youth Serum'        , 'Wellness'   , 10, 22.22, 69.99 , NULL, 1, 'Revitalizing facial serum to restore the signs of youth. Minimizes fine lines, wrinkles, and dark spots. Evens skin tone and reduces hyperpigmentation.'),
  (3, 'Ultra Repair Night Cream'        , 'Wellness'   , 10, 19.19, 54.99 , NULL, 1, 'Hydrating facial moisturizer. Your nightly rescue for tired and dull skin. Restores natural skin barrier. Use nightly on cleansed dry skin.'),
  (4, 'Hydrating Lip Balm'              , 'Wellness'   , 10, 4.04 , 9.99  , NULL, 1, 'Healing lip balm to protect and soothe dry lips.'),
  (5, 'Soothing Cough Syrup'            , 'Wellness'   , 10, 5.05 , 27.99 , NULL, 2, 'Healing cough syrup to ease sore throat and suppress cough for a restful night sleep. Made with real daisy extract.'),
  (6, 'Eidos by Zen Daisy'              , 'Wellness'   , 10, 27.27, 89.99 , NULL, 1, 'Perfume'),
  (7, 'Organic Loose Lea Tea'           , 'Wellness'   , 10, 2.22 , 27.99 , NULL, 2, 'An uplifting blend of daisy and jasmine organic loose leaf tea. (4oz / 113g)'),
  (8, 'Decorative Daisy Plush Pillow'   , 'Home'       , 10, 3.03 , 11.99 , NULL, 3, 'The perfect decorative pillow to brighten up any room'),
  (9, 'Seize the Day Coffee Mug'        , 'Home'       , 10, 4.04 , 12.99 , NULL, 3, NULL),
  (10, 'Ease Your Travels Hydro Flask'  , 'Home'       , 10, 6.06 , 24.99 , NULL, 4,  NULL),
  (11, 'Ceremonial Glass Tea Urn'       , 'Home'       , 10, 5.67 , 17.99 , NULL, 4,  NULL),
  (12, 'Daisies for Days Bed Sheet Set' , 'Home'       , 10, 21.21, 112.99, NULL, 4, NULL),
  (14, 'Soft Crossbody Briefcase'       , 'Travel'     , 10, 24.24, 89.99 , NULL, 5,  NULL),
  (15, 'Crossbody Messenger Bag'        , 'Travel'     , 10, 12.12, 39.99 , NULL, 5,  NULL),
  (16, 'Wanderlust Luggage Set'         , 'Travel'     , 10, 53.53, 169.99, NULL, 5, 'The perfect luggage set for your travel needs. Includes one carry-on sized luggage and one large luggage. Each piece is light and durable with a retractable handle and wheels.'),
  (17, 'Trail Blazer Utility Backpack'  , 'Travel'     , 10, 8.08 , 54.99 , NULL, 5,  NULL),
  (18, 'Perfect Fit Pullover Hoodie'    , 'Apparel'    , 10, 11.11, 39.99 , NULL, 6, 'Our 100% cotton ultra soft unisex pullover hoodie feels like second skin of warmth and comfort. Neutral colors make it perfect for every day and all occasions. Available in colors Caramel, Coco, and Cream'),
  (19, 'Cloud 9 Loungewear Set'         , 'Apparel'    , 10, 17.17, 59.99 , NULL, 6,  NULL),
  (20, 'Lazy Daisy Crew Socks'          , 'Apparel'    , 10, 4.04 , 12.99 , NULL, 6, '100% cotton, classic crew socks. Pack of 2 colors, Aloe and Azure.'),
  (21, 'Outdoor Sports Cap'             , 'Apparel'    , 10, 6.06 , 27.99 , NULL, 7, '100% cotton, perfect fit outdoor sports cap. Available in colors Aloe and Mauve'),
  (22, 'Sierra Skully Beanie'           , 'Apparel'    , 10, 10.1 , 49.99 , NULL, 7, '100% double layer cotton, thick and warm skull beanie. Perfect for the slopes, long treks, and winter wear. Available in colors Coffee and Vanilla.'),
  (23, 'Pro Leather iPhone Case'        , 'Accessories', 10, 9.09 , 39.99 , NULL, 8, NULL),
  (24, 'Y2K Clear iPhone Case'          , 'Accessories', 10, 7.07 , 19.99 , NULL, 8, NULL),
  (25, 'Brains & Bloom Laptop Case'     , 'Accessories', 10, 11.12, 29.99 , NULL, 8, NULL),
  (26, 'Go With The Flow ThermoFlask'   , 'Home'       , 10, 10.01, 35.99 , NULL, 5, NULL),
  (27, 'Zen Daisy Glow Gummies'         , 'Wellness'   , 10, 13.13, 39.99 , NULL, 2, NULL),
  (28, 'Stay Dry Daisy Umbrella'        , 'Accessories', 10, 10.01, 39.99 , NULL, 4, NULL);