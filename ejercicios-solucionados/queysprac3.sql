use Northwind


/*primer ejercicio*/

SELECT UPPER(LEFT(LastName, 1))  + LOWER(SUBSTRING(LastName, 2, LEN(LastName))) as APELLIDOS,  
UPPER(LEFT(Country, 1))  + LOWER(SUBSTRING(Country, 2, LEN(Country))) as PAIS 
FROM Employees;


/*segundo ejercicio*/
select concat(TitleOfCourtesy, firstname, lastname, ' trabaja como ', title, ' desde la fecha ',HireDate) as Nombre_completo 
from Employees


/*tercer ejercicio*/

select EmployeeID, Firstname LastName, concat(LastName, SUBSTRING(FirstName, 1, 1), '@miempresa.com') as email
from Employees;


/*cuarto ejercicio*/
SELECT companyName, LEN(CompanyName) as logitud 
FROM Customers
order by logitud desc;


/*quinto ejercicio*/

