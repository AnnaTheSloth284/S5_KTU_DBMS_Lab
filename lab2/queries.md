### Queries
##### 1. Return details of all managers from employee table sorted alphabetically by name.
SELECT *
<br>FROM Employee
<br>WHERE Dep_No = 40
<br>ORDER BY Empno;

<img width="410" alt="Screenshot 2023-09-02 at 12 45 14 AM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/aa16483a-492a-4449-8a32-a0e8cc9447f7">

##### 2. Return details of all employees in department 40 ordered by EMPNO.
SELECT *
<br>FROM Employee
<br>WHERE Sex = 'F'
<br>ORDER BY Name;

<img width="440" alt="Screenshot 2023-09-02 at 12 45 45 AM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/83636ecd-e2b0-48d3-abef-40f866af9979">

##### 3. Return information about all female employee ordered by NAME.
SELECT *
<br>FROM Employee
<br>WHERE Sex = 'F'
<br>ORDER BY Name;

<img width="428" alt="Screenshot 2023-09-02 at 12 47 22 AM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/a94453a0-2b72-40b1-ab69-ae80edfa5f55">

##### 4. Find Minimum, Maximum and Average salary of employees in each department.
SELECT Dep_No, MIN(Salary) AS Min_Salary, MAX(Salary) AS Max_Salary, AVG(Salary) AS Avg_Salary
<br>FROM Employee
<br>GROUP BY Dep_No;

<img width="567" alt="Screenshot 2023-09-02 at 12 47 51 AM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/d11e5249-f96a-4b08-a175-c61618262e73">

##### 5. Find Maximum and Minimum commission paid(COMM),total commission paid and count of employees who were paid with commission.
SELECT MAX(Comm) AS Max_Comm, MIN(Comm) AS Min_Comm, SUM(Comm) AS Total_Comm, COUNT(*) AS Count_With_Comm
<br>FROM Employee
<br>WHERE Comm IS NOT NULL;

<img width="597" alt="Screenshot 2023-09-02 at 12 49 46 AM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/b50f3dcf-a73f-4984-bd03-d39867efa1a5">

##### 6. Number of employees listed in each job.
<br>SELECT Job, COUNT(*) AS Num_Employees
<br>FROM Employee
<br>GROUP BY Job;

<img width="321" alt="Screenshot 2023-09-02 at 12 50 28 AM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/c6e20c74-0424-4a9b-96a4-523f2d75a9ad">

##### 7. Total salary paid to each job in the category.
SELECT Job, SUM(Salary) AS Total_Salary
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
SELECT DISTINCT Dep_No
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
SELECT Empno, Name, Salary
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
SELECT Empno, Name, Salary
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

