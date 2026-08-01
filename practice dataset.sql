USE practice_questions;



CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

INSERT INTO Department VALUES
(1, 'HR'),
(2, 'Engineering'),
(3, 'Sales'),
(4, 'Finance'),
(5, 'Marketing');


CREATE TABLE Employees (
    EmployeeID   INT PRIMARY KEY,
    FirstName    VARCHAR(50),
    LastName     VARCHAR(50),
    DepartmentID INT,
    Salary       INT,
    DateHired    DATE,
    CONSTRAINT fk_dept_id FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);


INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentID, Salary, DateHired)
VALUES
(1,  'Alice',   'Smith',    1, 50000, '2020-01-15'),
(2,  'Bob',     'Johnson',  1, 60000, '2018-03-22'),
(3,  'Charlie', 'Williams', 2, 70000, '2019-07-30'),
(4,  'David',   'Brown',    2, 80000, '2017-11-11'),
(5,  'Eve',     'Davis',    3, 90000, '2021-02-25'),
(6,  'Frank',   'Miller',   3, 55000, '2020-09-10'),
(7,  'Grace',   'Wilson',   2, 75000, '2016-04-05'),
(8,  'Henry',   'Moore',    1, 65000, '2022-06-17'),
(9,  'Ivy',     'Taylor',   4, 72000, '2021-08-12'),
(10, 'Jack',    'Anderson', 4, 85000, '2019-05-19'),
(11, 'Karan',   'Thomas',   5, 48000, '2023-01-10'),
(12, 'Linda',   'Jackson',  5, 62000, '2020-12-05'),
(13, 'Mohan',   'White',    1, 58000, '2021-04-18'),
(14, 'Nina',    'Harris',   2, 95000, '2022-09-21'),
(15, 'Om',      'Martin',   3, 67000, '2018-10-30'),
(16, 'Priya',   'Lee',      4, 76000, '2020-03-14'),
(17, 'Rahul',   'Clark',    5, 69000, '2017-07-25'),
(18, 'Sara',    'Lewis',    3, 88000, '2023-06-11'),
(19, 'Tina',    'Walker',   2, 82000, '2021-11-09'),
(20, 'Umesh',   'Hall',     1, 54000, '2019-02-28'),
(21, 'Vikas',   'Allen',    4, 91000, '2022-12-15'),
(22, 'Wendy',   'Young',    5, 73000, '2021-01-22'),
(23, 'Xavier',  'King',     3, 61000, '2020-07-07'),
(24, 'Yash',    'Scott',    2, 78000, '2023-03-03'),
(25, 'Zoya',    'Green',    1, 70000, '2018-08-16');
