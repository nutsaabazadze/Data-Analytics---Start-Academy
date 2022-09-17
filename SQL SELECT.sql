/*
Select Statement
*, Top, Distinct, Count, As, Mac, Min, Avg
*/

/* ამოიღეთ EmployeeDemographics-ის მთლიანად (მთლიანი ცხრილი)
   Select everything from EmployeeDemographics */

select * 
from EmployeeDemographics

/* ამ ცხრილიდან ამოიღეთ მხოლოდ 1 სვეტი სახელად FirstName
   Select FirstName from EmployeeDemographics */

select FirstName
from EmployeeDemographics

/* ამ ცხრილიდან ამოიღეთ 2 სვეტი სახელებით FirstName და LastName
   Select FirstName and LastName from EmployeeDemographics */

select FirstName
,LastName
from EmployeeDemographics

/* ამოიღეთ ამ ცხრილის ყველა სვეტის პირველი 5 ჩანაწერი
   Select only top 5 rows from EmployeeDemographics */

select top 5 *
from EmployeeDemographics


/* ამოიღეთ თანამშრომლის ID-ს და სქესის უნიკალური მნიშვნელობები
   Select Distinct EmployeeID, Gender from EmployeeDemographics */

select distinct(Gender)
from EmployeeDemographics


/* დაითვალეთ რამდენი არანულოვანი მნიშვნელობისგან შედგება თანამშრომლის გვარის სვეტი 
   და დაარქვით ამ სვეტს სახელი
   Count LastNames from EmployeeDemographics and create new column with the name LastNameCount*/

select 
count(LastName) 
from EmployeeDemographics

select 
count(LastName) as LastNameCount
from EmployeeDemographics

/* EmployeeSalary ცხრილიდან დაითვალეთ მაქსიმალური, მინიმალური, საშუალო მნიშვნელობები 
   Calculate Max, Min, Aaverage of Salary from EmployeeSalary*/

   select 
   MAX(Salary)
   from EmployeeSalary

   select 
   min(Salary)
   from EmployeeSalary

   select 
   avg(Salary)
   from EmployeeSalary

   /* FROM ის კომპონენტები - სწორი სერვერი, ბაზა და ცხრილი 
      ბაზა გადავიყვანოთ Master-ზე*
	  სერვერიც საჭიროა როდესაც ბევრი სხვადასხვა სერვერი გვაქვს/

   select * 
   from DAcourse.dbo.EmployeeDemographics