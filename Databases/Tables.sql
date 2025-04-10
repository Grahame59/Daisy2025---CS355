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
  AccountType ENUM('Member', 'Employee', 'Supervisor', 'Owner') NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Create Member Table
CREATE TABLE Member 
(
  MemberID INT(5) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  MemberFName VARCHAR(18) NOT NULL,
  MemberMinit CHAR(1) NOT NULL,
  MemberLName VARCHAR(18) NOT NULL,
  MemberBirthday DATE,
  MemberPhoneNum VARCHAR(15) NOT NULL,
  MemberBillingAddr VARCHAR(50) NOT NULL,
  MemberShippingAddr VARCHAR(50) NOT NULL,
  LoyaltyPoints INT(10),
  PaymentInfo VARCHAR(50) NOT NULL,
  UserID INT(5),
  FOREIGN KEY (UserID) REFERENCES Account(UserId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Create Department Table
CREATE TABLE Department 
(
  DepartmentID INT(5) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  DepartmentName VARCHAR(25) UNIQUE NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Create Employee Table
CREATE TABLE Employee 
(
  EmployeeID INT(5) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  EmpFName VARCHAR(18) NOT NULL,
  EmpMinit CHAR(1) NOT NULL,
  EmpLName VARCHAR(18) NOT NULL,
  EmpSSN VARCHAR(15) NOT NULL,
  EmpPhoneNum VARCHAR(15) NOT NULL,
  EmpClockedHours DECIMAL(3,2),
  EmpHourlyWage DECIMAL(10,2) NOT NULL,
  UserID INT(5) NOT NULL,
  FOREIGN KEY (UserID) REFERENCES Account(UserId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Create Supervisor Table
CREATE TABLE Supervisor 
(
  SupervisorID INT(5) PRIMARY KEY AUTO_INCREMENT,
  SupervisorFName VARCHAR(18) NOT NULL,
  SupervisorMinit CHAR(1) NOT NULL,
  SupervisorLName VARCHAR(18) NOT NULL,
  UserID INT(5) NOT NULL,
  FOREIGN KEY (UserID) REFERENCES Account(UserId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Create Order Table
CREATE TABLE Orders
(
  OrderID INT(10) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  CreatedAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  OrderShippingAddr VARCHAR(50) NOT NULL,
  BillingAddr VARCHAR(50) NOT NULL,
  TotalAmount DECIMAL(10, 2) NOT NULL,
  SalesTax DECIMAL (10, 2) NOT NULL,
  ShippingCost DECIMAL (10, 2) NOT NULL,
  PromotionID INT,
  FOREIGN KEY (PromotionID) REFERENCES Promotions(PromotionID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Create Suppliers Table
CREATE TABLE Suppliers 
(
  SupplierID INT(5) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  SupplierName VARCHAR(50) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  FOREIGN KEY (SupplierID) REFERENCES Suppliers (SupplierID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Create Statement For Cart Table
CREATE TABLE Cart
(
  CartID INT(10) PRIMARY KEY AUTO_INCREMENT,
  UserID INT(5) NOT NULL,
  CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (UserID) REFERENCES Account(UserID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Create Statement For CartItems Table
CREATE TABLE CartItems 
(
  CartItemID INT(10) PRIMARY KEY AUTO_INCREMENT,
  CartID INT(10) NOT NULL,
  ProductID INT(10) NOT NULL,
  Quantity INT NOT NULL DEFAULT 1,
  FOREIGN KEY (CartID) REFERENCES Cart(CartID),
  FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Create Statement For OrderDetails Table
CREATE TABLE OrderDetails 
(
  OrderDetailID INT(10) PRIMARY KEY AUTO_INCREMENT,
  OrderID INT(10) NOT NULL,
  ProductID INT(5) NOT NULL,
  Quantity INT NOT NULL,
  ItemPrice DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
  FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Create Statement For Receipt Table
CREATE TABLE Receipt
(
  ReceiptID INT(10) PRIMARY KEY AUTO_INCREMENT,
  OrderID INT(10) NOT NULL,
  TotalPaid DECIMAL(10,2) NOT NULL,
  PaymentMethod VARCHAR(30) NOT NULL,
  PaidAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Create Statement For OrderStatus Table
CREATE TABLE OrderStatus
(
  StatusID INT(5) PRIMARY KEY AUTO_INCREMENT,
  StatusName VARCHAR(30) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Create Statement For OrderStatusTracking Table
CREATE TABLE OrderStatusTracking 
(
  TrackingID INT(10) PRIMARY KEY AUTO_INCREMENT,
  OrderID INT(10) NOT NULL,
  StatusID INT(5) NOT NULL,
  UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
  FOREIGN KEY (StatusID) REFERENCES OrderStatus(StatusID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Create Statement For Reviews Table
CREATE TABLE Reviews 
(
  ReviewID INT(10) PRIMARY KEY AUTO_INCREMENT,
  ProductID INT(5) NOT NULL,
  MemberID INT(5) NOT NULL,
  Rating INT CHECK (Rating BETWEEN 1 AND 5),
  ReviewDescript VARCHAR(500),
  ReviewDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
  FOREIGN KEY (MemberID) REFERENCES Member(MemberID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Create Statement For ReturnStatus Table
CREATE TABLE ReturnStatus 
(
  ReturnID INT(10) PRIMARY KEY AUTO_INCREMENT,
  OrderDetailID INT(10) NOT NULL,
  Status VARCHAR(30) NOT NULL,
  Reason VARCHAR(30),
  ReturnDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (OrderDetailID) REFERENCES OrderDetails(OrderDetailID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Create Statement For Promotions Table
CREATE TABLE Promotions
(
  PromotionID INT(5) PRIMARY KEY AUTO_INCREMENT,
  PromoCode VARCHAR(15) UNIQUE NOT NULL,
  Descript VARCHAR(100),
  DiscountPercent DECIMAL(5,2),
  StartDate DATE,
  EndDate DATE
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Create Statement For CustomerService Table
CREATE TABLE CustomerService 
(
  TicketID INT(10) PRIMARY KEY AUTO_INCREMENT,
  MemberID INT(5) NOT NULL,
  IssueTitle VARCHAR(100),
  IssueDescript VARCHAR(500),
  Status VARCHAR(30) DEFAULT 'Open',
  CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (MemberID) REFERENCES Member(MemberID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Create Statement For HumanResources Table
CREATE TABLE HumanResources
(
  IncidentID INT(10) PRIMARY KEY AUTO_INCREMENT,
  EmployeeID INT(5) NOT NULL,
  Descript VARCHAR(500),
  FiledAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  Status VARCHAR(30) DEFAULT 'Under Review',
  FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Create Statement For Marketing Table
CREATE TABLE Marketing
(
  CampaignID INT(5) PRIMARY KEY AUTO_INCREMENT,
  CampaignName VARCHAR(50) NOT NULL,
  StartDate DATE,
  EndDate DATE,
  TargetCategory VARCHAR(30),
  Budget DECIMAL(10,2)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Create Statement For ProductManagement Table
CREATE TABLE ProductManagement
(
  LogID INT(10) PRIMARY KEY AUTO_INCREMENT,
  ProductID INT(5) NOT NULL,
  Action VARCHAR(50) NOT NULL,
  ChangedBy INT(5) NOT NULL, --Could be UserID from either Employee/Supervisor
  Timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
  FOREIGN KEY (ChangedBy) REFERENCES Account(UserID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Create Statement For EmployeeDepartments Linking Table
CREATE TABLE EmployeeDepartments 
(
  EmployeeDeptID INT PRIMARY KEY AUTO_INCREMENT,
  EmployeeID INT NOT NULL,
  DepartmentID INT NOT NULL,
  FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
  FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Create Statement For SupervisorDepartments Linking Table
CREATE TABLE SupervisorDepartments 
(
  SupervisorDeptID INT PRIMARY KEY AUTO_INCREMENT,
  SupervisorID INT NOT NULL,
  DepartmentID INT NOT NULL,
  FOREIGN KEY (SupervisorID) REFERENCES Supervisor(SupervisorID),
  FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


