Aim: Write queries to create and retrieve customer and product relationship, constraints, built in functions, Group by, Order by, View drop, DML command.











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

