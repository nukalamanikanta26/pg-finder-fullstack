CREATE TABLE employee1 (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    experience_years INT
);

INSERT INTO employee1 VALUES
(1, 'Arjun', 'Reddy', 'IT', 75000, 2),
(2, 'Sneha', 'Patel', 'HR', 60000, 5),
(3, 'Ravi', 'Kumar', 'Finance', 82000, 4),
(4, 'Priya', 'Sharma', 'IT', 90000, 6),
(5, 'Amit', 'Verma', 'Finance', 65000, 3),
(6, 'Kavya', 'Naidu', 'HR', 58000, 1),
(7, 'Rohan', 'Singh', 'IT', 95000, 7),
(8, 'Anjali', 'Gupta', 'Finance', 72000, 4),
(9, 'Vikram', 'Rao', 'IT', 88000, 5),
(10, 'Pooja', 'Mehta', 'HR', 62000, 2);

select * from employee1;

-- Tasks -- 

-- Display first_name as FirstName and salary as Monthly_Salary. Order the result by Monthly_Salary DESC.

select first_name "FirstName", salary "Monthly_Salary"
from employee1
order by Monthly_Salary desc;

--  Display department as Dept and experience_years as Exp. Order by Exp alias.

select department "Dept", experience_years "Exp"
from employee1
order by Exp;

--  Use an alias with a space: Display salary as Annual Package. Order by Annual Package ASC.

select salary as `Annual Package`
from employee1
order by `Annual Package` asc;

-- Display first_name, salary as CTC. Sort by CTC but show only employees from IT department.

select first_name, salary CTC
from employee1
where department='IT'
order by CTC asc;

-- Display emp_id, first_name, salary * 12 as Yearly_Salary. Order by Yearly_Salary DESC.

select emp_id,first_name,salary*12 "Yearly_Salary"
from employee1
order by Yearly_Salary desc;

--  Count total number of employees and display it as Total_Staff.

select count(*) Total_Staff
from employee1;


--  Find the total salary expense of the company as Total_Salary_Payout.

select sum(salary) Total_Salary_Payout
from employee1;

--  Find average, minimum and maximum salary in the company. Alias them as Avg_Salary, Min_Salary, Max_Salary.

select avg(salary) "Avg_Salary",min(salary) "Min_Salary" ,max(salary) "Max_Salary"
from employee1;


--  Find the number of employees in each department. Display department and COUNT(*) AS Emp_Count.
SELECT department, COUNT(*) AS Emp_Count
FROM employee1
GROUP BY department;

-- Find average experience per department. Display as Dept, Avg_Exp
SELECT department AS Dept, AVG(experience_years) AS Avg_Exp
FROM employee1
GROUP BY department;
-- Find the highest experienced employee's experience as Max_Experience

select max(experience_years) as Max_Experiece
from employee1;

