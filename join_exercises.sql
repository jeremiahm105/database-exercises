use join_test_db;

# Insert 4 new users into the database. One should have a NULL role. The other three should be authors.
INSERT INTO users (name, email, role_id) VALUES
    ('user1', 'bob@example.com', 2),
    ('user2', 'joe@example.com', 2),
    ('user3', 'sally@example.com', 2),
    ('user4', 'adam@example.com', null);

# Join
SELECT users.name, roles.name
FROM users
JOIN roles ON users.role_id = roles.id;

# Left join
SELECT users.name, roles.name
FROM users
LEFT JOIN roles ON users.role_id = roles.id;

# RIGHT JOIN
SELECT users.name, roles.name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;

# Add Count
SELECT roles.name, COUNT(users.id) AS 'user_count'
FROM roles
JOIN users ON roles.id = users.role_id
GROUP BY roles.name;

SELECT COUNT(*) FROM users;
SELECT COUNT(*) FROM roles;

# Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.
SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
JOIN dept_emp as de ON de.emp_no = e.emp_no
JOIN departments as d ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;


# Write a query that shows each department along with the name of the current manager for that department.
SELECT d.dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager'
FROM employees AS e
JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
JOIN departments AS d ON dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name;


# Find the name of all departments currently managed by women.
SELECT d.dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager'
FROM employees AS e
JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
JOIN departments AS d ON dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01'
AND e.gender ='F'
ORDER BY d.dept_name;


# Find the current titles of employees currently working in the Customer Service department.
SELECT title, COUNT(title) AS 'Total' FROM titles AS t
JOIN dept_emp AS de ON t.emp_no = de.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Customer Service' AND de.to_date = '9999-01-01'
AND t.to_date = '9999-01-01'
GROUP BY title;


# Find the current salary of all current managers.
SELECT d.dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager', s.salary AS 'Salary'
FROM employees AS e
JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
JOIN departments AS d ON dm.dept_no = d.dept_no
JOIN salaries AS s ON e.emp_no = s.emp_no
WHERE s.to_date = '9999-01-01'
AND dm.to_date = '9999-01-01'
ORDER BY d.dept_name;