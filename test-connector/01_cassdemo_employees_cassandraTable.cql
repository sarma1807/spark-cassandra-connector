-- create keyspace
CREATE KEYSPACE cassdemo WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 3} ;

-- create table
CREATE TABLE cassdemo.employees (
    department_name text,
    employee_name text,
    employee_id int,
    hire_date timestamp,
    salary decimal,
    PRIMARY KEY (department_name, employee_name)
) WITH CLUSTERING ORDER BY (employee_name ASC)
;

-- insert sample data
INSERT INTO cassdemo.employees (department_name, employee_name, employee_id, hire_date, salary) VALUES ('IT', 'Scott Tiger', 1001, '2016-01-01', 2300.00) ;
INSERT INTO cassdemo.employees (department_name, employee_name, employee_id, hire_date, salary) VALUES ('IT', 'John Dow', 1002, '2016-02-02', 2700.50) ;
INSERT INTO cassdemo.employees (department_name, employee_name, employee_id, hire_date, salary) VALUES ('Finance', 'Larry Emperor', 1003, '2016-02-15', 2250.00) ;
INSERT INTO cassdemo.employees (department_name, employee_name, employee_id, hire_date, salary) VALUES ('Sales', 'Sell Queen', 1004, '2016-03-25', 3405.20) ;

