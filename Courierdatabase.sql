-- TASK 1:

CREATE DATABASE Courier;
use Courier;

CREATE TABLE User (
    UserID INT PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255) UNIQUE,
    Password VARCHAR(255),
    ContactNumber VARCHAR(20),
    Address TEXT
);


CREATE TABLE Courier (
    CourierID INT PRIMARY KEY,
    SenderName VARCHAR(255),
    SenderAddress TEXT,
    ReceiverName VARCHAR(255),
    ReceiverAddress TEXT,
    Weight DECIMAL(5, 2),
    Status VARCHAR(50),
    TrackingNumber VARCHAR(20) UNIQUE,
    DeliveryDate DATE
);


CREATE TABLE CourierServices (
    ServiceID INT PRIMARY KEY,
    ServiceName VARCHAR(100),
    Cost DECIMAL(8, 2)
);

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255) UNIQUE,
    ContactNumber VARCHAR(20),
    Role VARCHAR(50),
    Salary DECIMAL(10, 2)
);

CREATE TABLE Location (
    LocationID INT PRIMARY KEY,
    LocationName VARCHAR(100),
    Address TEXT
);

CREATE TABLE Payment (
    PaymentID INT PRIMARY KEY,
    CourierID INT,
    LocationID INT,
    Amount DECIMAL(10, 2),
    PaymentDate DATE,
    FOREIGN KEY (CourierID) REFERENCES Courier(CourierID),
    FOREIGN KEY (LocationID) REFERENCES Location(LocationID)
);

INSERT INTO User (UserID, Name, Email, Password, ContactNumber, Address)
VALUES
(1, 'John Doe', 'john.doe@example.com', 'password123', '1234567890', '123 Main Street, City'),
(2, 'Jane Smith', 'jane.smith@example.com', 'password456', '9876543210', '456 Elm Street, Town'),
(3, 'Alice Johnson', 'alice.johnson@example.com', 'password789', '4561237890', '789 Oak Street, Village'),
(4, 'Bob Brown', 'bob.brown@example.com', 'passwordabc', '3216549870', '987 Pine Street, County'),
(5, 'Emily Davis', 'emily.davis@example.com', 'passworddef', '4567891230', '741 Maple Street, Borough'),
(6, 'Michael Wilson', 'michael.wilson@example.com', 'passwordghi', '7891234560', '852 Cedar Street, Township'),
(7, 'Sarah Martinez', 'sarah.martinez@example.com', 'passwordjkl', '9870123456', '963 Birch Street, Municipality'),
(8, 'David Taylor', 'david.taylor@example.com', 'passwordmno', '6549870123', '147 Walnut Street, District'),
(9, 'Olivia Anderson', 'olivia.anderson@example.com', 'passwordpqr', '7896540123', '369 Spruce Street, State'),
(10, 'James Jackson', 'james.jackson@example.com', 'passwordstu', '3217894560', '258 Fir Street, Province');

INSERT INTO Courier (CourierID, SenderName, SenderAddress, ReceiverName, ReceiverAddress, Weight, Status, TrackingNumber, DeliveryDate)
VALUES
(1, 'John Doe', '123 Main Street, City', 'Jane Smith', '456 Elm Street, Town', 5.6, 'In Transit', 'ABC123XYZ', '2024-04-25'),
(2, 'Alice Johnson', '789 Oak Street, Village', 'Bob Brown', '987 Pine Street, County', 8.2, 'Delivered', 'DEF456UVW', '2024-04-23'),
(3, 'Emily Davis', '741 Maple Street, Borough', 'Michael Wilson', '852 Cedar Street, Township', 3.9, 'Pending', 'GHI789RST', '2024-04-27'),
(4, 'Sarah Martinez', '963 Birch Street, Municipality', 'David Taylor', '147 Walnut Street, District', 6.5, 'In Transit', 'JKL012VWX', '2024-04-26'),
(5, 'Olivia Anderson', '369 Spruce Street, State', 'James Jackson', '258 Fir Street, Province', 4.1, 'Delivered', 'MNO345YZA', '2024-04-22'),
(6, 'John Doe', '123 Main Street, City', 'Jane Smith', '456 Elm Street, Town', 7.3, 'Pending', 'PQR678BCD', '2024-04-24'),
(7, 'Alice Johnson', '789 Oak Street, Village', 'Bob Brown', '987 Pine Street, County', 9.8, 'In Transit', 'STU901EFG', '2024-04-28'),
(8, 'Emily Davis', '741 Maple Street, Borough', 'Michael Wilson', '852 Cedar Street, Township', 5.2, 'Delivered', 'VWX234GHI', '2024-04-21'),
(9, 'Sarah Martinez', '963 Birch Street, Municipality', 'David Taylor', '147 Walnut Street, District', 6.9, 'Pending', 'YZA567JKL', '2024-04-29'),
(10, 'Olivia Anderson', '369 Spruce Street, State', 'James Jackson', '258 Fir Street, Province', 4.5, 'In Transit', 'BCD890MNO', '2024-04-30');

