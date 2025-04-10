/* ---------------------------------------------- 
          Supervisor View For only ALL Data
             and edit priv for THEIR Dept
   ---------------------------------------------- */

CREATE VIEW SupervisorAllDeptsView AS
SELECT 
  S.SupervisorID,
  A.UserName,
  D.DepartmentID,
  D.DepartmentName,
  E.EmployeeID,
  E.EmpFName,
  E.EmpLName,
  O.OrderID,
  O.TotalAmount,
  P.ProductName
FROM Supervisor S
JOIN Account A ON S.UserID = A.UserID
LEFT JOIN Department D ON S.DepartmentID = D.DepartmentID
LEFT JOIN Employee E ON E.DepartmentID = D.DepartmentID
LEFT JOIN Orders O ON O.PromotionID = D.DepartmentID -- placeholder
LEFT JOIN Products P ON P.SupplierID = D.DepartmentID; -- example
