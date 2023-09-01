

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

<br>11.Return NAME and JOB of all female sales man and managers.
<br>SELECT Name, Job
<br>FROM Employee
<br>WHERE Sex = 'F' AND (Job = 'SLSM' OR Job = 'MNGR');

<br>+----------+------+
<br>| Name     | Job  |
<br>+----------+------+
<br>| Smitha   | SLSM |
<br>| Karthika | MNGR |
<br>| Rita     | MNGR |
<br>| Soosan   | SLSM |
<br>+----------+------+
<br>4 rows in set (0.00 sec)

<br>12.Display EMPNO and NAME of employees in employee table who are a either manager or
<br>a clerk in department 50.
<br>SELECT Empno, Name
<br>FROM Employee
<br>WHERE (Job = 'MNGR' OR Job = 'CLRK') AND Dep_No = 50;

<br>+-------+------+
<br>| Empno | Name |
<br>+-------+------+
<br>|   110 | Tina |
<br>|   210 | Rita |
<br>+-------+------+
<br>2 rows in set (0.00 sec)

<br>13.List the name of employee who are neither a clerk nor a salesman.
<br>SELECT Name
<br>FROM Employee
<br>WHERE Job NOT IN ('CLRK', 'SLSM');
<br>+----------+
<br>| Name     |
<br>+----------+
<br>| Roy      |
<br>| Watson   |
<br>| Alan     |
<br>| Karthika |
<br>| Rita     |
<br>| Simpson  |
<br>| Deepa    |
<br>+----------+
<br>7 rows in set (0.00 sec)


<br>14.Return details of all clerks working in departments other than department 10.
<br>SELECT *
<br>FROM Employee
<br>WHERE Job = 'CLRK' AND Dep_No <> 10;

<br>+-------+------+------+--------+------+--------+------+
<br>| Empno | Name | Job  | Salary | Comm | Dep_No | Sex  |
<br>+-------+------+------+--------+------+--------+------+
<br>|   110 | Tina | CLRK |  18000 | NULL |     50 | F    |
<br>+-------+------+------+--------+------+--------+------+
<br>1 row in set (0.00 sec)

<br>15. Find names of employees containing letters U and E.
<br>SELECT Name
<br>FROM Employee
<br>WHERE Name LIKE '%U%' AND Name LIKE '%E%';

<br>Empty set (0.00 sec)

<br>16.List all employee who earned commission.
<br>SELECT *
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

<br>17. Find EMPNO ,NAME and JOB of all females who are not managers.
<br>SELECT Empno, Name, Job
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

<br>18.Find EMPNO,NAME and SALARY of all employees who earn more than 10000 but less than 40000.
<br>SELECT Empno, Name, Salary
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

<br>19.Use lN operator to find NAME and EMPNO of EMPLOYEE who are analyst or manager
<br>ordered by NAME.
<br>SELECT Name, Empno
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

<br>20.Find the employee number, name and salary who been paid commission and whose salary
<br>is greater than 30000 .
<br>SELECT Empno, Name, Salary
<br>FROM Employee
<br>WHERE Comm IS NOT NULL AND Salary > 30000;

<br>+-------+--------+--------+
<br>| Empno | Name   | Salary |
<br>+-------+--------+--------+
<br>|   105 | Watson |  45000 |
<br>+-------+--------+--------+
<br>1 row in set (0.00 sec)

<br>21.Find DEP-NO ,DEP-NAME, SALARY, JOB, SEX ordered by EMPNO within
<br>Department
<br>SELECT D.Dep_No AS "DEP-NO", D.Dep_Name AS "DEP-NAME", E.Salary, E.Job, E.Sex
<br>FROM Employee E
<br>JOIN Department D ON E.Dep_No = D.Dep_No
<br>ORDER BY D.Dep_No, E.Empno;

