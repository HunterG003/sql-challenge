DROP TABLE IF EXISTS Departments CASCADE;
DROP TABLE IF EXISTS Department_Employees CASCADE;
DROP TABLE IF EXISTS Department_Manager;
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Salaries;
DROP TABLE IF EXISTS Titles;

CREATE TABLE Departments(
	department_number VARCHAR(10) NOT NULL,
	department_name VARCHAR(20),
	PRIMARY KEY (department_number)
);

CREATE TABLE Department_Employees(
	employee_number Int,
	department_number VARCHAR(10),
	FOREIGN KEY (department_number) REFERENCES Departments(department_number)
);

CREATE TABLE Titles(
	title_id VARCHAR(10) NOT NULL,
	title VARCHAR(20),
	PRIMARY KEY (title_id)
);

CREATE TABLE Employees(
	employee_number Int NOT NULL,
	employee_title_id VARCHAR(10),
	birth_date Date,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	sex VARCHAR(1),
	hire_date DATE,
	PRIMARY KEY (employee_number),
	FOREIGN KEY (employee_title_id) REFERENCES Titles(title_id)
);

CREATE TABLE Department_Manager(
	department_number VARCHAR(10),
	employee_number Int,
	FOREIGN KEY (department_number) REFERENCES Departments(department_number),
	FOREIGN KEY (employee_number) REFERENCES Employees(employee_number)
);

CREATE TABLE Salaries(
	employee_number Int,
	salary Int,
	FOREIGN KEY (employee_number) REFERENCES Employees(employee_number)
);