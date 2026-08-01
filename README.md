# SQL-INTERVIEW-PRACTICE-QUESTIONS
Interview Questions to strengthen your command of SQL.

 **Overview**  
This repository contains solutions to three common SQL interview questions. These problems demonstrate the use of CTEs, Window Functions, Date Functions,   Aggregate Functions, and Subqueries, which are essential concepts for Data Analyst and SQL Developer roles.  


**📖 Question 1: Find the Top 3 Highest-Paid Employees in Each Department**  
**Objective**    
Retrieve the top three highest-paid employees from every department.  


**Concepts Used**   
**✅ Common Table Expression (CTE)**  
A CTE is a temporary named result set created using the WITH clause. It improves query readability and allows complex queries to be broken into smaller, manageable parts.  


**✅ Window Function – RANK()**  
The RANK() function assigns a rank to each employee within their department based on salary.  
PARTITION BY DepartmentID creates separate rankings for each department.  
ORDER BY Salary DESC ranks employees from highest to lowest salary.  
Employees with the same salary receive the same rank.  


**📖 Question 2: Find the Average Salary of Employees Hired in the Last 5 Years**    
**Objective**    
Calculate the average salary of employees who were hired during the last five years.  
**Concepts Used**    

**✅ Aggregate Function – AVG()**  
Calculates the average value of the Salary column.  


**✅ Date Functions**  
CURDATE() returns the current date.  
DATE_SUB() subtracts five years from the current date.  
These functions help filter employees hired within the last five years.  


**📖 Question 3: Find Employees Whose Salary is Less Than the Average Salary of Employees Hired in the Last 5 Years**    

**Objective**  
Display employees whose salary is lower than the average salary of employees hired in the last five years.  
**Concepts Used**    

**✅ Subquery**  
A subquery is a query written inside another query.  
In this example:  
The inner query calculates the average salary of employees hired in the last five years.  
The outer query compares each employee's salary with that average and returns employees earning less than it.  
This demonstrates how subqueries can be used to compare individual records against an aggregated value.  


**Skills Practiced**   
SQL  
MySQL  
CTE (Common Table Expression)  
Window Functions (RANK())  
Aggregate Functions (AVG())  
Date Functions (CURDATE(), DATE_SUB())  
Subqueries  
Filtering Data  
SQL Interview Questions  


**Learning Outcome**    
Through these exercises, I strengthened my understanding of:  
Writing clean and readable SQL queries.  
Using CTEs to simplify complex logic.  
Applying window functions for ranking data within groups.  
Working with date functions to filter records based on time.  
Using subqueries to solve comparison-based problems.  
Solving practical SQL interview questions commonly asked in Data Analyst interviews.  
⭐ If you found this repository helpful, feel free to star it and share your feedback!  
