/*
Where Statement
=, <> / != , <, >, And, Or, Like, Null, Not Null, In
*/

select * 
from EmployeeDemographics

/* EmployeeDemographics ცხრილიდან ამოიღეთ ისეთი თანამშრომლები რომელთაც ქვიათ Jim  */

select *
from EmployeeDemographics
where FirstName = 'Jim';

/* EmployeeDemographics ცხრილიდან ამოიღეთ ისეთი თანამშრომლები რომელთაც არ ქვიათ Jim  */

select *
from EmployeeDemographics
where FirstName <> 'Jim';

select *
from EmployeeDemographics
where FirstName != 'Jim';

/* EmployeeDemographics ცხრილიდან ამოიღეთ ისეთი თანამშრომლები 
   რომელთა ასაკი მეტია/მეტია ან ტოლია 30-ზე  */

select *
from EmployeeDemographics
where Age>30;

select *
from EmployeeDemographics
where Age>=30;

/* EmployeeDemographics ცხრილიდან ამოიღეთ ისეთი თანამშრომლები 
   რომელთა ასაკი ნაკლებია/ნაკლებია ან ტოლია 32-ზე  */

select *
from EmployeeDemographics
where Age<32;

select *
from EmployeeDemographics
where Age<=32;


/* EmployeeDemographics ცხრილიდან ამოიღეთ ისეთი თანამშრომლები 
   რომელთა ასაკი ნაკლებია ან ტოლია 32-ზე და არიან მამრობითი სქესის */

select *
from EmployeeDemographics
where Age<=32 AND Gender='Male';

/* EmployeeDemographics ცხრილიდან ამოიღეთ ისეთი თანამშრომლები 
   რომელთა ასაკი ნაკლებია ან ტოლია 32-ზე ან არიან მამრობითი სქესის */

select *
from EmployeeDemographics
where Age<=32 OR Gender='Male';

/* EmployeeDemographics ცხრილიდან ამოიღეთ ისეთი თანამშრომლები 
   რომელთა გვარი იწყება S-ით */

select *
from EmployeeDemographics
where LastName LIKE 'S%';

/* EmployeeDemographics ცხრილიდან ამოიღეთ ისეთი თანამშრომლები 
   რომელთა გვარი შეიცავს S-ს */

select *
from EmployeeDemographics
where LastName LIKE '%S%';

/* EmployeeDemographics ცხრილიდან ამოიღეთ ისეთი თანამშრომლები 
   რომელთა გვარი იწყება S-ით და შეიცავს o-ს */

   select *
   from EmployeeDemographics
   where LastName LIKE 'S%o%';


   /* EmployeeDemographics ცხრილიდან ამოიღეთ ისეთი თანამშრომლები 
   რომელთა გვარიც არ გვაქვს მოცემული/ვისი გვარიც მოცემული გვაქვს  */

   select *
   from EmployeeDemographics
   where LastName is null;

   select *
   from EmployeeDemographics
   where LastName is not null;

  /* EmployeeDemographics ცხრილიდან ამოიღეთ ისეთი თანამშრომლები 
  რომელთა სახელები არის ჯიმი და მაიკლი  */

  select * 
  from EmployeeDemographics
  where FirstName='Jim' or FirstName='Michael';

  select * 
  from EmployeeDemographics
  where FirstName in ('Jim', 'Michael');