<br>+--------+---------------+--------+-------+------+
<br>| DEP-NO | DEP-NAME      | Salary | Job   | Sex  |
<br>+--------+---------------+--------+-------+------+
<br>|     10 | Accounting    |  17000 | CLRK  | M    |
<br>|     10 | Accounting    |  29000 | MNGR  | F    |
<br>|     10 | Accounting    |  16250 | CLRK  | F    |
<br>|     30 | Research      |  35000 | ANLST | M    |
<br>|     30 | Research      |  45000 | MNGR  | M    |
<br>|     40 | Sales         |  25000 | SLSM  | F    |
<br>|     40 | Sales         |  30000 | MNGR  | M    |
<br>|     50 | Manufacturing |  18000 | CLRK  | F    |
<br>|     50 | Manufacturing |  36500 | MNGR  | F    |
<br>|     60 | Shipping      |   8250 | DRVR  | M    |
<br>|     60 | Shipping      |  27000 | ANLST | F    |
<br>|     60 | Shipping      |  28500 | SLSM  | F    |
<br>+--------+---------------+--------+-------+------+
<br>12 rows in set (0.00 sec)

<br>22.Display the name of employee and dependant name if dependant is staying in the same
<br>location where employee is working .
<br>SELECT E.Name AS "Employee Name", D.Fname || ' ' || D.Lname AS "Dependant Name"
<br>FROM Employee E
<br>JOIN Dependant D ON E.Empno = D.Empno
<br>JOIN Department Dep ON E.Dep_No = Dep.Dep_No
<br>WHERE D.Place = Dep.Loc;

<br>+---------------+----------------+
<br>| Employee Name | Dependant Name |
<br>+---------------+----------------+
<br>| Simpson       |              0 |
<br>+---------------+----------------+
<br>1 row in set, 4 warnings (0.00 sec)

<br>23.Find company location of employee named Watson.
<br>SELECT D.Loc AS "Company Location"
<br>FROM Employee E
<br>JOIN Department D ON E.Dep_No = D.Dep_No
<br>WHERE E.Name = 'Watson';

<br>+------------------+
<br>| Company Location |
<br>+------------------+
<br>| Cochin           |
<br>+------------------+
<br>1 row in set (0.00 sec)

<br>24.Find name, EMPNO,DEP-NAME for all employee who work in ‘Trichur’ and order by
<br>EMPNO in descending order
<br>SELECT E.Name, E.Empno, D.Dep_Name AS "DEP-NAME"
<br>FROM Employee E
<br>JOIN Department D ON E.Dep_No = D.Dep_No
<br>WHERE D.Loc = 'Trichur'
<br>ORDER BY E.Empno DESC;

<br>+--------+-------+----------+
<br>| Name   | Empno | DEP-NAME |
<br>+--------+-------+----------+
<br>| Alan   |   109 | Sales    |
<br>| Smitha |   101 | Sales    |
<br>+--------+-------+----------+
<br>2 rows in set (0.00 sec)

<br>25.Retrieve NAME and SALARY of all employee who earned more than average salary.
<br>SELECT Name, Salary
<br>FROM Employee
<br>WHERE Salary > (SELECT AVG(Salary) FROM Employee);

<br>+----------+--------+
<br>| Name     | Salary |
<br>+----------+--------+
<br>| Roy      |  35000 |
<br>| Watson   |  45000 |
<br>| Alan     |  30000 |
<br>| Karthika |  29000 |
<br>| Rita     |  36500 |
<br>| Deepa    |  27000 |
<br>| Soosan   |  28500 |
<br>+----------+--------+
<br>7 rows in set (0.00 sec)

<br>26.Find NAME, JOB, DEP NAME, LOCATION of all female employee order by EMPNAME.
<br>SELECT E.Name, E.Job, D.Dep_Name AS "DEP NAME", D.Loc AS "LOCATION"
<br>FROM Employee E
<br>JOIN Department D ON E.Dep_No = D.Dep_No
<br>WHERE E.Sex = 'F'
<br>ORDER BY E.Name;

<br>+----------+-------+---------------+------------+
<br>| Name     | Job   | DEP NAME      | LOCATION   |
<br>+----------+-------+---------------+------------+
<br>| Deepa    | ANLST | Shipping      | Trivandrum |
<br>| Karthika | MNGR  | Accounting    | Cochin     |
<br>| Manacy   | CLRK  | Accounting    | Cochin     |
<br>| Rita     | MNGR  | Manufacturing | Kottayam   |
<br>| Smitha   | SLSM  | Sales         | Trichur    |
<br>| Soosan   | SLSM  | Shipping      | Trivandrum |
<br>| Tina     | CLRK  | Manufacturing | Kottayam   |
<br>+----------+-------+---------------+------------+
<br>7 rows in set (0.00 sec)

