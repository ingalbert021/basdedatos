use northwind

/*primer ejercicio*/

select EmployeeID, FirstName, LastName, Country from Employees 
wHERE country = 'UK';


/*segundo ejercicio*/
select EmployeeID,firstname, lastname, title, reportsTo
from Employees
where ReportsTo > 0;


/*tercer ejercicio*/

select EmployeeID, firstname, lastname, title, reportsTo 
from Employees
where reportsto is null;


/*cuarto ejercicio*/

select productID, productName, Unitprice
from
Products
where unitprice >= 55   order by unitprice desc;


/*quinto ejercicio*/

select * 
from Orders
where OrderDate >= '19960101'  and OrderDate <= '19961231'
 /*tambien puedes utilizar BETWEEN '19960101'  and '19961231'*/


 /*sexto ejercicio*/

 select * 
  from orders
  where EmployeeID = '3'  and  RequiredDate < ShippedDate


  /*sextimo ejercicio*/
  select orderid, CustomerID, Employeeid, orderdate, shipcountry
  from orders
  where EmployeeID in('5', '3', '4') and ShipCountry  = 'venezuela';


  /*octavo ejercicio*/
  select companyName, ContactName, Phone, city, Country
  from Customers
  where city like 'A%' or country like '%a'


  /*noveno ejercicio */
  select fax, companyName, contactName, Country 
  from
  Suppliers
  where fax  is null and country != 'venezuela' and country != 'mexico'and country != 'francia'
  order by country asc;

  /*decimo ejercicio*/
  /*nota: subconsulta*/
  select productID, productName, categoryID, UnitPrice

 from Products

 where categoryID = (select 
  categoryID from categories
  where CategoryID = '1');

