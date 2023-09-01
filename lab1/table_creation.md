### Table Creation
create table CUSTOMER(CUST_NO VARCHAR(15) NOT NULL PRIMARY KEY, NAME VARCHAR(15) NOT NULL, AGE INT NOT NULL, CITY VARCHAR(15) NOT NULL, PINCODE INT NOT NULL, STATE VARCHAR(15) NOT NULL);

<img width="407" alt="Screenshot 2023-09-01 at 5 20 37 PM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/792a4013-0e36-4362-b57b-4474f6b4d0d1">

<br>create table PRODUCT(PRODUCT_NO VARCHAR(15) NOT NULL PRIMARY KEY, DESCRIPTION VARCHAR(50) NOT NULL, COMPANY VARCHAR(15) NOT NULL, PRICE INT NOT NULL);
<img width="432" alt="Screenshot 2023-09-01 at 5 21 22 PM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/052472cf-5658-4fd1-a332-90f3ad88700c">


<br>create table SUPPLIER(S_NO varchar(10) not null primary key, SNAME varchar(15) not null, AGE int not null , CITY
varchar(15) not null);

<br>create table PURCHASE (ORDER_NO varchar(15) not null primary key, CUSTNO varchar(15) not null, PRODNO varchar(15) not null,QUANTITY int not null , ORDERDATE date, foreign key(CUSTNO) references CUSTOMER(CUST_NO) on delete cascade, foreign key(PRODNO) references PRODUCT(PRODUCT_NO) on delete cascade);
