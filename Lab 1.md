Aim: Write queries to create and retrieve customer and product relationship, constraints, built in functions, Group by, Order by, View drop, DML command.
<br>
<br>Table design:
<br>PURCHASE (order_no notnull int,custno notnull int, prono varchar(15) notnull,quantity notnull int, orderdate date, primarykey order_no, foreignkey cust no, foreignkey prono)
<br><br>PRODUCT (product_no notnull varchar(15),description notnul lvarchar(15), company notnull varchar(15),price notnull int, primarykey product_no)
<br><br>CUSTOMER (cust_no notnull varchar(15), name notnullvarchar(15), age notnull int,city notnull varchar(15), pincode notnull int, state notnullvarchar(15), primarykey cust_no)
<br><br>SUPPLIER (s_no notnull varchar(10), sname notnullvarchar(15), age notnull int,city notnull varchar(15), primarykey sno)

<br>Sample instances are given below:
<br><br>PURCHASE :
<br>ORDER_NO&nmsp;CUSTNO&nmsp;PRODNO&nmsp;QUANTITY&nmsp;ORDERDATE
<br>O00001&nmsp;C00002&nmsp;P00003&nmsp;2&nmsp;20-JAN-16
<br>O00002&nmsp;C00003&nmsp;P00002&nmsp;1&nmsp;27-JAN-16
<br>O00003&nmsp;C00006&nmsp;P00001&nmsp;3&nmsp;20-FEB-16
<br>O00004&nmsp;C00003&nmsp;P00005&nmsp;4&nmsp;07-APR-16
<br>O00005&nmsp;C00004&nmsp;P00002&nmsp;2&nmsp;22-MAY-16
<br>O00006&nmsp;C00005&nmsp;P00004&nmsp;1&nmsp;26-MAY-16
