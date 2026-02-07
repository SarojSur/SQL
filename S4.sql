CREATE TABLE IF NOT EXISTS DEPARTMENTS (
    EMPLOYEE_ID TEXT,
    NAME TEXT, 
    DEPARTMENT_ID TEXT,
    MANAGER_ID TEXT,
    SALARY REAL
);

-- Insert sample data into the DEPARTMENT table

INSERT INTO DEPARTMENTS (EMPLOYEE_ID, NAME, DEPARTMENT_ID, MANAGER_ID, SALARY) VALUES

('100', 'STEVEN KING', '90', '100', 24000),

('101', 'NEENA KOCHCAR', '90', '100', 17000),

('102', 'LEX DEHAAN', '90', '102', 9000),

('103', 'BRUCE LEE', '60', '103', 4800),

('104', 'DIANA WILLS', '60', '103', 25000),

('105', 'VALLI PATOR', '50', '100', 4200),

('1973', 'LUV HAMI', '60', '102', 5000),

('106', 'DAVID AUSTIN', '90','100', 6000);

-- Query to sum the salary of each DEPARTMENT
SELECT DEPARTMENT_id, SUM(salary)
FROM DEPARTMENTS
GROUP BY DEPARTMENT_id;

-- Query to count the number of employees and sum the salary in each department
SELECT  DEPARTMENT_id AS "DEPARTMENT Code",
    COUNT(*) AS "No of Employees",
    SUM(salary) AS "Total Salary"
FROM DEPARTMENTS
GROUP BY DEPARTMENT_id;

-- Query to sum the salary of employees with a specific manager
SELECT DEPARTMENT_id AS "DEPARTMENT Code",
    SUM(salary) AS "Total Salary"
FROM DEPARTMENTS
WHERE MANAGER_ID = '103'
GROUP BY department_id;

-- Query to find departments with more than 2 employees
SELECT DEPARTMENT_id, COUNT(*) AS "No. of Employees"
FROM DEPARTMENTS
GROUP BY DEPARTMENT_id
HAVING COUNT(*) > 2;