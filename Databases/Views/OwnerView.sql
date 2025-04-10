/* ---------------------------------------------- 
             Owner View For ALL Data
   ---------------------------------------------- */

CREATE VIEW OwnerFullView AS
SELECT 
  A.UserID, A.UserName, A.AccountType,
  M.MemberID, M.MemberFName, M.LoyaltyPoints,
  E.EmployeeID, E.EmpFName, E.EmpHourlyWage,
  S.SupervisorID, S.SupervisorFName,
  D.DepartmentID, D.DepartmentName,
  P.ProductID, P.ProductName,
  O.OrderID, O.TotalAmount,
  R.ReceiptID, R.TotalPaid,
  RV.ReviewID, RV.Rating
FROM Account A
LEFT JOIN Member M ON M.UserID = A.UserID
LEFT JOIN Employee E ON E.UserID = A.UserID
LEFT JOIN Supervisor S ON S.UserID = A.UserID
LEFT JOIN Department D ON D.SupervisorID = S.SupervisorID
LEFT JOIN Orders O ON O.PromotionID = D.DepartmentID -- example
LEFT JOIN Products P ON P.SupplierID = D.DepartmentID -- example
LEFT JOIN Receipt R ON R.OrderID = O.OrderID
LEFT JOIN Reviews RV ON RV.MemberID = M.MemberID;
