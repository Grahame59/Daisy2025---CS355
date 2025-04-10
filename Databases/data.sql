/* -------------------------------------------------------------------------
                            File for data to insert for the tables 
  -------------------------------------------------------------------------- */

-- Insert data into Account Table
INSERT INTO Account (UserName, Password, EmailAddress, AccountType) VALUES 
  ('alexsmith'  , 'Pass1234'  , 'alex.smith@example.com' , 'Member'),
  ('sarajones'  , 'SaraPass1' , 'sara.jones@example.com' , 'Employee'),
  ('davidcho'   , 'ChoSecure9', 'david.cho@example.com'  , 'Supervisor'),
  ('emilywang'  , 'EmWang88'  , 'emily.wang@example.com' , 'Member'),
  ('johnnyd'    , 'JDpass2024', 'johnny.d@example.com'   , 'Employee'),
  ('nataliek'   , 'NatKey77'  , 'natalie.k@example.com'  , 'Member'),
  ('michaelb'   , 'MikeB321'  , 'michael.b@example.com'  , 'Supervisor'),
  ('ashleyt'    , 'AshPass45' , 'ashley.t@example.com'   , 'Member'),
  ('brianlee'   , 'BLeePass9' , 'brian.lee@example.com'  , 'Employee'),
  ('chloer'     , 'ChloeR2025', 'chloe.r@example.com'    , 'Supervisor'),
  ('marcusb'    , 'MarcusB17' , 'marcus.b@example.com'   , 'Member'),
  ('jenniferk'  , 'JKpass890' , 'jennifer.k@example.com' , 'Employee'),
  ('stephw'     , 'StephW22'  , 'stephanie.w@example.com', 'Member'),
  ('toml'       , 'TomLpass!' , 'tom.l@example.com'      , 'Employee'),
  ('Owner'      , 'Owner'     , 'Owner@example.com'      , 'Owner'),
  ('Supervisor' , 'Supervisor', 'Supervisor@example.com' , 'Supervisor'),
  ('Member'     , 'Member'    , 'Member@example.com'     , 'Member'),
  ('KylerGram'  , 'admin'     , 'FakeEmail@example.com'  , 'Member'),
  ('JamesfFran' , 'admin'     , 'FakeEmail2@example.com' , 'Member'),
  ('JohnNamor1' , 'admin'     , 'FakeEmail2@example.com' , 'Employee'),
  ('CassAndor'  , 'admin'     , 'FakeEmail3@example.com' , 'Supervisor'),
  ('BernesSteel', 'admin'     , 'FakeEmail4@example.com' , 'Supervisor');

