# MySql_Simple_Database
A simple database with queries

## Part 1
Open a mySQL connection in python.

Create a database called "Umuzi".

Create the following tables

Customers
Employees
Orders
Payments
Products
Create a Primary key for each table with auto-increment (make sure you correctly specify the data types, e.g. the ID field should be int).

Create a Foreign key for the tables.

Create a query that will:

INSERT the following records to the tables described above:

## Part 2

SELECT ALL records from table Customers.

SELECT records only from the name column in the Customers table.

Show the name of the Customer whose CustomerID is 1.

UPDATE the record for CustomerID =1 on the Customer table so that the name is "Lerato Mabitso".

DELETE the record from the Customers table for customer 2 (CustomerID = 2).

Select all unique values from the table Products.

Return the MAXIMUM payment made on the PAYMENTS table.

Create a query that selects all customers from the "Customers" table, sorted by the "Country" column.

Create a query that selects all Products with a price BETWEEN R100 and R600.

Create a query that selects all fields from "Customers" where country is "Germany" AND city is "Berlin".

Create a query that selects all fields from "Customers" where city is "Cape Town" OR "Durban".

Select all records from Products where the Price is GREATER than R500.

Return the sum of the Amounts on the Payments table.

Count the number of shipped orders in the Orders table.

Return the average price of all Products, in Rands and in Dollars (assume the exchange rate is R12 to the Dollar).

Using INNER JOIN create a query that selects all Payments with Customer information.

Document what information is stored in your database. Be sure to say what information is kept in what table, and which keys link the records between tables.
