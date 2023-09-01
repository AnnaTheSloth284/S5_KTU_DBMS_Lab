### Queries
##### 1. Return details of all managers from employee table sorted alphabetically by name.
SELECT *
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

##### 2. Return details of all employees in department 40 ordered by EMPNO.
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

##### 3. Return information about all female employee ordered by NAME.
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

##### 4. Find Minimum, Maximum and Average salary of employees in each department.
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

##### 5. Find Maximum and Minimum commission paid(COMM),total commission paid and count of employees who were paid with commission.
<br>SELECT MAX(Comm) AS Max_Comm, MIN(Comm) AS Min_Comm, SUM(Comm) AS Total_Comm, COUNT(*) AS Count_With_Comm
<br>FROM Employee
<br>WHERE Comm IS NOT NULL;

<br>+----------+----------+------------+-----------------+
<br>| Max_Comm | Min_Comm | Total_Comm | Count_With_Comm |
<br>+----------+----------+------------+-----------------+
<br>| 8000     | 0        |      16300 |               4 |
<br>+----------+----------+------------+-----------------+
<br>1 row in set (0.00 sec)

##### 6. Number of employees listed in each job.
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

##### 7. Total salary paid to each job in the category.
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

##### 8. Return all DEPT_ÑOs in employee table(Ensure that each DEPT_ÑO appears only once).
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

##### 9. Return EMPNO,NAME and SALARY of females in department 10.
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

##### 10.Return EMPNO, NAME and SALARY of all male managers ordered by NAME.
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

