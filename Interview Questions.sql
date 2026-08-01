-- Find the Top 3 highest paid Employees in Each Department
WITH rank_table AS (SELECT e.firstname, e.lastname, e.salary,d.departmentname,
RANK() OVER(PARTITION BY e.departmentid ORDER BY e.salary DESC) rank_
FROM employees e
JOIN department d
ON d.departmentid = e.departmentid)

SELECT * FROM rank_table
WHERE rank_ <=3;

-- Find the Average salary of Employees hired in last 5 years.
SELECT AVG(salary) FROM employees
WHERE datehired >= DATE_SUB(CURDATE(), INTERVAL 5 YEAR);

-- Find Employees whose salary is less than the average salary of employees hired in the last 5 years.
SELECT firstname, lastname, salary FROM employees
where salary < (SELECT AVG(salary) FROM employees
				WHERE datehired >= DATE_SUB(CURDATE(), INTERVAL 5 YEAR));
                
                
                
                
                







