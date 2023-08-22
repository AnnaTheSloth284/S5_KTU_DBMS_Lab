Aim: Write queries to create and retrieve customer and product relationship, constraints, built in functions, Group by, Order by, View drop, DML command.
<br>
<br>Table design:
<br>PURCHASE (order_no notnull int,custno notnull int, prono varchar(15) notnull,quantity notnull int, orderdate date, primarykey order_no, foreignkey cust no, foreignkey prono)
<br><br>PRODUCT (product_no notnull varchar(15),description notnul lvarchar(15), company notnull varchar(15),price notnull int, primarykey product_no)
<br><br>CUSTOMER (cust_no notnull varchar(15), name notnullvarchar(15), age notnull int,city notnull varchar(15), pincode notnull int, state notnullvarchar(15), primarykey cust_no)
<br><br>SUPPLIER (s_no notnull varchar(10), sname notnullvarchar(15), age notnull int,city notnull varchar(15), primarykey sno)

<br>Sample instances are given below:
<br><br>PURCHASE :
<br>ORDER_NO&emsp;CUSTNO&emsp;PRODNO&emsp;QUANTITY&emsp;ORDERDATE
<br>O00001&emsp;&emsp;&emsp;C00002&emsp; P00003&emsp;&emsp;&emsp; 2&emsp;&emsp;&emsp;&emsp;20-JAN-16
<br>O00002&emsp;&emsp;&emsp;C00003&emsp; P00002&emsp;&emsp;&emsp; 1&emsp;&emsp;&emsp;&emsp;27-JAN-16
<br>O00003&emsp;&emsp;&emsp;C00006&emsp; P00001&emsp;&emsp;&emsp; 3&emsp;&emsp;&emsp;&emsp;20-FEB-16
<br>O00004&emsp;&emsp;&emsp;C00003&emsp; P00005&emsp;&emsp;&emsp; 4&emsp;&emsp;&emsp;&emsp;07-APR-16
<br>O00005&emsp;&emsp;&emsp;C00004&emsp; P00002&emsp;&emsp;&emsp; 2&emsp;&emsp;&emsp;&emsp;22-MAY-16
<br>O00006&emsp;&emsp;&emsp;C00005&emsp; P00004&emsp;&emsp;&emsp; 1&emsp;&emsp;&emsp;&emsp;26-MAY-16

<br><br>PRODUCT :
<br>PRODUCT_NO&emsp;DESCRIPTION&emsp;&emsp;COMPANY&emsp;&emsp;  PRICE
<br>P00001&emsp;&emsp;&emsp;&emsp;12 W Flood Light&emsp;&emsp;Wipro&emsp;&emsp;&emsp;&emsp;5000
<br>P00002&emsp;&emsp;&emsp;&emsp;Laptop Adapter&emsp;&emsp;&emsp;Dell&emsp;&emsp;&emsp;&emsp;  1560
<br>P00003&emsp;&emsp;&emsp;&emsp;Tablet&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;  HCL&emsp;&emsp;&emsp;&emsp;11000
<br>P00004&emsp;&emsp;&emsp;&emsp;Garnet 50W led&emsp;&emsp;  Wipro&emsp;&emsp;&emsp;&emsp;999
<br>P00005&emsp;&emsp;&emsp;&emsp;Laptop Charger&emsp;&emsp;&emsp;HCL&emsp;&emsp;&emsp;&emsp;1690

<br><br>CUSTOMER
<br>CUST_NO&emsp;NAME&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;AGE&emsp;&emsp;&emsp;CITY&emsp;PINCODE&emsp;STATE
<br>C00001&emsp;&emsp;Ivan Bayross&emsp;&emsp;&emsp;  35&emsp;&emsp;&emsp;Bombay 400054 Maharashtra
<br>C00002&emsp;&emsp;Vandana Saitwal &emsp;  35&emsp;&emsp;&emsp;Madras 780001 Tamilnadu
<br>C00003&emsp;&emsp;Pramada Jaguste&emsp;55&emsp;&emsp;&emsp;Bombay 400057 Maharashtra
<br>C00004&emsp;&emsp;Basu Navindgi &emsp;&emsp;  45&emsp;&emsp;&emsp;Bombay 400056 Maharashtra
<br>C00005&emsp;&emsp;Ravi Sreedharan &emsp; 25&emsp;&emsp;&emsp;Delhi 100001 Delhi
<br>C00006&emsp;&emsp;Rukmini &emsp;&emsp;&emsp;&emsp;&emsp; 25&emsp;&emsp;&emsp;Madras 780001 Tamilnadu

<br><br>SUPPLIER
<br>S_NO SNAME AGE CITY
<br>S001 Ivan Bayross 35 Bombay
<br>S002 Nirmala Agarwal 35 Madras
<br>C003 Susmitha 55 Bombay
<br>C004 Basu Navindgi 45 Bombay
<br>C005 Ravi Sreedharan 25 Delhi
<br>C006 Nanda Gopal 25 Madras

<br>Table Creation:

<br>create table CUSTOMER(CUST_NO VARCHAR(15) NOT NULL PRIMARY KEY, NAME VARCHAR(15) NOT NULL, AGE INT NOT NULL, CITY VARCHAR(15) NOT NULL, PINCODE INT NOT NULL, STATE VARCHAR(15) NOT NULL);

<br>create table PRODUCT(PRODUCT_NO VARCHAR(15) NOT NULL PRIMARY KEY, DESCRIPTION VARCHAR(50) NOT NULL, COMPANY VARCHAR(15) NOT NULL, PRICE INT NOT NULL);

<br>create table SUPPLIER(S_NO varchar(10) not null primary key, SNAME varchar(15) not null, AGE int not null , CITY
varchar(15) not null);

