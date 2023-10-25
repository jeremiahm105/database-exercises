# In your script, use DISTINCT to find the unique titles in the titles table. Your results should look like:

SELECT DISTINCT title
FROM titles;

SELECT last_name
FROM employees
WHERE last_name like ('E%')
  AND last_name like ('%E')
GROUP BY last_name
ORDER BY last_name;

# Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'. You should get 846 rows.

SELECT first_name, last_name
FROM employees
WHERE last_name like ('E%')
  AND last_name like ('%E')
GROUP BY first_name, last_name
ORDER BY last_name;

# Find the unique last names with a 'q' but not 'qu'

SELECT last_name
FROM employees
WHERE last_name LIKE ('%q%')
    AND last_name NOT LIKE ('%qu%')
GROUP BY last_name;

# Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names.
# // Both the wold card and te column name works.
SELECT COUNT(gender), gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;
