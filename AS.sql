SELECT TOP 10 *
FROM Production.Product

/*
1 - ENCONTRAR O FirstName E LastName DA TABELA PERSON.PERSON E COLOCAR EM PORTUGU�S
*/

SELECT *
FROM Person.Person

SELECT TOP 10 FirstName AS "NOME",LastName AS "SOBRENOME"
FROM Person.Person
/*
2 - ProductNumber DA TABELA Production.Product E TROCAR E COLOCAR 'NUMERO DO PRODUTO'
*/
SELECT *
FROM Production.Product

SELECT TOP 10 ProductNumber AS "NUMERO DO PRODUTO"
FROM Production.Product

/*
3 - SALES.SalesOrderDetail ENCONTRAR O UNITPRICE E TROCAR POR 'PRE�O UNIT�RIO'
*/
SELECT *
FROM Sales.SalesOrderDetail

SELECT UnitPrice AS "PRE�O UNIT�RIO"
FROM Sales.SalesOrderDetail
