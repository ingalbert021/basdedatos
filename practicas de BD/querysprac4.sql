use Northwind

/*1 ejercicio*/
select count(OrderID) as cantidad, min(Freight) as pesoMinimo,  max(Freight) as pesomaximo, avg(freight) as pesopromedio, sum(freight) as pesototal from  Orders 

/*2 ejercicio*/
select title, count(Title) as cantidad  from Employees
group by Title
order by title desc

/*3 ejercicio*/


select categoryID, count(UnitsInStock) as CantidaddeProductos, avg(unitprice) as preciopromedio from Products
group by CategoryID


/*4 ejercicio*/
select * from Orders
select * from Employees
select * from Products

select datename(year, requireddate) as year, EmployeeID from Orders
group by OrderID, RequiredDate, EmployeeID
