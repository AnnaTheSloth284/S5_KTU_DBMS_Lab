<br>Table design:
<br>PURCHASE (order_no notnull int,custno notnull int, prono varchar(15) notnull,quantity notnull int, orderdate date, primarykey order_no, foreignkey cust no, foreignkey prono)


<br><br>PRODUCT (product_no notnull varchar(15),description notnul lvarchar(15), company notnull varchar(15),price notnull int, primarykey product_no)


<br><br>CUSTOMER (cust_no notnull varchar(15), name notnullvarchar(15), age notnull int,city notnull varchar(15), pincode notnull int, state notnullvarchar(15), primarykey cust_no)


<br><br>SUPPLIER (s_no notnull varchar(10), sname notnullvarchar(15), age notnull int,city notnull varchar(15), primarykey sno)

