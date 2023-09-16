use Northwind

/*1 ejercicio*/
select count(OrderID) as cantidad, min(Freight) as pesoMinimo,  max(Freight) as pesomaximo, avg(freight) as pesopromedio, sum(freight) as pesototal from  Orders 

/*2ejercicio*/

select count(title), lastname, firstname from Employees 
where Title = Title
group by Title