<br>create table PURCHASE (ORDER_NO varchar(15) not null primary key, CUSTNO varchar(15) not null, PRODNO varchar(15) not null,QUANTITY int not null , ORDERDATE date, foreign key(CUSTNO) references CUSTOMER(CUST_NO) on delete cascade, foreign key(PRODNO) references PRODUCT(PRODUCT_NO) on delete cascade);


<br>show tables;
<br>+----------------+
<br>| Tables_in_lab2 |
<br>+----------------+
<br>| CUSTOMER       |
<br>| PRODUCT        |
<br>| PURCHASE       |
<br>| SUPPLIER       |
<br>+----------------+
<br>4 rows in set (0.00 sec)

<br>INSERT INTO CUSTOMER(CUST_NO, NAME, AGE, CITY, PINCODE, STATE)
<br>VALUES ('C00001', 'Ivan Bayross', 35, 'Bombay', 400054, 'Maharashtra'),
<br>       ('C00002', 'Vandana Saitwal', 35, 'Madras', 780001, 'Tamilnadu'),
<br>       ('C00003', 'Pramada Jaguste', 55, 'Bombay', 400057, 'Maharashtra'),
<br>       ('C00004', 'Basu Navindgi', 45, 'Bombay', 400056, 'Maharashtra'),
<br>       ('C00005', 'Ravi Sreedharan', 25, 'Delhi', 100001, 'Delhi'),
<br>       ('C00006', 'Rukmini', 25, 'Madras', 780001, 'Tamilnadu');

<br>select * from customer;
<br>+---------+-----------------+-----+--------+---------+-------------+
<br>| CUST_NO | NAME            | AGE | CITY   | PINCODE | STATE       |
<br>+---------+-----------------+-----+--------+---------+-------------+
<br>| C00001  | Ivan Bayross    |  35 | Bombay |  400054 | Maharashtra |
<br>| C00002  | Vandana Saitwal |  35 | Madras |  780001 | Tamilnadu   |
<br>| C00003  | Pramada Jaguste |  55 | Bombay |  400057 | Maharashtra |
<br>| C00004  | Basu Navindgi   |  45 | Bombay |  400056 | Maharashtra |
<br>| C00005  | Ravi Sreedharan |  25 | Delhi  |  100001 | Delhi       |
<br>| C00006  | Rukmini         |  25 | Madras |  780001 | Tamilnadu   |
<br>+---------+-----------------+-----+--------+---------+-------------+
<br>6 rows in set (0.00 sec)

<br>INSERT INTO PRODUCT(PRODUCT_NO, DESCRIPTION, COMPANY, PRICE)
<br>VALUES ('P00001', '12 W Flood Light', 'Wipro', 5000),
<br>       ('P00002', 'Laptop Adapter', 'Dell', 1560),
<br>       ('P00003', 'Tablet', 'HCL', 11000),
<br>       ('P00004', 'Garnet 50W led', 'Wipro', 999),
<br>       ('P00005', 'Laptop Charger', 'HCL', 1690);

<br>select * from product;
<br>+------------+------------------+---------+-------+
<br>| PRODUCT_NO | DESCRIPTION      | COMPANY | PRICE |
<br>+------------+------------------+---------+-------+
<br>| P00001     | 12 W Flood Light | Wipro   |  5000 |
<br>| P00002     | Laptop Adapter   | Dell    |  1560 |
<br>| P00003     | Tablet           | HCL     | 11000 |
<br>| P00004     | Garnet 50W led   | Wipro   |   999 |
<br>| P00005     | Laptop Charger   | HCL     |  1690 |
<br>+------------+------------------+---------+-------+
<br>5 rows in set (0.01 sec)

<br>INSERT INTO SUPPLIER(S_NO, SNAME, AGE, CITY)
<br>VALUES ('S001', 'Ivan Bayross', 35, 'Bombay'),
<br>       ('S002', 'Nirmala Agarwal', 35, 'Madras'),
<br>       ('C003', 'Susmitha', 55, 'Bombay'),
<br>       ('C004', 'Basu Navindgi', 45, 'Bombay'),
<br>       ('C005', 'Ravi Sreedharan', 25, 'Delhi'),
<br>       ('C006', 'Nanda Gopal', 25, 'Madras');

<br>select * from supplier;
<br>+------+-----------------+-----+--------+
<br>| S_NO | SNAME           | AGE | CITY   |
<br>+------+-----------------+-----+--------+
<br>| C003 | Susmitha        |  55 | Bombay |
<br>| C004 | Basu Navindgi   |  45 | Bombay |
<br>| C005 | Ravi Sreedharan |  25 | Delhi  |
<br>| C006 | Nanda Gopal     |  25 | Madras |
<br>| S001 | Ivan Bayross    |  35 | Bombay |
<br>| S002 | Nirmala Agarwal |  35 | Madras |
<br>+------+-----------------+-----+--------+

<br>INSERT INTO PURCHASE(ORDER_NO, CUSTNO, PRODNO, QUANTITY, ORDERDATE)
<br>VALUES (‘O00001’, ‘C00002’, ‘P00003’, 2, ‘2016-01-20’),
<br>(‘O00002’, ‘C00003’, ‘P00002’, 1, ‘2016-01-27’),
<br>(‘O00003’, ‘C00006’, ‘P00001’, 3, ‘2016-02-20’),
<br>(‘O00004’, ‘C00003’, ‘P00005’, 4, ‘2016-04-07’),
<br>(‘O00005’, ‘C00004’, ‘P00002’, 2, ‘2016-05-22’),
<br>(‘O00006’, ‘C00005’, ‘P00004’, 1, ‘2016-05-26’); 