<br>27.Find the EMPNAME,DEP,NAME of all manager order by department name.
<br>SELECT E.Name AS "EMPNAME", D.Dep_Name AS "DEP-NAME", E.Dep_No AS "DEP-NO"
<br>FROM Employee E
<br>JOIN Department D ON E.Dep_No = D.Dep_No
<br>WHERE E.Job = 'MNGR'
<br>ORDER BY D.Dep_Name;

<br>+----------+---------------+--------+
<br>| EMPNAME  | DEP-NAME      | DEP-NO |
<br>+----------+---------------+--------+
<br>| Karthika | Accounting    |     10 |
<br>| Rita     | Manufacturing |     50 |
<br>| Watson   | Research      |     30 |
<br>| Alan     | Sales         |     40 |
<br>+----------+---------------+--------+
<br>4 rows in set (0.01 sec)

<br>28.Find NAME and DEP-NAME of employee who earns highest salary.
<br>SELECT E.Name, D.Dep_Name AS "DEP-NAME"
<br>FROM Employee E
<br>JOIN Department D ON E.Dep_No = D.Dep_No
<br>WHERE E.Salary = (SELECT MAX(Salary) FROM Employee);

<br>+--------+----------+
<br>| Name   | DEP-NAME |
<br>+--------+----------+
<br>| Watson | Research |
<br>+--------+----------+
<br>1 row in set (0.00 sec)

<br>29.Find name, department name, commission of all employee who paid commission order by Name.
<br>SELECT E.Name, D.Dep_Name AS "DEP-NAME", E.Comm
<br>FROM Employee E
<br>JOIN Department D ON E.Dep_No = D.Dep_No
<br>WHERE E.Comm IS NOT NULL AND E.Comm <> 0
<br>ORDER BY E.Name;

<br>+--------+----------+------+
<br>| Name   | DEP-NAME | Comm |
<br>+--------+----------+------+
<br>| Alan   | Sales    | 8000 |
<br>| Smitha | Sales    | 3000 |
<br>| Soosan | Shipping | 5300 |
<br>+--------+----------+------+
<br>3 rows in set (0.00 sec)

<br>30.Display employee name and department name of all employees working in departments
<br>that has at least three employees. Order the output in alphabetical order first by department
<br>name and then by employee name.
<br>SELECT E.Name AS "Employee Name", D.Dep_Name AS "Department Name"
<br>FROM Employee E
<br>JOIN Department D ON E.Dep_No = D.Dep_No
<br>WHERE E.Dep_No IN (
<br>    SELECT Dep_No
<br>    FROM Employee
<br>    GROUP BY Dep_No
<br>    HAVING COUNT(*) >= 3
<br>)
<br>ORDER BY D.Dep_Name, E.Name;

<br>+---------------+-----------------+
<br>| Employee Name | Department Name |
<br>+---------------+-----------------+
<br>| Karthika      | Accounting      |
<br>| Manacy        | Accounting      |
<br>| Wilson        | Accounting      |
<br>| Deepa         | Shipping        |
<br>| Simpson       | Shipping        |
<br>| Soosan        | Shipping        |
<br>+---------------+-----------------+
<br>6 rows in set (0.00 sec)

<br>31.Find name, department name and commission of all employees who NOT paid
<br>commission order by name.
<br>SELECT E.Name, D.Dep_Name AS "Department Name", E.Comm
<br>FROM Employee E
<br>LEFT JOIN Department D ON E.Dep_No = D.Dep_No
<br>WHERE E.Comm IS NULL OR E.Comm = 0
<br>ORDER BY E.Name;

