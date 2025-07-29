-- Create the Employee table
CREATE TABLE Employee (
EmpID INT,
Ename VARCHAR(100),
Department VARCHAR(100),
ManagerID INT
);
-- Insert data into the Employee table with updated names
INSERT INTO Employee (EmpID, Ename, Department, ManagerID) VALUES
(1, 'Ishan', 'Admin', NULL),
(2, 'Priyanshu', 'Accounts', 1),
(3, 'Rohit', 'Tech', 1),
(4, 'Kaif', 'Accounts', 2),
(5, 'Lakshay', 'Tech', 3),
(6, 'Ram', 'Admin', 1);
-- Retrieve employee and their manager details
SELECT
E1.Ename AS "Employee Name",
E2.Ename AS "Manager Name",
E1.Department AS "Employee Department",
E2.Department AS "Manager Department"
FROM
Employee AS E1
LEFT JOIN
Employee AS E2
ON E1.ManagerID = E2.EmpID;