SELECT *
FROM Person.Person
ORDER BY FirstName asc

SELECT *
FROM Person.Person
ORDER BY FirstName desc

SELECT *
FROM Person.Person
ORDER BY FirstName asc, LastName desc

/*
DESAFIO
OBTER O ProductID DOS 10 PRODUTOS MAIS CAROS CADASTRADOS NO SISTEMA , LISTANDO DO MAIS CARO PARA O MAIS BARATO
*/
SELECT TOP 10 ProductId
FROM Production.Product
ORDER BY ListPrice desc

/*
DESAFIO
OBTER O NOME E NUMERO DO PRODUTO DOS PRODUTOS QUE TEM O ProductID ENTRE 1~4
*/
SELECT TOP 4 Name,ProductNumber
FROM Production.Product
ORDER BY ProductID asc
