1

-----

Write a query that shows all the information about all the salespeople in
the database. Use a basic SELECT query.

-----


SELECT * FROM salespeople;


==========
2

-----

Write a query that shows all the information about all salespeople from
the 'Northwest' region.

-----


SELECT * FROM salespeople WHERE region='Northwest';


==========
3

-----

Write a query that shows just the emails of the salespeople from the
'Southwest' region.

-----


SELECT email FROM salespeople WHERE region = 'Southwest';


==========
4

-----

Write a query that shows the first name, last name, and email of all
salespeople in the 'Northwest' region.

-----


SELECT first_name, last_name, email FROM salespeople WHERE region = 'Northwest';


==========
5

-----

Write a query that shows the common name of melons that cost more than
$5.00.

-----


SELECT common_name FROM melons WHERE price > 5.00;


==========
6

-----

Write a query that shows the common name and price for all
watermelons that cost more than $5.00.


-----


SELECT common_name,price FROM melons WHERE price>5.00 AND melon_type='Watermelon';


==========
7

-----

Write a query that displays all common names of melons that start with
the letter 'C'.


-----


SELECT common_name FROM melons WHERE common_name LIKE 'C%';


==========
8

-----

Write a query that shows the common name of any melon with 'Golden'
anywhere in the common name.


-----


SELECT common_name FROM melons WHERE common_name LIKE '%Golden%';


==========
9

-----

Write a query that shows all the distinct regions that a salesperson can belong to.


-----


SELECT DISTINCT region FROM salespeople;


==========
10

-----

Write a query that shows the emails of all salespeople from both the
Northwest and Southwest regions.


-----


SELECT email FROM salespeople WHERE region ='Northwest' or region='Southwest';


==========
11

-----

Write a query that shows the emails of all salespeople from both the
Northwest and Southwest regions, this time using an 'IN' clause.  


-----


SELECT email FROM salespeople WHERE region IN ('Northwest','Southwest');


==========
12

-----

Write a query that shows the email, first name, and last name of all
salespeople in either the Northwest or Southwest regions whose last names start
with the letter 'M'.

-----


SELECT email,first_name,last_name FROM 
(SELECT * FROM salespeople WHERE region='Northwest' or region='Southwest' ) AS Regions
WHERE last_name LIKE 'M%';


==========
14

-----

Write a query that shows the total number of customers in our customer
table.

-----


SELECT COUNT(*) from customers;


==========
15

-----

Write a query that counts the number of orders (in the orders table) shipped to California.

-----


SELECT COUNT(*) FROM orders WHERE shipto_state = 'CA';


==========
16

-----

Write a query that shows the total amount of money spent across all melon
orders.

-----


SELECT SUM(order_total) FROM orders;


==========
17

-----

Write a query that shows the average order cost.

-----


SELECT AVG(order_total) from orders;


==========
18

-----

Write a query that shows the order total that was lowest in price.

-----


SELECT MIN(order_total) FROM orders;


==========
19

-----

Write a query that fetches the id of the customer whose email is
'pclark74@gmail.com'.

-----


SELECT orders.customer_id FROM orders
 INNER JOIN customers ON orders.customer_id=customers.id WHERE email='pclark74@gmail.com' LIMIT 1;