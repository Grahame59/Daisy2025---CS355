## Okay the purpose of this file is too explain any changes you individual push to the repo. Follow the format below or make it similiar. 

### 04.08.2025 - 4:11 PM (Kyler)
    - Okay so I restructed the SQL file we have to create our tables as well as it currently as one Insert SQL Statement to populate the Products Table. We may have to change it down the line to fit
    our requirements better but it is a good starting point for the Assignment we have for SQL Queries on Friday. I imported it to PhpMyAdmin through cPanel and it is working properly.

### 04.09.2025 - 10:09 PM (Kyler)
    - I did all the CREATE statements (tables.sql) for the database schema.
    - I did some INSERT statements (data.sql) for populating some static data in the database, still need to do more and connect some stuff better.
    - I roughed out some view points (Views/(EmployeeView.sql, MemberView.sql, OwnerView.sql, and SupervisorView.sql) to streamline page building when we are pulling data needed in with php.)
    - And other little stuff...
    - Here is a general table for all the SQL tables we have and there purpose
            ______________________________________________________________________
            | 1   | Account               | User Login / Role Management          |
            | --- | --------------------- | ------------------------------------- |
            | 2   | Member                | Members Personal Info                 |
            | 3   | Employee              | Employees Personal Info               |
            | 4   | Supervisor            | Supervisors Personal Info             |
            | 5   | Department            | Department Names                      |
            | 6   | EmployeeDepartments   | N:N Link → Employee to Departments    |
            | 7   | SupervisorDepartments | N:N Link → Supervisor to Departments  |
            | 8   | Suppliers             | Suppliers of Products                 |
            | 9   | Products              | Store Inventory                       |
            | 10  | Promotions            | Discounts / Coupons                   |
            | 11  | Orders                | Customer Orders                       |
            | 12  | OrderDetails          | Line Items Per Order                  |
            | 13  | OrderStatus           | Status Names (Pending, Shipped, etc.) |
            | 14  | OrderStatusTracking   | Tracks Status History                 |
            | 15  | Receipt               | Final Payment for Orders              |
            | 16  | Cart                  | Shopping Cart Per User                |
            | 17  | CartItems             | Items Per Cart                        |
            | 18  | Reviews               | Member Reviews Per Product            |
            | 19  | ReturnStatus          | Returns Tracking                      |
            | 20  | CustomerService       | Tickets / Support                     |
            | 21  | HumanResources        | Employee Incident Logs                |
            | 22  | Marketing             | Ad / Campaign Management              |
            | 23  | ProductManagement     | Admin Product Changes Log             |
            -----------------------------------------------------------------------

### 04.09.2025 - 11:22 (Kyler)
    - I added the Insert Statements to put Member Types and SupervisorTypes into their respective tables (Member Table & Supervisor Table) and Tanvir did the Insert Statements for Employee Table from Account Type Employee. All of these reference the Account table through UserID.
    