/*
Group By, Order By
*/

select * 
from EmployeeDemographics

/* დაითვალეთ რამდენი ქალი და რამდენი კაცი თანამშრომელია EmployeeDemographics ბაზის მიხედვით */

select Gender
,count(Gender) as CountGender
from EmployeeDemographics
group by Gender

/* დაითვალეთ რამდენი ქალი და რამდენი კაცი თანამშრომელია EmployeeDemographics ბაზის მიხედვით 
   რომლის ასაკიც არის 31ზე მეტი */

select Gender 
,count(Gender) as CountGender
from EmployeeDemographics
where age>31
group by Gender

/* დაითვალეთ რამდენი ქალი და რამდენი კაცი თანამშრომელია EmployeeDemographics ბაზის მიხედვით 
   რომლის ასაკიც არის 31ზე მეტი და დასორტეთ ზრდადობის და კლებადობის მიხედვით*/

select Gender 
,count(Gender) as CountGender
from EmployeeDemographics
where age>31
group by Gender
order by CountGender DESC

/* დასორტეთ EmployeeDemographics ბაზის თანამშრომლები ასაკის მიხედვით კლებადობით */

select *
from EmployeeDemographics
order by AGE DESC 

/* დასორტეთ EmployeeDemographics ბაზის თანამშრომლები ასაკის და სქესის მიხედვით  */


select *
from EmployeeDemographics
order by Age, Gender DESC

select *
from EmployeeDemographics
order by 4, 5 DESC
