SELECT CONCAT(emp_no + ' - ' + first_name + ', ' + 'last_name') AS 'full_name', birth_date AS 'DOB'
FROM employees
ORDER BY emp_no
LIMIT 10;