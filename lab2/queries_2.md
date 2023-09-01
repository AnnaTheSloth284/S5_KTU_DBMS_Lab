### Queries (21 - 40)
##### 21.Find DEP-NO ,DEP-NAME, SALARY, JOB, SEX ordered by EMPNO within Department
SELECT D.Dep_No AS "DEP-NO", D.Dep_Name AS "DEP-NAME", E.Salary, E.Job, E.Sex
<br>FROM Employee E
<br>JOIN Department D ON E.Dep_No = D.Dep_No
<br>ORDER BY D.Dep_No, E.Empno;

<img width="600" alt="Screenshot 2023-09-02 at 1 26 08 AM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/dd78aca3-f5e8-4864-bf8d-d2e244d88a5c">

##### 22.Display the name of employee and dependant name if dependant is staying in the same location where employee is working .
SELECT E.Name AS "Employee Name", D.Fname || ' ' || D.Lname AS "Dependant Name"
<br>FROM Employee E
<br>JOIN Dependant D ON E.Empno = D.Empno
<br>JOIN Department Dep ON E.Dep_No = Dep.Dep_No
<br>WHERE D.Place = Dep.Loc;

<img width="612" alt="Screenshot 2023-09-02 at 1 27 18 AM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/266f10f1-068e-465d-88bb-167f79ad23a2">

##### 23.Find company location of employee named Watson.
SELECT D.Loc AS "Company Location"
<br>FROM Employee E
<br>JOIN Department D ON E.Dep_No = D.Dep_No
<br>WHERE E.Name = 'Watson';

<img width="342" alt="Screenshot 2023-09-02 at 1 29 55 AM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/2d6c13ae-62ac-43c0-9525-9e9077bdcbf1">

##### 24.Find name, EMPNO,DEP-NAME for all employee who work in ‘Trichur’ and order by EMPNO in descending order
SELECT E.Name, E.Empno, D.Dep_Name AS "DEP-NAME"
<br>FROM Employee E
<br>JOIN Department D ON E.Dep_No = D.Dep_No
<br>WHERE D.Loc = 'Trichur'
<br>ORDER BY E.Empno DESC;

<img width="399" alt="Screenshot 2023-09-02 at 1 30 28 AM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/45331452-5fc1-4603-8595-e46d5b983490">

##### 25.Retrieve NAME and SALARY of all employee who earned more than average salary.
SELECT Name, Salary
<br>FROM Employee
<br>WHERE Salary > (SELECT AVG(Salary) FROM Employee);

<img width="413" alt="Screenshot 2023-09-02 at 1 31 53 AM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/e28ed0b6-a339-48ef-af42-56ed5f72a39d">

##### 26.Find NAME, JOB, DEP NAME, LOCATION of all female employee order by EMPNAME.
SELECT E.Name, E.Job, D.Dep_Name AS "DEP NAME", D.Loc AS "LOCATION"
<br>FROM Employee E
<br>JOIN Department D ON E.Dep_No = D.Dep_No
<br>WHERE E.Sex = 'F'
<br>ORDER BY E.Name;

<img width="529" alt="Screenshot 2023-09-02 at 1 32 20 AM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/7baa12b3-7b54-4889-be1c-0eb5c291c0c7">

##### 27.Find the EMPNAME,DEP,NAME of all manager order by department name.
SELECT E.Name AS "EMPNAME", D.Dep_Name AS "DEP-NAME", E.Dep_No AS "DEP-NO"
<br>FROM Employee E
<br>JOIN Department D ON E.Dep_No = D.Dep_No
<br>WHERE E.Job = 'MNGR'
<br>ORDER BY D.Dep_Name;

<img width="580" alt="Screenshot 2023-09-02 at 1 32 57 AM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/36998690-133a-440d-a830-abc915080a66">

##### 28.Find NAME and DEP-NAME of employee who earns highest salary.
SELECT E.Name, D.Dep_Name AS "DEP-NAME"
<br>FROM Employee E
<br>JOIN Department D ON E.Dep_No = D.Dep_No
<br>WHERE E.Salary = (SELECT MAX(Salary) FROM Employee);

<img width="420" alt="Screenshot 2023-09-02 at 1 33 31 AM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/070da178-989f-431f-b6a5-51bb255449ac">

##### 29.Find name, department name, commission of all employee who paid commission order by Name.
SELECT E.Name, D.Dep_Name AS "DEP-NAME", E.Comm
<br>FROM Employee E
<br>JOIN Department D ON E.Dep_No = D.Dep_No
<br>WHERE E.Comm IS NOT NULL AND E.Comm <> 0
<br>ORDER BY E.Name;

<img width="211" alt="Screenshot 2023-09-02 at 1 36 15 AM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/f1adb6fc-104b-4219-bccd-95ec06f25374">

