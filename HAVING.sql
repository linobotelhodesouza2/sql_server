SELECT FirstName, COUNT(FirstName) AS 'QUANTIDADE'
FROM Person.Person
GROUP BY FirstName
HAVING COUNT(FirstName) > 10

/*
EXEMPLO QUEREMOS SABER QUAIS PRODUTOS QUE NO TOTAL DE VENDAS ENTÃO ENTRE 162K E 500K
*/
SELECT TOP 10 *
FROM Sales.SalesOrderDetail

SELECT productid, SUM(LineTotal) AS 'TOTAL'
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(LineTotal) between 162000 and 500000

--#########################################################################################################

SELECT FirstName, COUNT(FirstName) AS 'QUANTIDADE'
FROM Person.Person
GROUP BY FirstName
HAVING COUNT(FirstName) > 10

SELECT FirstName, COUNT(FirstName) AS 'QUANTIDADE'
FROM Person.Person
WHERE Title = 'Mr.'
GROUP BY FirstName
HAVING COUNT(FirstName) > 10

--#########################################################################################################

/*
1 - ESTAMOS QUERENDO IDENTIFICAR AS PROVINCIAS (STATEPROVINCEID) COM O MAIOR NUMERO DE CADASTROS NO NOSSO SISTEMA, ENTÃO É PRECISO
ENCONTRAR QUAIS PROVÍNCIAS (STATEPROVINCEID) ESTÃO REGISTRADAS NO BANCO DE DADOS MAIS QUE 1000 VEZES.
*/

SELECT *
FROM Person.Address

SELECT StateProvinceID, COUNT(StateProvinceID) AS 'CIDADES'
FROM Person.Address
GROUP BY StateProvinceID
HAVING COUNT(StateProvinceID) > 1000 

/*
2 - SENDO QUE SE TRATA DE UMA MULTINACIONAL OS GERENTES QUEREM SABER QUAIS PRODUTOS (ProductID) NÃO ESTAO TRAZENDO EM MEDIA NO 
MINIMO 1 MILHAO EM TOTAL DE VENDAS(LineTotal)
*/
SELECT * 
FROM Sales.SalesOrderDetail

--ERRADO
SELECT ProductID, COUNT(ProductID) AS 'QUANTIDADE DE PRODUTOS'
FROM Sales.SalesOrderDetail
WHERE LineTotal > 1000
GROUP BY LineTotal
HAVING AVG(LineTotal)

--CERTO
SELECT ProductID, AVG(LineTotal) AS 'QUANTIDADE DE PRODUTOS'
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING AVG(LineTotal) < 1000000

	
