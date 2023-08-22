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

<br>select * from purchase;
<br>+----------+--------+--------+----------+------------+
<br>| ORDER_NO | CUSTNO | PRODNO | QUANTITY | ORDERDATE  |
<br>+----------+--------+--------+----------+------------+
<br>| O00001   | C00002 | P00003 |        2 | 2016-01-20 |
<br>| O00002   | C00003 | P00002 |        1 | 2016-01-27 |
<br>| O00003   | C00006 | P00001 |        3 | 2016-02-20 |
<br>| O00004   | C00003 | P00005 |        4 | 2016-04-07 |
<br>| O00005   | C00004 | P00002 |        2 | 2016-05-22 |
<br>| O00006   | C00005 | P00004 |        1 | 2016-05-26 |
<br>+----------+--------+--------+----------+------------+
<br>6 rows in set (0.00 sec)

<br>Questions:

<br>1. List all customers in Madras
<br>SELECT * FROM CUSTOMER
<br>WHERE CITY='Madras';

<br>2. List all customer- numbers of all who purchase the product in the month of January
<br>SELECT CUSTNO FROM PURCHASE
<br>WHERE ORDERDATE LIKE '___01%';

<br>3. List all the name of company whose price is greater than 5000?
<br>SELECT COMPANY FROM PRODUCT
<br>WHERE PRICE>5000;

<br>4. List all the customers whose name is not beginning with ‘r’?
<br>SELECT * FROM CUSTOMER
<br>WHERE NAME NOT LIKE 'r%';

<br>5. Add email field into the customer table?
<br>ALTER TABLE CUSTOMER
<br>ADD EMAIL VARCHAR(20);

<br>6. List all the customers whose age is greater than 40 in Maharashtra?
<br>SELECT * FROM CUSTOMER
<br>WHERE AGE>40 AND STATE='Maharashtra';

<br>7. Display the company’s name in the increasing order of price?
<br>SELECT COMPANY FROM PRODUCT
<br>ORDER BY PRICE ASC;

<br>8. Calculate average age of customers from table customer.
<br>SELECT AVG(AGE) FROM CUSTOMER;

<br>9. List cities of customers from states Maharashtra & Tamil Nadu.
<br>SELECT CITY FROM CUSTOMER 
<br>WHERE STATE='Maharashtra' OR STATE='Tamil Nadu'; 

<br>10. Find average price from table product.
<br>SELECT AVG(PRICE)
<br>FROM PRODUCT;

<br>11. List all customer nos in the increasing order of quantity from table purchase.
<br>SELECT CUSTNO FROM PURCHASE
<br>ORDER BY QUANTITY ASC;

<br>12.Update product number of customer number C00003 to P00008.
<br>UPDATE PURCHASE
<br>SET PRODNO='P00008'
<br>WHERE CUSTNO='C00003'; 

<br>13. Find the number of customers from city Delhi.
<br>SELECT COUNT(CUST_NO) FROM CUSTOMER
<br>WHERE CITY='Delhi';



<br>14. List customer number of all customers who have purchased more than 3 items.
<br>SELECT CUSTNO FROM PURCHASE
<br>WHERE QUANTITY>3;

<br>15.Modify the structure of order date field in the purchase into character.
<br>ALTER TABLE PURCHASE
<br>ALTER  ORDERDATE VARCHAR(10);

<br>16.Find min and max price from product table.
<br>SELECT MIN(PRICE ),  MAX(PRICE) FROM PRODUCT;

<br>17.Find number of products by Wipro and HCL separately.
<br>SELECT COUNT(PRODUCT_NO) FROM PRODUCT
<br>WHERE COMPANY='Wipro';

<br>18.List all customers in alphabetical order.
<br>SELECT NAME FROM CUSTOMER
<br>ORDER BY NAME ASC;

<br>19.Sort the content of purchase table in descending order of date.
<br>SELECT * FROM PURCHASE 
<br>ORDER BY ORDERDATE DESC;

<br>20.Delete the product with product_no = P00003
<br>DELETE FROM PRODUCT
<br>WHERE PRODUCT_NO='P00003';

<br>21.Copy the contents of field order_no and orderdate of purchase table into new table.
<br>SELECT ORDER_NO, ORDERDATE INTO ORDER FROM PURCHASE;

<br>22.Delete the newly created table.
<br>DROP TABLE ORDER;

<br>23.Create view of customer table.
<br>CREATE VIEW CSTMR AS
<br>SELECT * FROM CUSTOMER;

<br>24.List names of customers who have placed more than one order.
<br>SELECT NAME 
<br>FROM CUSTOMER, PURCHASE
<br>WHERE CUSTOMER.CUST_NO=PURCHASE.CUSTNO AND QUANTITY>1;


<br>25.Retrieve transaction details of customer who lives in same city, obtain the result through self -join and correlated join.
<br>SELECT ORDERNO, CUSTNO, PRODNO, QUANTITY, ORDERDATE 
<br>FROM PURCHASE, CUSTOMER C1, CUSTOMER C2
<br>WHERE PURCHASE.CUSTNO=CUSTOMER.CUTS_NO AND C1.CITY=C2.CITY;

<br>SELECT ORDERNO, PRODNO, QUANTITY, ORDERDATE
<br>(
<br>	SELECT CUSTNO
<br>	FROM PURCHASE, CUSTOMER C1, CUSTOMER C2
<br>	WHERE PURCHASE.CUSTNO=CUSTOMER.CUTS_NO AND C1.CITY=C2.CITY
<br>)
<br>FROM PURCHASE;

<br>26.Retrieve customer names starting with ‘R’.
<br>SELECT NAME FROM CUSTOMER
<br>WHERE NAME LIKE 'R%';

<br>27.List names of persons who are either a supplier or a customer.
<br>SELECT CSTMR.NAME, SPLR.SNAME
<br>FROM
<br>   (SELECT DISTINCT NAME FROM CUSTOMER) CSTMR
<br>   JOIN
<br>   (SELECT DISTINCT SNAME FROM SUPPLIER) SPLR
<br>              ON CSTMR.NAME = SPLR.SNAME;

<br>+-----------------+-----------------+
<br>| NAME            | SNAME           |
<br>+-----------------+-----------------+
<br>| Ivan Bayross    | Ivan Bayross    |
<br>| Basu Navindgi   | Basu Navindgi   |
<br>| Ravi Sreedharan | Ravi Sreedharan |
<br>+-----------------+-----------------+
<br>3 rows in set (0.00 sec)