<br>+----------+-----------------+------+
<br>| Name     | Department Name | Comm |
<br>+----------+-----------------+------+
<br>| Deepa    | Shipping        | NULL |
<br>| Karthika | Accounting      | NULL |
<br>| Manacy   | Accounting      | NULL |
<br>| Rita     | Manufacturing   | NULL |
<br>| Roy      | Research        | NULL |
<br>| Simpson  | Shipping        | NULL |
<br>| Tina     | Manufacturing   | NULL |
<br>| Watson   | Research        | 0    |
<br>| Wilson   | Accounting      | NULL |
<br>+----------+-----------------+------+
<br>9 rows in set (0.00 sec)

<br>32.List name and salary of all employee in department number l0 and 30.
<br>SELECT Name, Salary
<br>FROM Employee
<br>WHERE Dep_No IN (10, 30);

<br>+----------+--------+
<br>| Name     | Salary |
<br>+----------+--------+
<br>| Wilson   |  17000 |
<br>| Karthika |  29000 |
<br>| Manacy   |  16250 |
<br>| Roy      |  35000 |
<br>| Watson   |  45000 |
<br>+----------+--------+
<br>5 rows in set (0.00 sec)

<br>33. List jobs of employees in department 30 which are not done in department 40.
<br>SELECT DISTINCT Job
<br>FROM Employee
<br>WHERE Dep_No = 30 AND Job NOT IN (SELECT DISTINCT Job FROM Employee WHERE Dep_No = 40);

<br>+-------+
<br>| Job   |
<br>+-------+
<br>| ANLST |
<br>+-------+
<br>1 row in set (0.00 sec)

<br>34.List out job and salary of employees in department l0 and 40 who draw the same salary
<br>(result- no record found).
<br>SELECT E1.Job, E1.Salary
<br>FROM Employee E1
<br>JOIN Employee E2 ON E1.Salary = E2.Salary
<br>WHERE E1.Dep_No = 10 AND E2.Dep_No = 40;

<br>Empty set (0.00 sec)

<br>35.Create a view to display EMPNO' NAME ' JOB of employee from employee table who works as manager.
<br>CREATE VIEW ManagerView AS
<br>SELECT Empno, Name, Job
<br>FROM Employee
<br>WHERE Job = 'MNGR';

<br>Query OK, 0 rows affected (0.00 sec)

<br>36.Select EMPNO, NAME,JOB and SALARY of employee who works as clerk and having
<br>salary greater than 1650.
<br>SELECT Empno, Name, Job, Salary
<br>FROM Employee
<br>WHERE Job = 'CLRK' AND Salary > 1650;

<br>+-------+--------+------+--------+
<br>| Empno | Name   | Job  | Salary |
<br>+-------+--------+------+--------+
<br>|   100 | Wilson | CLRK |  17000 |
<br>|   110 | Tina   | CLRK |  18000 |
<br>|   213 | Manacy | CLRK |  16250 |
<br>+-------+--------+------+--------+
<br>3 rows in set (0.00 sec)

<br>37.Create an index for column FNAME and LNAME in Dependant table.
<br>CREATE INDEX idx_name ON Dependant (Fname, Lname);

<br>Query OK, 0 rows affected (0.02 sec)
<br>Records: 0  Duplicates: 0  Warnings: 0

<br>38.Delete person with ID=1031 in Dependant table.
<br>DELETE FROM Dependant WHERE Pid = 1031;

<br>Query OK, 1 row affected (0.00 sec)

<br>39.Return EMPNO,NAME and SALARY of any one of the females in department 10.
<br>SELECT Empno, Name, Salary
<br>FROM Employee
<br>WHERE Sex = 'F' AND Dep_No = 10
<br>LIMIT 1;

<br>+-------+----------+--------+
<br>| Empno | Name     | Salary |
<br>+-------+----------+--------+
<br>|   200 | Karthika |  29000 |
<br>+-------+----------+--------+
<br>1 row in set (0.00 sec)

<br>40.Delete the employee Karthika with all her dependants.
<br>DELETE FROM Employee WHERE Name = 'Karthika';
<br>DELETE FROM Dependant WHERE Empno IN (SELECT Empno FROM Employee WHERE Name = 'Karthika');

<br>Query OK, 2 rows affected (0.00 sec)
