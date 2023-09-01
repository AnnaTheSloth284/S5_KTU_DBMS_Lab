### Queries

##### 1. List all customers in Madras<br>
SELECT * FROM CUSTOMER
<br>WHERE CITY='Madras';

<img width="476" alt="Screenshot 2023-09-01 at 5 51 40 PM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/7727664e-9fcd-413c-8366-e3ecb004fa98">

##### 2. List all customer- numbers of all who purchase the product in the month of January<br>
SELECT CUSTNO FROM PURCHASE
<br>WHERE ORDERDATE LIKE '%__01%';

<img width="270" alt="Screenshot 2023-09-01 at 5 54 59 PM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/cfb74019-6cae-4339-bbe3-b07d5a08f2c9">

##### 3. List all the name of company whose price is greater than 5000?<br>
SELECT COMPANY FROM PRODUCT
<br>WHERE PRICE>5000;

<img width="251" alt="Screenshot 2023-09-01 at 5 57 26 PM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/3ae9d6c2-b54d-4a9b-833a-79ecd02e12bb">

##### 4. List all the customers whose name is not beginning with ‘r’?<br>
SELECT * FROM CUSTOMER
<br>WHERE NAME NOT LIKE 'r%';

<img width="487" alt="Screenshot 2023-09-01 at 5 57 58 PM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/12e5d621-e89e-4aa9-92a2-297fa5472af9">

##### 5. Add email field into the customer table?<br>
ALTER TABLE CUSTOMER
<br>ADD EMAIL VARCHAR(20);

<img width="280" alt="Screenshot 2023-09-01 at 6 00 43 PM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/8b35069b-774f-464e-88d2-c1d975c70417">

##### 6. List all the customers whose age is greater than 40 in Maharashtra?<br>
SELECT * FROM CUSTOMER
<br>WHERE AGE>40 AND STATE='Maharashtra';

<img width="546" alt="Screenshot 2023-09-01 at 6 01 19 PM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/fa3951c4-9678-4b87-ad19-e8bf2680d6f1">

##### 7. Display the company’s name in the increasing order of price?<br>
SELECT COMPANY FROM PRODUCT
<br>ORDER BY PRICE ASC;

<img width="255" alt="Screenshot 2023-09-01 at 6 02 46 PM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/ce51624a-c236-44fe-8b2c-8527d1b75f8f">

##### 8. Calculate average age of customers from table customer.<br>
SELECT AVG(AGE) FROM CUSTOMER;

<img width="274" alt="Screenshot 2023-09-01 at 6 03 11 PM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/21efd509-beb0-4f58-a359-f5d821d3167a">

##### 9. List cities of customers from states Maharashtra & Tamil Nadu.<br>
SELECT CITY FROM CUSTOMER 
<br>WHERE STATE='Maharashtra' OR STATE='Tamil Nadu'; 

<img width="399" alt="Screenshot 2023-09-01 at 6 08 13 PM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/86b72084-3b0d-42c7-af6b-93920d3fbbe4">

##### 10. Find average price from table product.<br>
SELECT AVG(PRICE)
<br>FROM PRODUCT;

<img width="188" alt="Screenshot 2023-09-01 at 6 09 06 PM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/5c641934-1c05-4a9f-97f1-d5ee23873bde">

##### 11. List all customer nos in the increasing order of quantity from table purchase.<br>
SELECT CUSTNO FROM PURCHASE
<br>ORDER BY QUANTITY ASC;

<img width="254" alt="Screenshot 2023-09-01 at 6 12 11 PM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/c023c5f7-58c6-483f-b38c-08d6b9a84b13">

##### 12.Update product number of customer number C00003 to P00008.<br>
UPDATE PURCHASE
<br>SET PRODNO='P00008'
<br>WHERE CUSTNO='C00003'; 

<img width="296" alt="Screenshot 2023-09-01 at 6 17 12 PM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/487cc0f0-9d52-4ab7-b922-576e6fa90bd1">

##### 13. Find the number of customers from city Delhi.<br>
SELECT COUNT(CUST_NO) FROM CUSTOMER
<br>WHERE CITY='Delhi';

<img width="311" alt="Screenshot 2023-09-01 at 6 18 29 PM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/98bbb2e9-8b48-4191-985e-cdb939d4ce95">

##### 14. List customer number of all customers who have purchased more than 3 items.<br>
SELECT CUSTNO FROM PURCHASE
<br>WHERE QUANTITY>3;