-- Insert data into Products Table
INSERT INTO Products (ProductName, Category, TotalInventory, CostPrice, RetailPrice, Review, Descript)
VALUES
  ('Root to Tip Hair Growth Serum'   , 'Wellness'   , 10, 13.13, 42.99 , NULL, 1, 'Root to tip hair growth serum for strong, healthy and vibrant hair.'),
  ('Revitalizing Youth Serum'        , 'Wellness'   , 10, 22.22, 69.99 , NULL, 1, 'Revitalizing facial serum to restore the signs of youth. Minimizes fine lines, wrinkles, and dark spots. Evens skin tone and reduces hyperpigmentation.'),
  ('Ultra Repair Night Cream'        , 'Wellness'   , 10, 19.19, 54.99 , NULL, 1, 'Hydrating facial moisturizer. Your nightly rescue for tired and dull skin. Restores natural skin barrier. Use nightly on cleansed dry skin.'),
  ('Hydrating Lip Balm'              , 'Wellness'   , 10, 4.04 , 9.99  , NULL, 1, 'Healing lip balm to protect and soothe dry lips.'),
  ('Soothing Cough Syrup'            , 'Wellness'   , 10, 5.05 , 27.99 , NULL, 2, 'Healing cough syrup to ease sore throat and suppress cough for a restful night sleep. Made with real daisy extract.'),
  ('Eidos by Zen Daisy'              , 'Wellness'   , 10, 27.27, 89.99 , NULL, 1, 'Perfume'),
  ('Organic Loose Lea Tea'           , 'Wellness'   , 10, 2.22 , 27.99 , NULL, 2, 'An uplifting blend of daisy and jasmine organic loose leaf tea. (4oz / 113g)'),
  ('Decorative Daisy Plush Pillow'   , 'Home'       , 10, 3.03 , 11.99 , NULL, 3, 'The perfect decorative pillow to brighten up any room'),
  ('Seize the Day Coffee Mug'        , 'Home'       , 10, 4.04 , 12.99 , NULL, 3, NULL),
  ('Ease Your Travels Hydro Flask'  , 'Home'       , 10, 6.06 , 24.99  , NULL,  4,  NULL),
  ('Ceremonial Glass Tea Urn'       , 'Home'       , 10, 5.67 , 17.99  , NULL,  4,  NULL),
  ('Daisies for Days Bed Sheet Set' , 'Home'       , 10, 21.21, 112.99 , NULL,  4, NULL),
  ('Soft Crossbody Briefcase'       , 'Travel'     , 10, 24.24, 89.99  , NULL,  5,  NULL),
  ('Crossbody Messenger Bag'        , 'Travel'     , 10, 12.12, 39.99  , NULL,  5,  NULL),
  ('Wanderlust Luggage Set'         , 'Travel'     , 10, 53.53, 169.99 , NULL,  5, 'The perfect luggage set for your travel needs. Includes one carry-on sized luggage and one large luggage. Each piece is light and durable with a retractable handle and wheels.'),
  ('Trail Blazer Utility Backpack'  , 'Travel'     , 10, 8.08 , 54.99  , NULL,  5,  NULL),
  ('Perfect Fit Pullover Hoodie'    , 'Apparel'    , 10, 11.11, 39.99  , NULL,  6, 'Our 100% cotton ultra soft unisex pullover hoodie feels like second skin of warmth and comfort. Neutral colors make it perfect for every day and all occasions. Available in colors Caramel, Coco, and Cream'),
  ('Cloud 9 Loungewear Set'         , 'Apparel'    , 10, 17.17, 59.99  , NULL,  6,  NULL),
  ('Lazy Daisy Crew Socks'          , 'Apparel'    , 10, 4.04 , 12.99  , NULL,  6, '100% cotton, classic crew socks. Pack of 2 colors, Aloe and Azure.'),
  ('Outdoor Sports Cap'             , 'Apparel'    , 10, 6.06 , 27.99  , NULL,  7, '100% cotton, perfect fit outdoor sports cap. Available in colors Aloe and Mauve'),
  ('Sierra Skully Beanie'           , 'Apparel'    , 10, 10.1 , 49.99  , NULL,  7, '100% double layer cotton, thick and warm skull beanie. Perfect for the slopes, long treks, and winter wear. Available in colors Coffee and Vanilla.'),
  ('Pro Leather iPhone Case'        , 'Accessories', 10, 9.09 , 39.99  , NULL,  8, NULL),
  ('Y2K Clear iPhone Case'          , 'Accessories', 10, 7.07 , 19.99  , NULL,  8, NULL),
  ('Brains & Bloom Laptop Case'     , 'Accessories', 10, 11.12, 29.99  , NULL,  8, NULL),
  ('Go With The Flow ThermoFlask'   , 'Home'       , 10, 10.01, 35.99  , NULL,  5, NULL),
  ('Zen Daisy Glow Gummies'         , 'Wellness'   , 10, 13.13, 39.99  , NULL,  2, NULL),
  ('Stay Dry Daisy Umbrella'        , 'Accessories', 10, 10.01, 39.99  , NULL,  4, NULL);

  -- Insert Data into Department Table
  INSERT INTO Department (DepartmentName)
  VALUES
    ('Marketing'),
    ('Human Resource'),
    ('Customer Service'),
    ('Warehouse'),
    ('Product Management');

  -- Insert Data Into Promotions Table
  INSERT INTO Promotions (PromoCode, Descript, DiscountPercent, StartDate, EndDate)
  VALUES 
    ('WELCOME'     , '10% off for new users'           , 10.00, '2025-04-01', '2030-04-01'),
    ('FREESHIPPING', 'Free Shipping on orders over $75', 00.00, '2025-04-01', '2050-04-01');

  -- Insert Data into Supplier Table
  INSERT INTO Suppliers (SupplierID, SupplierName)
  VALUES
    (1, 'Daisy Supplies'),
    (2, 'Daisy Nature Corp.'),
    (3, 'Clothes Custom Corp'),
    (4, 'Beauty Loft Inc.'),
    (5, 'Nature Enthusiasts Inc.'),
    (6, 'Supplies 101'),
    (7, 'Cool Suppliers LLC'),
    (8, 'Best Suppliers Around LLC');