INSERT INTO CourierServices (ServiceID, ServiceName, Cost)
VALUES
(1, 'Standard Delivery', 10.00),
(2, 'Express Delivery', 20.00),
(3, 'Same-Day Delivery', 30.00),
(4, 'Overnight Delivery', 15.00),
(5, 'International Delivery', 50.00),
(6, 'Local Delivery', 5.00),
(7, 'Special Handling', 25.00),
(8, 'Customized Delivery', 40.00),
(9, 'Economy Delivery', 12.00),
(10, 'Priority Delivery', 35.00);


INSERT INTO Employee (EmployeeID, Name, Email, ContactNumber, Role, Salary)
VALUES
(1, 'John Doe', 'john.doe@example.com', '1234567890', 'Delivery Agent', 30000.00),
(2, 'Jane Smith', 'jane.smith@example.com', '9876543210', 'Manager', 50000.00),
(3, 'Alice Johnson', 'alice.johnson@example.com', '4561237890', 'Customer Service', 35000.00),
(4, 'Bob Brown', 'bob.brown@example.com', '3216549870', 'Accountant', 45000.00),
(5, 'Emily Davis', 'emily.davis@example.com', '4567891230', 'Dispatcher', 32000.00),
(6, 'Michael Wilson', 'michael.wilson@example.com', '7891234560', 'Supervisor', 55000.00),
(7, 'Sarah Martinez', 'sarah.martinez@example.com', '9870123456', 'Driver', 32000.00),
(8, 'David Taylor', 'david.taylor@example.com', '6549870123', 'Warehouse Manager', 48000.00),
(9, 'Olivia Anderson', 'olivia.anderson@example.com', '7896540123', 'Security Officer', 30000.00),
(10, 'James Jackson', 'james.jackson@example.com', '3217894560', 'IT Specialist', 42000.00);


INSERT INTO Location (LocationID, LocationName, Address)
VALUES
(1, 'Main Office', '123 Main Street, City'),
(2, 'Branch Office', '456 Elm Street, Town'),
(3, 'Warehouse', '789 Oak Street, Village'),
(4, 'Customer Service Center', '987 Pine Street, County'),
(5, 'Dispatch Center', '741 Maple Street, Borough'),
(6, 'Distribution Center', '852 Cedar Street, Township'),
(7, 'Security Station', '963 Birch Street, Municipality'),
(8, 'IT Department', '147 Walnut Street, District'),
(9, 'Storage Facility', '369 Spruce Street, State'),
(10, 'Technical Support', '258 Fir Street, Province');


INSERT INTO Payment (PaymentID, CourierID, LocationID, Amount, PaymentDate)
VALUES
(1, 1, 1, 25.00, '2024-04-22'),
(2, 2, 2, 30.00, '2024-04-23'),
(3, 3, 3, 20.00, '2024-04-24'),
(4, 4, 4, 35.00, '2024-04-25'),
(5, 5, 5, 40.00, '2024-04-26'),
(6, 6, 6, 45.00, '2024-04-27'),
(7, 7, 7, 50.00, '2024-04-28'),
(8, 8, 8, 55.00, '2024-04-29'),
(9, 9, 9, 60.00, '2024-04-30'),
(10, 10, 10, 65.00, '2024-05-01');


--TASK 2:
1. List all customers:
    SELECT * FROM User;

2. List all orders for a specific customer:
    SELECT * FROM Courier WHERE CourierID = 8;

3. List all couriers:
    SELECT * FROM Courier;

4. List all packages for a specific order:
    SELECT * FROM Courier WHERE CourierID = 5;
      
5. List all deliveries for a specific courier:
    SELECT * FROM Courier WHERE CourierID = 2;

6. List all undelivered packages:
    SELECT * FROM Courier WHERE Status != 'Delivered';

7. List all packages that are scheduled for delivery today:
    SELECT * FROM Courier WHERE DeliveryDate = CURDATE();

8. List all packages with a specific status:
    SELECT * FROM Courier WHERE Status = 'In Transit';

9. Calculate the total number of packages for each courier.
    SELECT CourierID, COUNT(*) AS TotalPackages FROM Courier GROUP BY CourierID;
  
10. Find the average delivery time for each courier
     SELECT CourierID, AVG(DATEDIFF(DeliveryDate, CURRENT_DATE)) AS AvgDeliveryTime FROM Courier BY CourierID;

