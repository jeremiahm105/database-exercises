# Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya','Maya')
ORDER BY first_name;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya','Maya')
ORDER BY first_name, last_name;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no;

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no DESC;


