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

<img width="336" alt="Screenshot 2023-09-02 at 12 52 26 AM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/8fd222d5-00e8-4edf-a6f6-8dae6f84e8bf">

##### 8. Return all DEPT_ÑOs in employee table(Ensure that each DEPT_ÑO appears only once).
SELECT DISTINCT Dep_No
<br>FROM Employee;

<img width="222" alt="Screenshot 2023-09-02 at 12 53 10 AM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/a659735b-48cb-4f15-8748-3086720fda9a">

##### 9. Return EMPNO,NAME and SALARY of females in department 10.
SELECT Empno, Name, Salary
<br>FROM Employee
<br>WHERE Sex = 'F' AND Dep_No = 10;

<img width="286" alt="Screenshot 2023-09-02 at 12 53 46 AM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/aae14896-c1b3-4d7f-8b67-4ecea7ea1885">

##### 10.Return EMPNO, NAME and SALARY of all male managers ordered by NAME.
SELECT Empno, Name, Salary
<br>FROM Employee
<br>WHERE Sex = 'M' AND Job = 'MNGR'
<br>ORDER BY Name;

<img width="283" alt="Screenshot 2023-09-02 at 12 54 14 AM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/57fb61a9-c1ef-40a2-b2e6-42d6f7cade73">

##### 11.Return NAME and JOB of all female sales man and managers.
SELECT Name, Job
<br>FROM Employee
<br>WHERE Sex = 'F' AND (Job = 'SLSM' OR Job = 'MNGR');

<img width="419" alt="Screenshot 2023-09-02 at 1 00 01 AM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/b3245147-72c5-4c55-9391-5e62c9b21e67">

##### 12.Display EMPNO and NAME of employees in employee table who are a either manager or a clerk in department 50.
SELECT Empno, Name
<br>FROM Employee
<br>WHERE (Job = 'MNGR' OR Job = 'CLRK') AND Dep_No = 50;

<img width="431" alt="Screenshot 2023-09-02 at 1 00 30 AM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/803c4a65-5eb2-498a-95e9-3fe4f18d542e">

##### 13.List the name of employee who are neither a clerk nor a salesman.
SELECT Name
<br>FROM Employee
<br>WHERE Job NOT IN ('CLRK', 'SLSM');

<img width="297" alt="Screenshot 2023-09-02 at 1 01 14 AM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/f4f7b5fd-7047-418e-8bb9-3c42aa53168c">

##### 14.Return details of all clerks working in departments other than department 10.
SELECT *
<br>FROM Employee
<br>WHERE Job = 'CLRK' AND Dep_No <> 10;

<img width="396" alt="Screenshot 2023-09-02 at 1 01 47 AM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/dcd110f5-1d3c-4ba8-9e41-b88f3bf914cd">

##### 15. Find names of employees containing letters U and E.
<br>SELECT Name
<br>FROM Employee
<br>WHERE Name LIKE '%U%' AND Name LIKE '%E%';

<img width="357" alt="Screenshot 2023-09-02 at 1 02 26 AM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/e8628100-a175-49e2-965f-c5e605cf420d">

##### 16.List all employee who earned commission.
SELECT *
<br>FROM Employee
<br>WHERE Comm IS NOT NULL AND Comm <> 0;

<br>+-------+--------+------+--------+------+--------+------+
<br>| Empno | Name   | Job  | Salary | Comm | Dep_No | Sex  |
<br>+-------+--------+------+--------+------+--------+------+
<br>|   101 | Smitha | SLSM |  25000 | 3000 |     40 | F    |
<br>|   109 | Alan   | MNGR |  30000 | 8000 |     40 | M    |
<br>|   220 | Soosan | SLSM |  28500 | 5300 |     60 | F    |
<br>+-------+--------+------+--------+------+--------+------+
<br>3 rows in set (0.01 sec)

##### 17. Find EMPNO ,NAME and JOB of all females who are not managers.
SELECT Empno, Name, Job
<br>FROM Employee
<br>WHERE Sex = 'F' AND Job <> 'MNGR';

<br>+-------+--------+-------+
<br>| Empno | Name   | Job   |
<br>+-------+--------+-------+
<br>|   101 | Smitha | SLSM  |
<br>|   110 | Tina   | CLRK  |
<br>|   213 | Manacy | CLRK  |
<br>|   215 | Deepa  | ANLST |
<br>|   220 | Soosan | SLSM  |
<br>+-------+--------+-------+
<br>5 rows in set (0.00 sec)

##### 18.Find EMPNO,NAME and SALARY of all employees who earn more than 10000 but less than 40000.
SELECT Empno, Name, Salary
<br>FROM Employee
<br>WHERE Salary > 10000 AND Salary < 40000;

<br>+-------+----------+--------+
<br>| Empno | Name     | Salary |
<br>+-------+----------+--------+
<br>|   100 | Wilson   |  17000 |
<br>|   101 | Smitha   |  25000 |
<br>|   103 | Roy      |  35000 |
<br>|   109 | Alan     |  30000 |
<br>|   110 | Tina     |  18000 |
<br>|   200 | Karthika |  29000 |
<br>|   210 | Rita     |  36500 |
<br>|   213 | Manacy   |  16250 |
<br>|   215 | Deepa    |  27000 |
<br>|   220 | Soosan   |  28500 |
<br>+-------+----------+--------+
<br>10 rows in set (0.01 sec)

##### 19.Use lN operator to find NAME and EMPNO of EMPLOYEE who are analyst or manager ordered by NAME.
SELECT Name, Empno
<br>FROM Employee
<br>WHERE Job IN ('ANALYST', 'MNGR')
<br>ORDER BY Name;

<br>+----------+-------+
<br>| Name     | Empno |
<br>+----------+-------+
<br>| Alan     |   109 |
<br>| Karthika |   200 |
<br>| Rita     |   210 |
<br>| Watson   |   105 |
<br>+----------+-------+
<br>4 rows in set (0.00 sec)

##### 20.Find the employee number, name and salary who been paid commission and whose salary is greater than 30000 .
SELECT Empno, Name, Salary
<br>FROM Employee
<br>WHERE Comm IS NOT NULL AND Salary > 30000;

<br>+-------+--------+--------+
<br>| Empno | Name   | Salary |
<br>+-------+--------+--------+
<br>|   105 | Watson |  45000 |
<br>+-------+--------+--------+
<br>1 row in set (0.00 sec)
