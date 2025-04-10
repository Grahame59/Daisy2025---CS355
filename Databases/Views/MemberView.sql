/* ---------------------------------------------- 
            Member View For only THEIR Data
   ---------------------------------------------- */

CREATE VIEW MemberSelfView AS
SELECT 
  M.MemberID,
  A.UserName,
  A.EmailAddress,
  O.OrderID,
  O.CreatedAt AS OrderDate,
  R.ReceiptID,
  R.TotalPaid,
  P.ProductName,
  RV.Rating,
  RV.ReviewText
FROM Member M
JOIN Account A ON M.UserID = A.UserID
LEFT JOIN Orders O ON A.UserID = O.OrderID
LEFT JOIN Receipt R ON R.OrderID = O.OrderID
LEFT JOIN Reviews RV ON RV.MemberID = M.MemberID
LEFT JOIN Products P ON RV.ProductID = P.ProductID;