##### 30.Display employee name and department name of all employees working in departments that has at least three employees. Order the output in alphabetical order first by department name and then by employee name.
SELECT E.Name AS "Employee Name", D.Dep_Name AS "Department Name"
<br>FROM Employee E
<br>JOIN Department D ON E.Dep_No = D.Dep_No
<br>WHERE E.Dep_No IN (
<br>    SELECT Dep_No
<br>    FROM Employee
<br>    GROUP BY Dep_No
<br>    HAVING COUNT(*) >= 3
<br>)
<br>ORDER BY D.Dep_Name, E.Name;

<img width="519" alt="Screenshot 2023-09-02 at 1 37 25 AM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/c1746f21-e3f4-46f2-ae2f-f233494fad13">


##### 31.Find name, department name and commission of all employees who NOT paid commission order by name.
SELECT E.Name, D.Dep_Name AS "Department Name", E.Comm
<br>FROM Employee E
<br>LEFT JOIN Department D ON E.Dep_No = D.Dep_No
<br>WHERE E.Comm IS NULL OR E.Comm = 0
<br>ORDER BY E.Name;

<img width="443" alt="Screenshot 2023-09-02 at 1 43 06 AM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/539cfcc9-cd5a-44f2-a94a-a100db968344">

##### 32.List name and salary of all employee in department number l0 and 30.
SELECT Name, Salary
<br>FROM Employee
<br>WHERE Dep_No IN (10, 30);

<img width="235" alt="Screenshot 2023-09-02 at 1 43 43 AM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/8033cfbf-4a1c-4396-b849-3655efcbf383">

##### 33. List jobs of employees in department 30 which are not done in department 40.
SELECT DISTINCT Job
<br>FROM Employee
<br>WHERE Dep_No = 30 AND Job NOT IN (SELECT DISTINCT Job FROM Employee WHERE Dep_No = 40);

<img width="667" alt="Screenshot 2023-09-02 at 1 45 11 AM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/15f469ca-e5f2-49a6-a3f7-d90e668bb292">

##### 34.List out job and salary of employees in department l0 and 40 who draw the same salary (result- no record found).
SELECT E1.Job, E1.Salary
<br>FROM Employee E1
<br>JOIN Employee E2 ON E1.Salary = E2.Salary
<br>WHERE E1.Dep_No = 10 AND E2.Dep_No = 40;

<img width="343" alt="Screenshot 2023-09-02 at 1 45 39 AM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/94d55ead-9c7e-4dce-aee3-f855f0cec174">

##### 35.Create a view to display EMPNO' NAME ' JOB of employee from employee table who works as manager.
CREATE VIEW ManagerView AS
<br>SELECT Empno, Name, Job
<br>FROM Employee
<br>WHERE Job = 'MNGR';

<img width="265" alt="Screenshot 2023-09-02 at 1 46 06 AM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/f551fdca-3634-4415-b9ec-9bdcdefb3916">

##### 36.Select EMPNO, NAME,JOB and SALARY of employee who works as clerk and having salary greater than 1650.
SELECT Empno, Name, Job, Salary
<br>FROM Employee
<br>WHERE Job = 'CLRK' AND Salary > 1650;

<img width="320" alt="Screenshot 2023-09-02 at 1 46 32 AM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/cfeebad1-1c3f-471e-a907-baf0ab6945f9">

##### 37.Create an index for column FNAME and LNAME in Dependant table.
CREATE INDEX idx_name ON Dependant (Fname, Lname);

<img width="413" alt="Screenshot 2023-09-02 at 1 47 00 AM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/9ffa499d-693d-4f2b-a32d-0689518bc27f">

##### 38.Delete person with ID=1031 in Dependant table.
DELETE FROM Dependant WHERE Pid = 1031;

<img width="336" alt="Screenshot 2023-09-02 at 1 47 28 AM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/a8ef5662-1b47-4b44-9952-de96bc10f09b">

##### 39.Return EMPNO,NAME and SALARY of any one of the females in department 10.
SELECT Empno, Name, Salary
<br>FROM Employee
<br>WHERE Sex = 'F' AND Dep_No = 10
<br>LIMIT 1;

<img width="278" alt="Screenshot 2023-09-02 at 1 47 53 AM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/01a1c622-a567-4691-bd18-01bc4ae12494">

##### 40.Delete the employee Karthika with all her dependants.
DELETE FROM Employee WHERE Name = 'Karthika';
<br>DELETE FROM Dependant WHERE Empno IN (SELECT Empno FROM Employee WHERE Name = 'Karthika');

<img width="542" alt="Screenshot 2023-09-02 at 1 48 38 AM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/ee214d4b-858e-417a-b147-c749ae28f1de">
