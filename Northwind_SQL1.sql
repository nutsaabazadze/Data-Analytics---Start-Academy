
/* 1. Get Order id, Product id, Unit price from Order Details. */

select 
OrderID,
ProductID,
UnitPrice
from [Order Details]

SELECT COLUMN_NAME, DATA_TYPE 
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_NAME = 'Employees'

/* 2. Find Title of employee Nancy. */

select 
FirstName,
Title
from Employees
where FirstName = 'Nancy'

/* 3. Get the price of an order (by multiplying unit price by quantity) from Order Details.*/

select 
orderid,
(UnitPrice*Quantity) as price
from [Order Details]

/* 4. Display all cities that employees belong to but don’t allow repetition.*/

select distinct 
City
from Employees

/* 5. Find complete name of all employees.*/

select 
LastName,
FirstName
from Employees

/* 6. Display data of all employees those working as Sales Representative.*/

select  *
from Employees
where title = 'Sales Representative'


/* 7. Display complete name of employees those lives in London.*/

select
FirstName,
LastName,
city
from Employees
where city = 'London'

/* 8. Display product name whose unit price are greater than 90$.*/

select 
ProductName,
UnitPrice
from Products
where UnitPrice>90

/* 9. List the name of all employees whose first name starts with the letter ‘A’.*/

select
firstname
from Employees
where FirstName like 'A%'

/* 10. In Customer table, display all cities that ends with the letter ‘a’.*/

select 
City
from Customers
where City like '%a'

/* 11. Display names of all employees whose name contain ‘an’.*/

select
firstname
from Employees
where FirstName like '%an%'

/* 12. Display all the orders where unit price lies in the range of 10$ to 40$.*/

select distinct
unitprice
from [Order Details]
where UnitPrice between 10 and 40


/* 13. Display the company name where Region is NULL in Customer Table.*/

select 
CompanyName,
Region
from Customers
where Region is null

/* 14. Write a query to list employees who live in London, Seattle or Redmond*/

select *
from Employees
where City in ('London', 'Seattle', 'Redmond')


/* 15. Write a query to list employees whose address does not contain Rd.*/

select *
from Employees
where Address not like '%Rd%'

/* 16. Write a query to list all those employees whose TitleofCourtesy does not starts with M.*/

select *
from Employees
where TitleOfCourtesy not like 'M%'

/* 17. List order details whose ShipRegion is not Null.*/

select *
from Orders
where ShipRegion is not null

/* 18. List all products where UnitPrice is between 10 and 15 and QuantityPerUnit contains “bottles”*/

select *
from Products
where UnitPrice between 10 and 15 and QuantityPerUnit like '%bottles%'

/* 19. List all products where UnitPrice is not in 10,12,15,17 or 19.*/

select *
from Products
where UnitPrice <> 10 and UnitPrice <> 12 and UnitPrice <> 15 and UnitPrice <> 17 and UnitPrice <> 19