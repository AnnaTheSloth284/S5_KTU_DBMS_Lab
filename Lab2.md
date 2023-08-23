<br>Department Table Creation and Data Insertion
<br>CREATE TABLE Department (
<br>    Dep_No INT PRIMARY KEY NOT NULL,
<br>    Dep_Name VARCHAR(30) NOT NULL,
<br>    Loc VARCHAR(30) NOT NULL,
<br>    Mgr INT NOT NULL,
<br>    Exp_Bdg INT NOT NULL,
<br>    Rev_Bdg INT NOT NULL
<br>);

<br>INSERT INTO Department (Dep_No, Dep_Name, Loc, Mgr, Exp_Bdg, Rev_Bdg)
<br>VALUES
<br>    (60, 'Shipping', 'Trivandrum', 215, 90000, 0),
<br>    (10, 'Accounting', 'Cochin', 200, 100000, 0),
<br>    (30, 'Research', 'Cochin', 105, 125000, 0),
<br>    (40, 'Sales', 'Trichur', 109, 280000, 8000),
<br>    (50, 'Manufacturing', 'Kottayam', 210, 130000, 0);

<br>Employee Table Creation and Data Insertion
<br>CREATE TABLE Employee (
<br>    Empno INT NOT NULL,
<br>    Name VARCHAR(15) NOT NULL,
<br>    Job VARCHAR(15) NOT NULL,
<br>    Salary INT NOT NULL,
<br>    Comm VARCHAR(15),
<br>    Dep_No INT,
<br>    Sex VARCHAR(6),
<br>    PRIMARY KEY (Empno),
<br>    FOREIGN KEY (Dep_No) REFERENCES Department(Dep_No)
<br>);

<br>INSERT INTO Employee (Empno, Name, Job, Salary, Dep_No, Sex)
<br>VALUES
<br>    (100, 'Wilson', 'CLRK', 17000, 10, 'M'),
<br>    (101, 'Smitha', 'SLSM', 25000, 40, 'F'),
<br>    (103, 'Roy', 'ANLST', 35000, 30, 'M'),
<br>    (105, 'Watson', 'MNGR', 45000, 30, 'M'),
<br>    (109, 'Alan', 'MNGR', 30000, 40, 'M'),
<br>    (110, 'Tina', 'CLRK', 18000, 50, 'F'),
<br>    (200, 'Karthika', 'MNGR', 29000, 10, 'F'),
<br>    (210, 'Rita', 'MNGR', 36500, 50, 'F'),
<br>    (213, 'Manacy', 'CLRK', 16250, 10, 'F'),
<br>    (214, 'Simpson', 'DRVR', 8250, 60, 'M'),
<br>    (215, 'Deepa', 'ANLST', 27000, 60, 'F'),
<br>    (220, 'Soosan', 'SLSM', 28500, 60, 'F');

<br>UPDATE Employee
<br>SET Comm = 3000
<br>WHERE Empno = 101;

<br>UPDATE Employee
<br>SET Comm = 0
<br>WHERE Empno = 105;

<br>UPDATE Employee
<br>SET Comm = 8000
<br>WHERE Empno = 109;

<br>UPDATE Employee
<br>SET Comm = 5300
<br>WHERE Empno = 220;

<br>select * from Employee;
<br>+-------+----------+-------+--------+------+--------+------+
<br>| Empno | Name     | Job   | Salary | Comm | Dep_No | Sex  |
<br>+-------+----------+-------+--------+------+--------+------+
<br>|   100 | Wilson   | CLRK  |  17000 | NULL |     10 | M    |
<br>|   101 | Smitha   | SLSM  |  25000 | 3000 |     40 | F    |
<br>|   103 | Roy      | ANLST |  35000 | NULL |     30 | M    |
<br>|   105 | Watson   | MNGR  |  45000 | 0    |     30 | M    |
<br>|   109 | Alan     | MNGR  |  30000 | 8000 |     40 | M    |
<br>|   110 | Tina     | CLRK  |  18000 | NULL |     50 | F    |
<br>|   200 | Karthika | MNGR  |  29000 | NULL |     10 | F    |
<br>|   210 | Rita     | MNGR  |  36500 | NULL |     50 | F    |
<br>|   213 | Manacy   | CLRK  |  16250 | NULL |     10 | F    |
<br>|   214 | Simpson  | DRVR  |   8250 | NULL |     60 | M    |
<br>|   215 | Deepa    | ANLST |  27000 | NULL |     60 | F    |
<br>|   220 | Soosan   | SLSM  |  28500 | 5300 |     60 | F    |
<br>+-------+----------+-------+--------+------+--------+------+
<br>12 rows in set (0.00 sec)