11. List all packages with a specific weight range:
     SELECT * FROM Courier WHERE Weight BETWEEN 2.00 AND 4.00;

12. Retrieve employees whose names contain 'John'
     SELECT * FROM Employee WHERE Name LIKE '%John%';

13. Retrieve all courier records with payments greater than $50. 
    SELECT * FROM Courier c JOIN Payment p ON c.CourierID = p.CourierID WHERE p.Amount > 50;


--Task 3: 

14. Find the total number of couriers handled by each employee.
      SELECT e.EmployeeID, e.Name, COUNT(c.CourierID) AS TotalCouriersHandled
      FROM Employee e
      LEFT JOIN Courier c ON e.EmployeeID = c.CourierID
      GROUP BY e.EmployeeID, e.Name;
      
15. Calculate the total revenue generated by each location
      select SUM(amount) from payment group by locationid;

16. Find the total number of couriers delivered to each location.
      select count(courierid) from payment group by locationid;

17. Find the courier with the highest average delivery time:
  
18. Find Locations with Total Payments Less Than a Certain Amount
     select locationid from payment group by locationid having sum(amount)<50; 

19. Calculate Total Payments per Location
     select locationid,sum(amount) from payment group by locationid;

20. Retrieve couriers who have received payments totaling more than $1000 in a specific location
(LocationID = X):
      select courierid from payment here amount>20 and locationid=10;
    
21. Retrieve couriers who have received payments totaling more than $1000 after a certain date
(PaymentDate > 'YYYY-MM-DD'):
     select courierid from payment where amount>15 and paymentdate>'2024-04-25';

22. Retrieve locations where the total amount received is more than $5000 before a certain date
(PaymentDate > 'YYYY-MM-DD')
    select courierid from payment where amount>15 and paymentdate<'2024-04-29';

--Task 4:

23. Retrieve Payments with Courier Information
     SELECT p.PaymentID, p.Amount, c.SenderName, c.ReceiverName FROM Payment p JOIN Courier c ON p.CourierID = c.CourierID;

24. Retrieve Payments with Location Information
     SELECT p.PaymentID, p.Amount, l.LocationName, l.Address FROM Payment p JOIN Location l ON p.LocationID = l.LocationID;

25. Retrieve Payments with Courier and Location Information
      SELECT p.PaymentID, p.Amount, c.SenderName, c.ReceiverName, l.LocationName, l.Address 
      FROM Payment p 
      JOIN Courier c ON p.CourierID = c.CourierID 
      JOIN Location l ON p.LocationID = l.LocationID;
 
26. List all payments with courier details
     SELECT p.*, c.* FROM Payment p JOIN Courier c ON p.CourierID = c.CourierID;
  
27. Total payments received for each courier
      SELECT c.CourierID, c.SenderName, c.ReceiverName, SUM(p.Amount) AS TotalPayments 
      FROM Courier c 
      JOIN Payment p ON c.CourierID = p.CourierID 
      GROUP BY c.CourierID, c.SenderName, c.ReceiverName;

28. List payments made on a specific date
      SELECT * FROM Payment WHERE PaymentDate = '2024-04-24';

29. Get Courier Information for Each Payment
     SELECT p.*, c.* FROM Payment p JOIN Courier c ON p.CourierID = c.CourierID;  

30. Get Payment Details with Location
    SELECT p.*, l.LocationName, l.Address FROM Payment p JOIN Location l ON p.LocationID = l.LocationID;
 
31. Calculating Total Payments for Each Courier
      SELECT c.CourierID, c.SenderName, c.ReceiverName, SUM(p.Amount) AS TotalPayments 
      FROM Courier c 
      JOIN Payment p ON c.CourierID = p.CourierID GROUP BY c.CourierID;
 
32. List Payments Within a Date Range
     SELECT * FROM Payment WHERE PaymentDate BETWEEN '2024-04-10' AND '2024-04-25';

33. Retrieve a list of all users and their corresponding courier records, including cases where there are
no matches on either side
      SELECT u.UserID, u.Name, c.* FROM User u LEFT JOIN Courier c ON u.UserID = c.CourierID;

34. Retrieve a list of all couriers and their corresponding services, including cases where there are no
matches on either side
      SELECT c.CourierID, c.SenderName, c.ReceiverName, s.ServiceName, s.Cost 
      FROM Courier c
      LEFT JOIN CourierServices s ON c.CourierID = s.ServiceID;

35. Retrieve a list of all employees and their corresponding payments, including cases where there are
no matches on either side
      SELECT e.EmployeeID, e.Name, p.*
      FROM Employee e
      LEFT JOIN Payment p ON e.EmployeeID = p.paymentID;

