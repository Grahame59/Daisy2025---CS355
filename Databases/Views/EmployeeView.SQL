/* ---------------------------------------------- 
        Employee View For only their Dept Data
   ---------------------------------------------- */

CREATE VIEW EmployeeDeptView AS
SELECT 
  E.EmployeeID,
  E.EmpFName,
  E.EmpLName,
  D.DepartmentID,
  D.DepartmentName,
  P.ProductName,
  O.OrderID,
  O.TotalAmount
FROM Employee E
JOIN Department D ON E.DepartmentID = D.DepartmentID
LEFT JOIN Orders O ON D.DepartmentID = O.PromotionID -- placeholder for dept link
LEFT JOIN Products P ON P.SupplierID = D.DepartmentID; -- example link
