CREATE TABLE employees (
  id INT PRIMARY KEY,
  name VARCHAR(100),
  department VARCHAR(50),
  email VARCHAR(100),
  salary INT,
  join_date DATE
);

INSERT INTO employees VALUES
(1, 'Amit Sharma', 'Engineering', 'amit.sharma@gmail.com', 75000, '2022-01-15'),
(2, 'Anjali Verma', NULL, 'anjali.verma@gmail.com', 68000, '2021-11-20'),
(3, 'Rahul Mehta', 'Sales', NULL, 55000, '2023-03-10'),
(4, 'Sneha Reddy', 'Engineering', 'sneha.r@company.com', NULL, '2020-07-01'),
(5, 'Vikram Singh', 'Sales', 'vikram.singh@gmail.com', 60000, NULL),
(6, 'Arjun Kumar', NULL, NULL, 72000, '2022-09-05'),
(7, 'Priya Nair', 'HR', 'priya.nair@company.com', 58000, '2023-01-12'),
(8, 'Kiran Kumar', 'Engineering', 'kiran.k@company.com', 80000, '2019-05-30');

select * from employees;

CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_code VARCHAR(50),
  product_name VARCHAR(50)
);

INSERT INTO products VALUES
(101, 'PROD%001', 'Laptop'),
(102, 'PROD_002', 'Mouse'),
(103, 'PROD%_003', 'Keyboard'),
(104, 'PROD004', 'Monitor'),
(105, 'PROD_005%OFF', 'Chair');


-- Tasks: Find all employees where email is NULL.
select * 
from employees
where email is null;

-- Find all employees where department is NOT NULL.
select *
from employees
where department is not null;

-- Count how many employees have NULL in department

select COUNT(*) as dept_nullcount
from employees
where department is null;

-- Display name, department. If department is NULL, show 'Not Assigned' using COALESCE() or IFNULL().

select name,
COALESCE(department, 'not assaigned') AS department
from employees;
-- Find employees where both email AND department are NULL.

select *
from employees
where department is null and email is null;

-- LIKE : Find employees whose name starts with 'A'.

select *
from employees
where name like 'A%';

--  Find employees whose name ends with 'r'
select *
from employees
where name like '%r';

--  Find employees where department contains 'ee' (like Engineering).
select *
from employees
where department like '%ee%';

-- Find employees where the second letter of name is 'i'. Use _ wildcard.

select *
from employees
where name like '_i%';

--  Find employees whose email contains 'gmail'.

select *
from employees
where email like '%gmail%';

--  Find products where product_code contains a literal % character.
select *
from products
where product_code like '%$%%' escape '$';

-- Find products where product_code contains a literal _ character.
select *
from products
where product_code like '%$_%' escape '$';

-- Find products where product_code contains both % and _ literally.

select * 
from products
where product_code like '%$%%$_%' escape '$';

-- Do Q11 again but use ESCAPE '!' clause. Example: LIKE '%!%%' ESCAPE '!'
select *
from products
where product_code like '%!%%' escape '!';

-- Get a list of unique departments from employees.

select distinct department
from employees;

--  Get unique departments where salary is not null.

select distinct department
from employees
where salary is not null;

-- Count how many distinct departments exist 
select count(distinct department) as dist_dept_count
from employees;

--  List all employees sorted by salary in ascending order.
select * 
from employees
order by salary;

-- List all employees sorted by salary in descending order. NULL salaries should appear last. 
select * 
from employees
order by salary desc;

-- List employees sorted by join_date - newest joinee first.

select * 
from employees
order by join_date desc;

-- Sort by department ASC, and within same department by salary DESC

select * 
from employees
order by department asc, salary desc;

