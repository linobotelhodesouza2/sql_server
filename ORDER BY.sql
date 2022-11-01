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

