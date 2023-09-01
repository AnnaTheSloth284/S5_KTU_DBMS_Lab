### Table Creation
CREATE TABLE Department (
<br>    Dep_No INT PRIMARY KEY NOT NULL,
<br>    Dep_Name VARCHAR(30) NOT NULL,
<br>    Loc VARCHAR(30) NOT NULL,
<br>    Mgr INT NOT NULL,
<br>    Exp_Bdg INT NOT NULL,
<br>    Rev_Bdg INT NOT NULL
<br>);

<img width="409" alt="Screenshot 2023-09-02 at 12 13 52 AM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/d3aad4b6-6aa7-46a9-8709-8bed6ec32386">

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

<img width="399" alt="Screenshot 2023-09-02 at 12 16 07 AM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/d2306f6e-ec9a-4066-9c40-4156d1a9bdfa">

<br>CREATE TABLE Dependant (
<br>    Pid INT NOT NULL,
<br>    Fname VARCHAR(15) NOT NULL,
<br>    Lname VARCHAR(15) NOT NULL,
<br>    Place VARCHAR(15) NOT NULL,
<br>    Empno INT NOT NULL,
<br>    PRIMARY KEY (Pid),
<br>    FOREIGN KEY (Empno) REFERENCES Employee(Empno)
<br>);