36. List all users and all courier services, showing all possible combinations.
      SELECT u.UserID, u.Name, cs.*
      FROM User u
      CROSS JOIN CourierServices cs;
      
37. List all employees and all locations, showing all possible combinations:
       SELECT e.EmployeeID, e.Name, l.*
       FROM Employee e
       CROSS JOIN Location l;
 
38. Retrieve a list of couriers and their corresponding sender information (if available)
       SELECT c.CourierID, c.SenderName, c.SenderAddress FROM Courier c;

39. Retrieve a list of couriers and their corresponding receiver information (if available):
      SELECT c.CourierID, c.ReceiverName, c.ReceiverAddress FROM Courier c;

40. Retrieve a list of couriers along with the courier service details (if available):
      SELECT c.CourierID, c.SenderName, c.ReceiverName, cs.ServiceName, cs.Cost
      FROM Courier c
      LEFT JOIN CourierServices cs ON c.courierID = cs.ServiceID;

41. Retrieve a list of employees and the number of couriers assigned to each employee:
      SELECT e.EmployeeID, e.Name, COUNT(c.CourierID) AS TotalCouriersAssigned
      FROM Employee e
      LEFT JOIN Courier c ON e.EmployeeID = c.courierID
      GROUP BY e.EmployeeID;

42. Retrieve a list of locations and the total payment amount received at each location:
      SELECT l.LocationID, l.LocationName, SUM(p.Amount) AS TotalPayment
      FROM Location l
      LEFT JOIN Payment p ON l.LocationID = p.LocationID
      GROUP BY l.LocationID;

43. Retrieve all couriers sent by the same sender (based on SenderName).
      SELECT SenderName, COUNT(*) AS TotalCouriersSent
      FROM Courier
      GROUP BY SenderName;

44. List all employees who share the same role.
      SELECT Role, GROUP_CONCAT(Name) AS Employees
      FROM Employee
      GROUP BY Role;
 
45. Retrieve all payments made for couriers sent from the same location.
      SELECT l.LocationName, SUM(p.Amount) AS TotalPayment
      FROM Location l
      LEFT JOIN Payment p ON l.LocationID = p.LocationID
      GROUP BY l.LocationName; 

46. Retrieve all couriers sent from the same location (based on SenderAddress).
      SELECT SenderAddress, COUNT(*) AS TotalCouriersSent
      FROM Courier
      GROUP BY SenderAddress;

47. List employees and the number of couriers they have delivered:
      SELECT e.Name, COUNT(c.CourierID) AS TotalCouriersDelivered
      FROM Employee e
      LEFT JOIN Courier c ON e.EmployeeID = c.CourierID
      GROUP BY e.Name;

48. Find couriers that were paid an amount greater than the cost of their respective courier services
Scope: Inner Queries, Non Equi Joins, Equi joins,Exist,Any,All
      SELECT c.CourierID, c.SenderName, c.ReceiverName, p.Amount, cs.Cost
      FROM Courier c
      JOIN Payment p ON c.CourierID = p.CourierID
      JOIN CourierServices cs ON c.CourierID = cs.ServiceID
      WHERE p.Amount > cs.Cost;
  
49. Find couriers that have a weight greater than the average weight of all couriers
      SELECT CourierID, SenderName, ReceiverName, Weight
      FROM Courier
      WHERE Weight > (
      SELECT AVG(Weight)
      FROM Courier);

50. Find the names of all employees who have a salary greater than the average salary:
      SELECT Name
      FROM Employee
      WHERE Salary > (
      SELECT AVG(Salary)
      FROM Employee);

51. Find the total cost of all courier services where the cost is less than the maximum cost
      SELECT SUM(Cost) AS TotalCost
      FROM CourierServices
      WHERE Cost < (
      SELECT MAX(Cost)
      FROM CourierServices);

52. Find all couriers that have been paid for
      SELECT DISTINCT c.CourierID, c.SenderName, c.ReceiverName
      FROM Courier c
      JOIN Payment p ON c.CourierID = p.CourierID;

53. Find the locations where the maximum payment amount was made
      SELECT LocationID, LocationName
      FROM Location
      WHERE LocationID = (
      SELECT LocationID
      FROM Payment
      GROUP BY LocationID
      ORDER BY SUM(Amount) DESC
      LIMIT 1);

      
54. Find all couriers whose weight is greater than the weight of all couriers sent by a specific sender
(e.g., 'SenderName'):
      SELECT c.CourierID, c.SenderName, c.ReceiverName, c.Weight
      FROM Courier c
      WHERE c.Weight > (
      SELECT MAX(Weight)
      FROM Courier
      WHERE SenderName = 'John Doe'