<img width="252" alt="Screenshot 2023-09-01 at 6 24 34 PM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/34e2d4a1-f3b5-40b2-96af-4ece954461e1">

##### 15.Modify the structure of order date field in the purchase into character.<br>
ALTER TABLE PURCHASE
<br>ALTER  ORDERDATE VARCHAR(10);

<img width="270" alt="Screenshot 2023-09-01 at 6 28 10 PM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/fa840c58-e560-4302-83a8-ce432a775595">

##### 16.Find min and max price from product table.<br>
SELECT MIN(PRICE ),  MAX(PRICE) FROM PRODUCT;

<img width="372" alt="Screenshot 2023-09-01 at 6 33 08 PM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/5124e232-fd50-4838-bc33-1dd0c0164f5a">

##### 17.Find number of products by Wipro and HCL separately.<br>
SELECT COUNT(PRODUCT_NO) FROM PRODUCT
<br>WHERE COMPANY='Wipro';

<img width="321" alt="Screenshot 2023-09-01 at 6 33 36 PM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/a11030f8-23b7-4e27-a7fb-e44894a8fc36">

##### 18.List all customers in alphabetical order.<br>
SELECT NAME FROM CUSTOMER
<br>ORDER BY NAME ASC;

<img width="240" alt="Screenshot 2023-09-01 at 6 34 04 PM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/ebd87ef0-ace9-4103-bdec-ffbaf66655cf">

##### 19.Sort the content of purchase table in descending order of date.<br>
SELECT * FROM PURCHASE 
<br>ORDER BY ORDERDATE DESC;

<img width="388" alt="Screenshot 2023-09-01 at 6 34 27 PM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/b9a0ac14-f9ee-4102-8bd7-e3dcb5ec4df5">

##### 20.Delete the product with product_no = P00003<br>
DELETE FROM PRODUCT
<br>WHERE PRODUCT_NO='P00003';

<img width="258" alt="Screenshot 2023-09-01 at 6 34 52 PM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/0d8761e3-1be0-417b-9fe2-c2df2b587ea0">

##### 21.Copy the contents of field order_no and orderdate of purchase table into new table.<br>
<br>CREATE TABLE ORDERD (
<br>  ORDER_NO VARCHAR(15),
<br>  ORDERDATE VARCHAR(15)
<br>);

<br>INSERT INTO ORDERD (ORDER_NO, ORDERDATE)
<br>SELECT ORDER_NO, ORDERDATE
<br>FROM PURCHASE;

<img width="519" alt="Screenshot 2023-09-01 at 9 47 07 PM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/9f132673-3431-499f-8707-6b2c309d6d84">

##### 22.Delete the newly created table.<br>
<br>DROP TABLE ORDER;

##### 23.Create view of customer table.<br>
<br>CREATE VIEW CSTMR AS
<br>SELECT * FROM CUSTOMER;

##### 24.List names of customers who have placed more than one order.<br>
<br>SELECT NAME 
<br>FROM CUSTOMER, PURCHASE
<br>WHERE CUSTOMER.CUST_NO=PURCHASE.CUSTNO AND QUANTITY>1;


##### 25.Retrieve transaction details of customer who lives in same city, obtain the result through self -join and correlated join.<br>
<br>SELECT CSTMR.NAME, SPLR.SNAME
<br>FROM
<br>   (SELECT DISTINCT NAME FROM CUSTOMER) CSTMR
<br>   FULL OUTER JOIN
<br>   (SELECT DISTINCT SNAME FROM SUPPLIER) SPLR
<br>              ON CSTMR.NAME = SPLR.SNAME;

<br>SELECT a.NAME, b.SNAME
<br>FROM
<br>(
<br>    SELECT DISTINCT NAME AS NAME1
<br>    FROM CUSTOMER
<br>    UNION ALL
<br>    SELECT DISTINCT SNAME AS NAME2
<br>    FROM SUPPLIER
<br>) x
<br>LEFT JOIN
<br>CUSTOMER a ON x.NAME1 = a.NAME
<br>LEFT JOIN
<br>SUPPLIER b ON x.NAME2 = b.SNAME;



##### 26.Retrieve customer names starting with ‘R’.<br>
<br>SELECT NAME FROM CUSTOMER
<br>WHERE NAME LIKE 'R%';

##### 27.List names of persons who are either a supplier or a customer.<br>
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

