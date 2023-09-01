

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