<br>Dependant Table Creation and Data Insertion
<br>CREATE TABLE Dependant (
<br>    Pid INT NOT NULL,
<br>    Fname VARCHAR(15) NOT NULL,
<br>    Lname VARCHAR(15) NOT NULL,
<br>    Place VARCHAR(15) NOT NULL,
<br>    Empno INT NOT NULL,
<br>    PRIMARY KEY (Pid),
<br>    FOREIGN KEY (Empno) REFERENCES Employee(Empno)
<br>);


<br>INSERT INTO Dependant (Pid, Fname, Lname, Place, Empno)
<br>VALUES
<br>    (1010, 'Anu', 'Jose', 'Trivandrum', 214),
<br>    (1020, 'Neenu', 'Thomas', 'Kollam', 200),
<br>    (1022, 'Anamika', 'Thampi', 'Kollam', 200),
<br>    (1031, 'Swetha', 'Das', 'Kottayam', 109);

<br>select * from Dependant;
<br>+------+---------+--------+------------+-------+
<br>| Pid  | Fname   | Lname  | Place      | Empno |
<br>+------+---------+--------+------------+-------+
<br>| 1010 | Anu     | Jose   | Trivandrum |   214 |
<br>| 1020 | Neenu   | Thomas | Kollam     |   200 |
<br>| 1022 | Anamika | Thampi | Kollam     |   200 |
<br>| 1031 | Swetha  | Das    | Kottayam   |   109 |
<br>+------+---------+--------+------------+-------+
<br>4 rows in set (0.01 sec)

<br>QUESTIONS
<br>1. Return details of all managers from employee table sorted alphabetically by name.
<br>SELECT *
<br>FROM Employee
<br>WHERE Dep_No = 40
<br>ORDER BY Empno;

<br>+-------+--------+------+--------+------+--------+------+
<br>| Empno | Name   | Job  | Salary | Comm | Dep_No | Sex  |
<br>+-------+--------+------+--------+------+--------+------+
<br>|   101 | Smitha | SLSM |  25000 | 3000 |     40 | F    |
<br>|   109 | Alan   | MNGR |  30000 | 8000 |     40 | M    |
<br>+-------+--------+------+--------+------+--------+------+
<br>2 rows in set (0.00 sec)

<br>2. Return details of all employees in department 40 ordered by EMPNO.
<br>SELECT *
<br>FROM Employee
<br>WHERE Sex = 'F'
<br>ORDER BY Name;

+-------+----------+-------+--------+------+--------+------+
<br>| Empno | Name     | Job   | Salary | Comm | Dep_No | Sex  |
<br>+-------+----------+-------+--------+------+--------+------+
<br>|   215 | Deepa    | ANLST |  27000 | NULL |     60 | F    |
<br>|   200 | Karthika | MNGR  |  29000 | NULL |     10 | F    |
<br>|   213 | Manacy   | CLRK  |  16250 | NULL |     10 | F    |
<br>|   210 | Rita     | MNGR  |  36500 | NULL |     50 | F    |
<br>|   101 | Smitha   | SLSM  |  25000 | 3000 |     40 | F    |
<br>|   220 | Soosan   | SLSM  |  28500 | 5300 |     60 | F    |
<br>|   110 | Tina     | CLRK  |  18000 | NULL |     50 | F    |
<br>+-------+----------+-------+--------+------+--------+------+
<br>7 rows in set (0.00 sec)

<br>3. Return information about all female employee ordered by NAME.
<br>SELECT *
<br>FROM Employee
<br>WHERE Sex = 'F'
<br>ORDER BY Name;

<br>+-------+----------+-------+--------+------+--------+------+
<br>| Empno | Name     | Job   | Salary | Comm | Dep_No | Sex  |
<br>+-------+----------+-------+--------+------+--------+------+
<br>|   215 | Deepa    | ANLST |  27000 | NULL |     60 | F    |
<br>|   200 | Karthika | MNGR  |  29000 | NULL |     10 | F    |
<br>|   213 | Manacy   | CLRK  |  16250 | NULL |     10 | F    |
<br>|   210 | Rita     | MNGR  |  36500 | NULL |     50 | F    |
<br>|   101 | Smitha   | SLSM  |  25000 | 3000 |     40 | F    |
<br>|   220 | Soosan   | SLSM  |  28500 | 5300 |     60 | F    |
<br>|   110 | Tina     | CLRK  |  18000 | NULL |     50 | F    |
<br>+-------+----------+-------+--------+------+--------+------+
<br>7 rows in set (0.00 sec)

