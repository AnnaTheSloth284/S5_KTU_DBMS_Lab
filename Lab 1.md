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
