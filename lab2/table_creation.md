<br>Department Table Creation and Data Insertion
<br>CREATE TABLE Department (
<br>    Dep_No INT PRIMARY KEY NOT NULL,
<br>    Dep_Name VARCHAR(30) NOT NULL,
<br>    Loc VARCHAR(30) NOT NULL,
<br>    Mgr INT NOT NULL,
<br>    Exp_Bdg INT NOT NULL,
<br>    Rev_Bdg INT NOT NULL
<br>);

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

