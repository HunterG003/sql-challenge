SELECT e.employee_number, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
LEFT JOIN salaries s ON e.employee_number = s.employee_number;

SELECT e.first_name, e.last_name, e.hire_date
FROM employees e
WHERE e.hire_date BETWEEN '1986-01-01' AND '1986-12-31';

SELECT d.department_number, d.department_name, m.employee_number, e.last_name, e.first_name 
FROM department_manager m
LEFT JOIN employees e ON e.employee_number = m.employee_number
LEFT JOIN departments d ON d.department_number = m.department_number;

SELECT d.department_number, dep.department_name, d.employee_number, e.first_name, e.last_name FROM department_employees d
LEFT JOIN employees e ON e.employee_number = d.employee_number
LEFT JOIN departments dep ON dep.department_number = d.department_number;

SELECT e.first_name, e.last_name, e.sex FROM employees e
WHERE e.first_name = 'Hercules' AND LIKE 'B%';
