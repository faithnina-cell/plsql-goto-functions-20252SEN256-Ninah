BEGIN EXECUTE IMMEDIATE 'DROP TABLE employees PURGE';   EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TABLE departments PURGE'; EXCEPTION WHEN OTHERS THEN NULL; END;
/

CREATE TABLE departments (

  department_id   NUMBER PRIMARY KEY,

  department_name VARCHAR2(50) NOT NULL

);

CREATE TABLE employees (

  employee_id NUMBER PRIMARY KEY,
  first_name VARCHAR2(50) NOT NULL,
  last_name VARCHAR2(50) NOT NULL,

  salary NUMBER(12,2),
  hire_date DATE,
  department_id NUMBER
);

INSERT INTO departments VALUES (10,'Finance');

INSERT INTO departments VALUES (20,'IT');

INSERT INTO departments VALUES (30,'Human Resources');

INSERT INTO departments VALUES (40,'Marketing');

-- Valid employees

INSERT INTO employees VALUES (101, 'Aline','Niyonsenga',230000, DATE '2017-02-18', 10);

INSERT INTO employees VALUES (102, 'Patrick','Mugabo',540000, DATE '2019-06-12', 20);

INSERT INTO employees VALUES (103, 'Diane','Uwamahoro',580000, DATE '2022-08-25', 30);

INSERT INTO employees VALUES (104, 'Eric','Habimana',44000, DATE '2023-03-14', 20);

INSERT INTO employees VALUES (105, 'Grace','Mukamana',720000, DATE '2018-10-09', 10);

-- Deliberately invalid employees (for C1 testing)

INSERT INTO employees VALUES (106, 'Kevin','Nkurunziza',0, DATE '2021-01-20', 10);   -- zero salary

INSERT INTO employees VALUES (107, 'Alice','Uwineza',400000, SYSDATE + 180, 20);       -- future hire date

INSERT INTO employees VALUES (108, 'Brian','Nsengiyumva',275000, DATE '2020-07-17', 99); -- dept does not exist

INSERT INTO employees VALUES (109, 'Claudine','Mukeshimana',500000, DATE '2020-11-23', NULL); -- no dept

COMMIT;


