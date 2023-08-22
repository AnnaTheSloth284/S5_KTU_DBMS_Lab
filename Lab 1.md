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
<br>O00001&emsp;C00002&emsp;P00003&emsp;2&emsp;20-JAN-16
<br>O00002&emsp;C00003&emsp;P00002&emsp;1&emsp;27-JAN-16
<br>O00003&emsp;C00006&emsp;P00001&emsp;3&emsp;20-FEB-16
<br>O00004&emsp;C00003&emsp;P00005&emsp;4&emsp;07-APR-16
<br>O00005&emsp;C00004&emsp;P00002&emsp;2&emsp;22-MAY-16
<br>O00006&emsp;C00005&emsp;P00004&emsp;1&emsp;26-MAY-16