<br>4. Find Minimum, Maximum and Average salary of employees in each department.
<br>SELECT Dep_No, MIN(Salary) AS Min_Salary, MAX(Salary) AS Max_Salary, AVG(Salary) AS Avg_Salary
<br>FROM Employee
<br>GROUP BY Dep_No;

<br>+--------+------------+------------+------------+
<br>| Dep_No | Min_Salary | Max_Salary | Avg_Salary |
<br>+--------+------------+------------+------------+
<br>|     10 |      16250 |      29000 | 20750.0000 |
<br>|     30 |      35000 |      45000 | 40000.0000 |
<br>|     40 |      25000 |      30000 | 27500.0000 |
<br>|     50 |      18000 |      36500 | 27250.0000 |
<br>|     60 |       8250 |      28500 | 21250.0000 |
<br>+--------+------------+------------+------------+
<br>5 rows in set (0.00 sec)

<br>5. Find Maximum and Minimum commission paid(COMM),total commission paid and count of employees who were paid with commission.
<br>SELECT MAX(Comm) AS Max_Comm, MIN(Comm) AS Min_Comm, SUM(Comm) AS Total_Comm, COUNT(*) AS Count_With_Comm
<br>FROM Employee
<br>WHERE Comm IS NOT NULL;

<br>+----------+----------+------------+-----------------+
<br>| Max_Comm | Min_Comm | Total_Comm | Count_With_Comm |
<br>+----------+----------+------------+-----------------+
<br>| 8000     | 0        |      16300 |               4 |
<br>+----------+----------+------------+-----------------+
<br>1 row in set (0.00 sec)

<br>6. Number of employees listed in each job.
<br>SELECT Job, COUNT(*) AS Num_Employees
<br>FROM Employee
<br>GROUP BY Job;

<br>+-------+---------------+
<br>| Job   | Num_Employees |
<br>+-------+---------------+
<br>| CLRK  |             3 |
<br>| SLSM  |             2 |
<br>| ANLST |             2 |
<br>| MNGR  |             4 |
<br>| DRVR  |             1 |
<br>+-------+---------------+
<br>5 rows in set (0.01 sec)

<br>7. Total salary paid to each job in the category.
<br>SELECT Job, SUM(Salary) AS Total_Salary
<br>FROM Employee
<br>GROUP BY Job;

<br>+-------+--------------+
<br>| Job   | Total_Salary |
<br>+-------+--------------+
<br>| CLRK  |        51250 |
<br>| SLSM  |        53500 |
<br>| ANLST |        62000 |
<br>| MNGR  |       140500 |
<br>| DRVR  |         8250 |
<br>+-------+--------------+
<br>5 rows in set (0.00 sec)

<br>8. Return all DEPT_ÑOs in employee table(Ensure that each DEPT_ÑO appears only once).
<br>SELECT DISTINCT Dep_No
<br>FROM Employee;

<br>+--------+
<br>| Dep_No |
<br>+--------+
<br>|     10 |
<br>|     30 |
<br>|     40 |
<br>|     50 |
<br>|     60 |
<br>+--------+
<br>5 rows in set (0.00 sec)

<br>9. Return EMPNO,NAME and SALARY of females in department 10.
<br>SELECT Empno, Name, Salary
<br>FROM Employee
<br>WHERE Sex = 'F' AND Dep_No = 10;

<br>+-------+----------+--------+
<br>| Empno | Name     | Salary |
<br>+-------+----------+--------+
<br>|   200 | Karthika |  29000 |
<br>|   213 | Manacy   |  16250 |
<br>+-------+----------+--------+
<br>2 rows in set (0.00 sec)

<br>10.Return EMPNO, NAME and SALARY of all male managers ordered by NAME.
<br>SELECT Empno, Name, Salary
<br>FROM Employee
<br>WHERE Sex = 'M' AND Job = 'MNGR'
<br>ORDER BY Name;

<br>+-------+--------+--------+
<br>| Empno | Name   | Salary |
<br>+-------+--------+--------+
<br>|   109 | Alan   |  30000 |
<br>|   105 | Watson |  45000 |
<br>+-------+--------+--------+
<br>2 rows in set (0.00 sec)