-- Inserting Member Types into Member Table
INSERT INTO Member (MemberFName, MemberMinit, MemberLName, MemberBirthday, MemberPhoneNum, MemberBillingAddr, MemberShippingAddr, LoyaltyPoints, PaymentInfo, UserID)
VALUES
('Kyler', 'J', 'Grahame', '2002-06-08', '973-650-1596', '12 Home Street Butler, NJ 07540', '12 Home Street Butler, NJ 07540', 350, '****-****-****-1596', 18),

('James', 'J', 'Francis', '1987-02-09', '123-456-7890', '345 Fake Name Lane, Artichoke, NJ 07897', '345 Fake Name Lane, Artichoke, NJ 07897', 0, '****-****-****-1234', 19),

('Alex', 'S', 'Smith', '1995-01-15', '555-100-1111', '123 Main Street, Wayne, NJ 07470', '123 Main Street, Wayne, NJ 07470', 100, '****-****-****-1111', 1),

('Emily', 'W', 'Wang', '1997-03-12', '555-100-2222', '234 Maple Ave, Clifton, NJ 07013', '234 Maple Ave, Clifton, NJ 07013', 200, '****-****-****-2222', 4),

('Natalie', 'K', 'Keller', '1993-08-27', '555-100-3333', '567 Oak Lane, Paterson, NJ 07501', '567 Oak Lane, Paterson, NJ 07501', 50, '****-****-****-3333', 6),

('Ashley', 'T', 'Turner', '1990-05-30', '555-100-4444', '890 Pine Blvd, West Milford, NJ 07480', '890 Pine Blvd, West Milford, NJ 07480', 75, '****-****-****-4444', 8),

('Marcus', 'B', 'Brown', '1985-11-02', '555-100-5555', '321 Birch St, Ringwood, NJ 07456', '321 Birch St, Ringwood, NJ 07456', 150, '****-****-****-5555', 11),

('Stephanie', 'W', 'Wilson', '1999-09-09', '555-100-6666', '654 Cedar Rd, Bloomingdale, NJ 07403', '654 Cedar Rd, Bloomingdale, NJ 07403', 25, '****-****-****-6666', 13);
  
-- End Static Inserts (Need to Reference Top Level Tables Above for this Insert Statements Below) --  

-- Inserting Account Types into Employee Table
INSERT INTO Employee (EmpFName, EmpMinit, EmpLName, EmpSSN, EmpPhoneNum, EmpClockedHours, EmpHourlyWage, UserID)
SELECT 'Sara', 'L', 'Jones', '123-45-6789', '555-100-2000', 40.00, 22.50, UserID
FROM Account WHERE UserName = 'sarajones';

INSERT INTO Employee (EmpFName, EmpMinit, EmpLName, EmpSSN, EmpPhoneNum, EmpClockedHours, EmpHourlyWage, UserID)
SELECT 'Johnny', 'D', 'Dane', '234-56-7890', '555-100-2001', 38.75, 20.00, UserID
FROM Account WHERE UserName = 'johnnyd';

