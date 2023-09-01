Aim: Write queries to create and retrieve customer and product relationship, constraints, built in functions, Group by, Order by, View drop, DML command.









<br>11. List all customer nos in the increasing order of quantity from table purchase.<br>
<br>SELECT CUSTNO FROM PURCHASE
<br>ORDER BY QUANTITY ASC;

<br>12.Update product number of customer number C00003 to P00008.<br>
<br>UPDATE PURCHASE
<br>SET PRODNO='P00008'
<br>WHERE CUSTNO='C00003'; 

<br>13. Find the number of customers from city Delhi.<br>
<br>SELECT COUNT(CUST_NO) FROM CUSTOMER
<br>WHERE CITY='Delhi';



<br>14. List customer number of all customers who have purchased more than 3 items.<br>
<br>SELECT CUSTNO FROM PURCHASE
<br>WHERE QUANTITY>3;

<br>15.Modify the structure of order date field in the purchase into character.<br>
<br>ALTER TABLE PURCHASE
<br>ALTER  ORDERDATE VARCHAR(10);

<br>16.Find min and max price from product table.<br>
<br>SELECT MIN(PRICE ),  MAX(PRICE) FROM PRODUCT;

<br>17.Find number of products by Wipro and HCL separately.<br>
<br>SELECT COUNT(PRODUCT_NO) FROM PRODUCT
<br>WHERE COMPANY='Wipro';

<br>18.List all customers in alphabetical order.<br>
<br>SELECT NAME FROM CUSTOMER
<br>ORDER BY NAME ASC;

<br>19.Sort the content of purchase table in descending order of date.<br>
<br>SELECT * FROM PURCHASE 
<br>ORDER BY ORDERDATE DESC;

<br>20.Delete the product with product_no = P00003<br>
<br>DELETE FROM PRODUCT
<br>WHERE PRODUCT_NO='P00003';

<br>21.Copy the contents of field order_no and orderdate of purchase table into new table.<br>
<br>SELECT ORDER_NO, ORDERDATE INTO ORDER FROM PURCHASE;

<br>22.Delete the newly created table.<br>
<br>DROP TABLE ORDER;

<br>23.Create view of customer table.<br>
<br>CREATE VIEW CSTMR AS
<br>SELECT * FROM CUSTOMER;

<br>24.List names of customers who have placed more than one order.<br>
<br>SELECT NAME 
<br>FROM CUSTOMER, PURCHASE
<br>WHERE CUSTOMER.CUST_NO=PURCHASE.CUSTNO AND QUANTITY>1;


<br>25.Retrieve transaction details of customer who lives in same city, obtain the result through self -join and correlated join.<br>
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

<br>26.Retrieve customer names starting with ‘R’.<br>
<br>SELECT NAME FROM CUSTOMER
<br>WHERE NAME LIKE 'R%';

<br>27.List names of persons who are either a supplier or a customer.<br>
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

