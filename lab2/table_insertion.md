

<br>INSERT INTO Department (Dep_No, Dep_Name, Loc, Mgr, Exp_Bdg, Rev_Bdg)
<br>VALUES
<br>    (60, 'Shipping', 'Trivandrum', 215, 90000, 0),
<br>    (10, 'Accounting', 'Cochin', 200, 100000, 0),
<br>    (30, 'Research', 'Cochin', 105, 125000, 0),
<br>    (40, 'Sales', 'Trichur', 109, 280000, 8000),
<br>    (50, 'Manufacturing', 'Kottayam', 210, 130000, 0);


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
