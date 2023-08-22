use Northwind

/*1ro ejercicio*/

SELECT * FROM PRIMEREJERCICIO;

/*EN EL CASO DE ESTE EJER.. ESTA CODIGO CIFRADO*/
exec sp_helptext primerejercicio;


/*2do ejercicio*/

SELECT 
*
FROM Categories ORDER BY  CategoryID DESC;


 
 /*3r ejercicio*/
 select EmployeeID, FirstName, LastName, title
 from Employees;




 /*4to ejercicio*/

 select * from Cuartoejercicio; 

 exec sp_helptext cuartoejercicio;


/*5to ejercicio*/
select companyName, contactName, country, phone
from
Suppliers order by country asc;


/*6to ejercicio*/


select * from sextoejercicio;

 exec sp_helptext sextoejercicio;


 /*7to ejercicio*/


 select * from septimoejercicio;

  exec sp_helptext septimoejercicio;


/*8vo ejercicio*/


select ProductName, productid, UnitPrice, (UnitPrice * 0.18) as 'ITEBIS'
FROM 
Products
group by ProductName, productid, UnitPrice
order by ProductName, productid, UnitPrice desc;

































create view primerejercicio as 
select CategoryID, categoryName 
from categories;

select * from primerejercicio;

exec sp_helptext primerejercicio;


alter view primerejercicio with encryption
as
select categoryID, CategoryName 
from Categories;
