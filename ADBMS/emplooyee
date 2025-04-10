-- **Create Tables**

-- Table: EMPLOYEE
CREATE TABLE EMPLOYEE (
    ENAME VARCHAR(25) PRIMARY KEY,  -- Employee name (Primary Key)
    CITY VARCHAR(25)               -- City where the employee resides
);

-- Table: COMPANY
CREATE TABLE COMPANY (
    CNAME VARCHAR(25) PRIMARY KEY,  -- Company name (Primary Key)
    CITY VARCHAR(25)               -- City where the company is located
);

-- Table: EMP_COMPANY (Many-to-Many relationship between EMPLOYEE and COMPANY)
CREATE TABLE EMP_COMPANY (
    ENAME VARCHAR(25),             -- Employee name (Foreign Key)
    CNAME VARCHAR(25),             -- Company name (Foreign Key)
    SALARY DECIMAL(10,2),          -- Salary of the employee in the company
    JDATE DATE,                    -- Joining date of the employee in the company
    PRIMARY KEY (ENAME, CNAME),    -- Composite Primary Key (ENAME + CNAME)
    FOREIGN KEY (ENAME) REFERENCES EMPLOYEE(ENAME) ON DELETE CASCADE,  -- Cascade delete if EMPLOYEE is deleted
    FOREIGN KEY (CNAME) REFERENCES COMPANY(CNAME) ON DELETE CASCADE    -- Cascade delete if COMPANY is deleted
);

-- Table: MANAGER
CREATE TABLE MANAGER (
    ENAME VARCHAR(25) PRIMARY KEY,  -- Employee name (Foreign Key and Primary Key)
    MNAME VARCHAR(25),              -- Manager name
    FOREIGN KEY (ENAME) REFERENCES EMPLOYEE(ENAME) ON DELETE CASCADE  -- Cascade delete if EMPLOYEE is deleted
);

-- Table: EMP_SHIFT
CREATE TABLE EMP_SHIFT (
    ENAME VARCHAR(25) PRIMARY KEY,  -- Employee name (Foreign Key and Primary Key)
    SHIFT CHAR(1),                  -- Shift of the employee (e.g., 'A', 'B', 'C')
    FOREIGN KEY (ENAME) REFERENCES EMPLOYEE(ENAME) ON DELETE CASCADE  -- Cascade delete if EMPLOYEE is deleted
);


-- **B. Insert a few records into each of these tables**

-- Insert records into EMPLOYEE table
INSERT INTO EMPLOYEE (ENAME, CITY) VALUES
('John Doe', 'Mumbai'),
('Jane Smith', 'Nagpur'),
('Raj Patel', 'Pune'),
('Alice Williams', 'Nagpur'),
('Sunil Kumar', 'Bangalore');

-- Insert records into COMPANY table
INSERT INTO COMPANY (CNAME, CITY) VALUES
('ACC', 'Mumbai'),
('TATA', 'Pune'),
('INFOSYS', 'Bangalore'),
('WIPRO', 'Delhi');

-- Insert records into EMP_COMPANY table
INSERT INTO EMP_COMPANY (ENAME, CNAME, SALARY, JDATE) VALUES
('John Doe', 'ACC', 12000.00, '2023-01-01'),
('Jane Smith', 'TATA', 9500.00, '2022-06-15'),
('Raj Patel', 'ACC', 15000.00, '2021-08-19'),
('Alice Williams', 'INFOSYS', 8000.00, '2022-03-10'),
('Sunil Kumar', 'WIPRO', 10500.00, '2022-07-25');

-- Insert records into MANAGER table
INSERT INTO MANAGER (ENAME, MNAME) VALUES
('John Doe', 'Sandeep Verma'),
('Jane Smith', 'Rahul Mehta'),
('Raj Patel', 'Sunil Joshi'),
('Alice Williams', 'Ravi Kumar'),
('Sunil Kumar', 'Priya Suresh');

-- Insert records into EMP_SHIFT table
INSERT INTO EMP_SHIFT (ENAME, SHIFT) VALUES
('John Doe', 'A'),
('Jane Smith', 'B'),
('Raj Patel', 'C'),
('Alice Williams', 'A'),
('Sunil Kumar', 'B');



-- **C. List names of the companies located in Mumbai:**

SELECT CNAME 
FROM COMPANY 
WHERE CITY = 'Mumbai';


-- **D. List names of the employees living in Nagpur:**

SELECT ENAME 
FROM EMPLOYEE 
WHERE CITY = 'Nagpur';


-- **E. List names of the employees who work for ACC and receive salary greater than Rs 10000:**

SELECT E.ENAME 
FROM EMPLOYEE E
JOIN EMP_COMPANY EC ON E.ENAME = EC.ENAME
WHERE EC.CNAME = 'ACC' AND EC.SALARY > 10000;


-- **F. List names of the employees who are not employees of the ACC:**

SELECT ENAME 
FROM EMPLOYEE 
WHERE ENAME NOT IN (SELECT ENAME FROM EMP_COMPANY WHERE CNAME = 'ACC');


-- **G. List the names of the employees from ACC and TATA:**

SELECT ENAME 
FROM EMP_COMPANY 
WHERE CNAME IN ('ACC', 'TATA');


-- **H. Display names of the employees who live in the same city where their company is located:**

SELECT E.ENAME 
FROM EMPLOYEE E
JOIN EMP_COMPANY EC ON E.ENAME = EC.ENAME
JOIN COMPANY C ON EC.CNAME = C.CNAME
WHERE E.CITY = C.CITY;


-- **I. Display the employees who live in Bombay but are employed in a company located at Delhi:**

SELECT E.ENAME 
FROM EMPLOYEE E
JOIN EMP_COMPANY EC ON E.ENAME = EC.ENAME
JOIN COMPANY C ON EC.CNAME = C.CNAME
WHERE E.CITY = 'Bombay' AND C.CITY = 'Delhi';


-- **J. Display Sunil's salary and manager:**

SELECT EC.SALARY, M.MNAME 
FROM EMP_COMPANY EC
JOIN MANAGER M ON EC.ENAME = M.ENAME
WHERE EC.ENAME = 'Sunil Kumar';