INSERT INTO Employee (EmpFName, EmpMinit, EmpLName, EmpSSN, EmpPhoneNum, EmpClockedHours, EmpHourlyWage, UserID)
SELECT 'Brian', 'R', 'Lee', '345-67-8901', '555-100-2002', 41.25, 23.75, UserID
FROM Account WHERE UserName = 'brianlee';

INSERT INTO Employee (EmpFName, EmpMinit, EmpLName, EmpSSN, EmpPhoneNum, EmpClockedHours, EmpHourlyWage, UserID)
SELECT 'Jennifer', 'Q', 'Kansas', '456-78-9012', '555-100-2003', 39.50, 21.25, UserID
FROM Account WHERE UserName = 'jenniferk';

INSERT INTO Employee (EmpFName, EmpMinit, EmpLName, EmpSSN, EmpPhoneNum, EmpClockedHours, EmpHourlyWage, UserID)
SELECT 'Tom', 'W', 'Leonard', '567-89-0123', '555-100-2004', 40.00, 22.00, UserID
FROM Account WHERE UserName = 'toml';

INSERT INTO Employee (EmpFName, EmpMinit, EmpLName, EmpSSN, EmpPhoneNum, EmpClockedHours, EmpHourlyWage, UserID)
Select ('Johnathon', 'F', 'Namor', '**-**-1234', '973-973-9734', '.40', '19.95', 5);
FROM Account WHERE UserName = 'JohnNamor1';

-- Insert Supervisor Types into Supervisor Table
INSERT INTO Supervisor (SupervisorFName, SupervisorMinit, SupervisorLName, UserID)
SELECT 'David', 'K', 'Cho', UserID
FROM Account WHERE UserName = 'davidcho';

INSERT INTO Supervisor (SupervisorFName, SupervisorMinit, SupervisorLName, UserID)
SELECT 'Michael', 'B', 'Bloom', UserID
FROM Account WHERE UserName = 'michaelb';

INSERT INTO Supervisor (SupervisorFName, SupervisorMinit, SupervisorLName, UserID)
SELECT 'Chloe', 'R', 'Reed', UserID
FROM Account WHERE UserName = 'chloer';

INSERT INTO Supervisor (SupervisorFName, SupervisorMinit, SupervisorLName, UserID)
SELECT 'Cassian', 'L', 'Andor', UserID
FROM Account WHERE UserName = 'CassAndor';

INSERT INTO Supervisor (SupervisorFName, SupervisorMinit, SupervisorLName, UserID)
SELECT 'Bernes', 'R', 'Steely', UserID
FROM Account WHERE UserName = 'BernesSteel';

-- Inserting Employee->Department Relations into EmployeeDepartments Table
INSERT INTO EmployeeDepartments (EmployeeID, DepartmentID)
VALUES
  (1, 1),  -- Johnathon Namor -> Marketing
  (1, 2),  -- Johnathon Namor -> Human Resource
  (5, 1),  -- Johnny Dane -> Marketing
  (7, 3),  -- Brian Lee -> Customer Service
  (8, 2),  -- Jennifer Kansas -> Human Resource
  (9, 4);  -- Tom Leonard -> Warehouse

-- Inserting Supervisor->Department Relations into SupervisorDepartments Table
INSERT INTO SupervisorDepartments (SupervisorID, DepartmentID)
VALUES
  (1, 3),  -- Cassian Andor -> Customer Service
  (1, 5),  -- Cassian Andor -> Product Management
  (2, 2),  -- Bernes Steely -> Human Resource
  (2, 4),  -- Bernes Steely -> Warehouse
  (3, 1),  -- David Cho -> Marketing
  (4, 5),  -- Michael Bloom -> Product Management
  (5, 3);  -- Chloe Reed -> Customer Service
