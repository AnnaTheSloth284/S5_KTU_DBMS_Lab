Table design:
<br>PURCHASE (order_no notnull int,custno notnull int, prono varchar(15) notnull,quantity notnull int, orderdate date, primarykey order_no, foreignkey cust no, foreignkey prono)
<img width="616" alt="Screenshot 2023-09-01 at 5 25 05 PM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/f67c8ca7-18e6-41ee-885d-fd80112fbe90">


<br><br>PRODUCT (product_no notnull varchar(15),description notnul lvarchar(15), company notnull varchar(15),price notnull int, primarykey product_no)
<img width="645" alt="Screenshot 2023-09-01 at 5 25 30 PM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/2de7a349-a7d8-4d98-a803-4706595c8cba">


<br><br>CUSTOMER (cust_no notnull varchar(15), name notnullvarchar(15), age notnull int,city notnull varchar(15), pincode notnull int, state notnullvarchar(15), primarykey cust_no)
<img width="666" alt="Screenshot 2023-09-01 at 5 25 55 PM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/2bc5d028-98a0-41a6-b7f3-a595f0ddd3a0">


<br><br>SUPPLIER (s_no notnull varchar(10), sname notnullvarchar(15), age notnull int,city notnull varchar(15), primarykey sno)
<br><img width="379" alt="Screenshot 2023-09-01 at 5 26 16 PM" src="https://github.com/AnnaTheSloth284/S5_KTU_DBMS_Lab/assets/112563080/792c780d-bf72-4fca-8e00-5c18993fb224">

