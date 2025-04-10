/* -------------------------------------------------------------------------
                            File for data to insert for the tables 
  -------------------------------------------------------------------------- */
INSERT INTO Account (UserName, Password, EmailAddress, AccountType) VALUES 
('alexsmith', 'Pass1234', 'alex.smith@example.com', 'Member'),
('sarajones', 'SaraPass1', 'sara.jones@example.com', 'Employee'),
('davidcho', 'ChoSecure9', 'david.cho@example.com', 'Supervisor'),
('emilywang', 'EmWang88', 'emily.wang@example.com', 'Member'),
('johnnyd', 'JDpass2024', 'johnny.d@example.com', 'Employee'),
('nataliek', 'NatKey77', 'natalie.k@example.com', 'Member'),
('michaelb', 'MikeB321', 'michael.b@example.com', 'Supervisor'),
('ashleyt', 'AshPass45', 'ashley.t@example.com', 'Member'),
('brianlee', 'BLeePass9', 'brian.lee@example.com', 'Employee'),
('chloer', 'ChloeR2025', 'chloe.r@example.com', 'Supervisor'),
('marcusb', 'MarcusB17', 'marcus.b@example.com', 'Member'),
('jenniferk', 'JKpass890', 'jennifer.k@example.com', 'Employee'),
('stephw', 'StephW22', 'stephanie.w@example.com', 'Member'),
('toml', 'TomLpass!', 'tom.l@example.com', 'Employee');

INSERT INTO Employee (EmpName, EmpSSN, EmpPhoneNum, EmpClockedHours, EmpHourlyWage, UserID, DepartmentID)
SELECT 'Sara Jones', '123-45-6789', '555-100-2000', 40.00, 22.50, UserID, 1
FROM Account WHERE UserName = 'sarajones';

INSERT INTO Employee (EmpName, EmpSSN, EmpPhoneNum, EmpClockedHours, EmpHourlyWage, UserID, DepartmentID)
SELECT 'Johnny D', '234-56-7890', '555-100-2001', 38.75, 20.00, UserID, 2
FROM Account WHERE UserName = 'johnnyd';

INSERT INTO Employee (EmpName, EmpSSN, EmpPhoneNum, EmpClockedHours, EmpHourlyWage, UserID, DepartmentID)
SELECT 'Brian Lee', '345-67-8901', '555-100-2002', 41.25, 23.75, UserID, 1
FROM Account WHERE UserName = 'brianlee';

INSERT INTO Employee (EmpName, EmpSSN, EmpPhoneNum, EmpClockedHours, EmpHourlyWage, UserID, DepartmentID)
SELECT 'Jennifer K', '456-78-9012', '555-100-2003', 39.50, 21.25, UserID, 2
FROM Account WHERE UserName = 'jenniferk';

INSERT INTO Employee (EmpName, EmpSSN, EmpPhoneNum, EmpClockedHours, EmpHourlyWage, UserID, DepartmentID)
SELECT 'Tom L', '567-89-0123', '555-100-2004', 40.00, 22.00, UserID, 3
FROM Account WHERE UserName = 'toml';
