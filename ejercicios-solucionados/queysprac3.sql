use Northwind


/*1 ejercicio*/

SELECT UPPER(LEFT(LastName, 1))  + LOWER(SUBSTRING(LastName, 2, LEN(LastName))) as APELLIDOS,  
UPPER(LEFT(Country, 1))  + LOWER(SUBSTRING(Country, 2, LEN(Country))) as PAIS 
FROM Employees;


/*2 ejercicio*/
select concat(TitleOfCourtesy, firstname, lastname, ' trabaja como ', title, ' desde la fecha ',HireDate) as Nombre_completo 
from Employees


/*3 ejercicio*/

select EmployeeID, Firstname LastName, concat(LastName, SUBSTRING(FirstName, 1, 1), '@miempresa.com') as email
from Employees;


/*4 ejercicio*/
SELECT companyName, LEN(CompanyName) as logitud 
FROM Customers
order by logitud desc;


/*5 ejercicio*/


select
right('0000' + convert(varchar(10), productID), 4) as codigo,
ProductName as producto, replace(QuantityPerUnit, 'bottles', 'botellas') 
FROM Products


/*6 ejercicio*/
select 
ltrim(upper(City)) as ciudad, ltrim(upper(REVERSE(city))) as reverse
from
Customers


/*7 ejercicio*/
select floor(rand()*98) as aleatorio 

SELECT ROUND(((100 - 1) * RAND() + 1), 0) as aleatorio, 7 as fijo, SQRT(7) as raiz, POWER(7, 3) as elevado


/*8 ejercicio*/
select productID, ProductName, UnitPrice,
cast (unitprice as decimal(18, 2)) as redondeo2decimales,
cast (unitprice as decimal(18, 0)) as haciaarriba,
cast (unitprice as decimal(18, 0)) as haciaaabajo
from
Products


/*9 ejercicio*/
select  ProductID, productName,  max(ReorderLevel) as algo, DIFFERENCE(ReorderLevel, UnitsInStock) as diferencia
from Products
group by ProductID, productName, UnitsInStock, ReorderLevel

select difference(ReorderLevel, UnitsInStock)
from Products


