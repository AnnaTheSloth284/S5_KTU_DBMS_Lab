## Table design:
Department (Dep_No Primary Key Not Null Number(38), Dep_Name Not Null Varchar2(15), Loc Not Null Varchar2(15), Mgr Not Null Number(38), Exp_Bdg Not Null Number(38), Rev_Bdg Not Null Number(38))
<br><img width="648" alt="Screenshot 2023-09-01 at 10 55 39 PM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/3547973d-a14b-4844-82bd-0eee2447fa71">

<br><br>Employee (Empno Not Null Number(38), Name Not Null Varchar2(15), Job Not Null Varchar2(15), Salary Not Null Number(38), Comm Varchar2(15), Dep_No Forien Key Number(38),Sex Varchar2(6))
<br><img width="669" alt="Screenshot 2023-09-01 at 10 56 02 PM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/6f387346-bb0a-441a-a6d5-8597518748de">

<br><br>Dependant (Pid Not Null Number(38), Fname Not Null Varchar2(15), Lname Not Null Varchar2(15), Place Not Null Varchar2(15) Empno Not Null Number(38) )
<br><img width="413" alt="Screenshot 2023-09-01 at 10 58 53 PM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/10e99b00-afb8-4e88-b0f8-75aac943a894">
