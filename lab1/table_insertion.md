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
