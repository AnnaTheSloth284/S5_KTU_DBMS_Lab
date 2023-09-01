### Queries

##### 1. List all customers in Madras<br>
<br>SELECT * FROM CUSTOMER
<br>WHERE CITY='Madras';

##### 2. List all customer- numbers of all who purchase the product in the month of January<br>
<br>SELECT CUSTNO FROM PURCHASE
<br>WHERE ORDERDATE LIKE '___01%';

##### 3. List all the name of company whose price is greater than 5000?<br>
<br>SELECT COMPANY FROM PRODUCT
<br>WHERE PRICE>5000;

##### 4. List all the customers whose name is not beginning with ‘r’?<br>
<br>SELECT * FROM CUSTOMER
<br>WHERE NAME NOT LIKE 'r%';

##### 5. Add email field into the customer table?<br>
<br>ALTER TABLE CUSTOMER
<br>ADD EMAIL VARCHAR(20);

##### 6. List all the customers whose age is greater than 40 in Maharashtra?<br>
<br>SELECT * FROM CUSTOMER
<br>WHERE AGE>40 AND STATE='Maharashtra';

##### 7. Display the company’s name in the increasing order of price?<br>
<br>SELECT COMPANY FROM PRODUCT
<br>ORDER BY PRICE ASC;

##### 8. Calculate average age of customers from table customer.<br>
<br>SELECT AVG(AGE) FROM CUSTOMER;

##### 9. List cities of customers from states Maharashtra & Tamil Nadu.<br>
<br>SELECT CITY FROM CUSTOMER 
<br>WHERE STATE='Maharashtra' OR STATE='Tamil Nadu'; 

##### 10. Find average price from table product.<br>
<br>SELECT AVG(PRICE)
<br>FROM PRODUCT;
