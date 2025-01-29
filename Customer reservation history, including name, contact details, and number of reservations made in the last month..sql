#3.	Customer reservation history, including name, contact details, and number of reservations made in the last month.
SELECT 
    CONCAT(CD.FirstName, ' ', CD.LastName) AS CustomerName,
    CCD.ContactNumber AS ContactDetails,
    COUNT(O.OrderID) AS NumberOfReservations
    
FROM CustomerDetail_tbl CD

INNER JOIN CustomerContactDetail_tbl CCD
ON CD.CustomerID = CCD.CustomerID

INNER JOIN Reservation_tbl R
ON CD.CustomerID = R.CustomerID

INNER JOIN Order_tbl O
ON R.ReservationID = O.ReservationID

WHERE O.OrderDate >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH)

GROUP BY CD.CustomerID, CustomerName, ContactDetails

ORDER BY NumberOfReservations DESC;
