/*1. Create a report that shows the capitalized FirstName and capitalized LastName renamed as 
     FirstName and Lastname respectively and HireDate from the employees table sorted from the 
     newest to the oldest employe*/

select 
UPPER(FirstName) AS FirstName,
UPPER(LastName) AS LastName,
HireDate
from Employees
order by HireDate

/*2. Create a report that shows the top 10 OrderID, OrderDate, ShippedDate, CustomerID, 
     Freight from the orders table sorted by Freight in descending order */

select top 10
OrderID, OrderDate, ShippedDate, CustomerID, Freight
from Orders
order by Freight Desc

/*3. Create a report showing all the ContactName, Address,      City of all customers not from Germany, Mexico, Spain.*/select ContactName, Address, Cityfrom Customerswhere Country not in ('Germany','Mexico','Spain')/*4. Create a report that shows the EmployeeID, OrderID, CustomerID, RequiredDate, 
     ShippedDate from all orders shipped later
     than the required date */

select 
EmployeeID, OrderID, CustomerID, RequiredDate, ShippedDate
from Orders
where ShippedDate>RequiredDate


/*5. Create a report that shows the EmployeeID, OrderID, CustomerID, RequiredDate, 
     ShippedDate from all orders shipped later
     than the required date and calculate how any days later it shipped and sort by delayed days*/

select 
EmployeeID, OrderID, CustomerID, RequiredDate, ShippedDate,
DATEDIFF(day, ShippedDate, RequiredDate) as diff
from Orders
where ShippedDate>RequiredDate
order by diff

/*6. Create a report showing all the even numbers of OrderID from the orders table */

select *
from Orders
where OrderID % 2=0

/*7. Create a report that shows the FirstName, LastName 
     of all employees that do not report to anybody */

select 
FirstName, LastName, ReportsTo
from Employees
where ReportsTo is null

/*8. Create a report that shows the SupplierID, ProductName, 
     CompanyName from all product Supplied by Exotic Liquids,
     Specialty Biscuits, Ltd., Escargots Nouveaux sorted by the supplier ID */

select * from Suppliers
select * from Products

select
Suppliers.SupplierID,
Suppliers.CompanyName,
Products.ProductName
from Suppliers
join Products on Suppliers.SupplierID = Products.SupplierID
where CompanyName  IN  ('Exotic Liquids','Specialty Biscuits, Ltd.','Escargots Nouveaux')
order by Suppliers.SupplierID

/*9. Create a select statement that outputs the following 
      "FirstName LastName can be reached atx Extension"*/

SELECT CONCAT( FirstName,' ', LastName ,' can be reached at ', Extension ) AS Contactinfo
FROM Employees;


/*10. Create a report that shows the SupplierID, CompanyName, CategoryName, 
      ProductName and UnitPrice from the products, 
      suppliers and categories table. */  select * from Products select * from Suppliers select * from Categories select P.ProductName, P.Unitprice, S.SupplierID, S.CompanyName, C.CategoryName from Products P join Suppliers S on P.SupplierID=S.SupplierID join Categories C on P.CategoryID=C.CategoryID /* 11. Create a report that shows the CustomerID, sum of Freight, 
 from the orders table with sum of freight greater $200, grouped 
 by CustomerID.  */ select  CustomerID, SUM(Freight) from Orders group by CustomerID having SUM(freight)>200