
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
