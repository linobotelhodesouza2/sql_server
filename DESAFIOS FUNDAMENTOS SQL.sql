/*
1 - QUANTOS PRODUTOS TEMOS CADASTRADOS NO SISTEMA QUE CUSTAM MAIS DE 1500 DÓLARES
*/
SELECT Name,ListPrice
FROM Production.Product
WHERE ListPrice > 1500;

SELECT COUNT(*)
FROM Production.Product
WHERE ListPrice > 1500;

SELECT COUNT(ListPrice)
FROM Production.Product
WHERE ListPrice > 1500;

/*
2- QUANTAS PESSOAS TEMOS  COM O SOBRENOME QUE INICIA COM A LETRA P?
*/
SELECT *
FROM Person.Person

SELECT COUNT(LastName)
FROM Person.Person 
WHERE LastName LIKE 'P%'

SELECT COUNT(DISTINCT LastName)
FROM Person.Person 
WHERE LastName LIKE 'P%'

SELECT LastName
FROM Person.Person 
WHERE LastName LIKE 'P%'

SELECT DISTINCT LastName
FROM Person.Person 
WHERE LastName LIKE 'P%'

/*
3- EM QUANTAS CIDADES UNICAS ESTAO CADASTRADOS NOSSOS CLIENTES?
*/
SELECT *
FROM Person.Address

SELECT COUNT(DISTINCT (City))
FROM Person.Address

/*
4- QUAIS SAO AS CIDADES UNICAS QUE TEMOS CADASTRADOS EM NOSSO SISTEMA?
*/
SELECT DISTINCT (City)
FROM Person.Address

/*
5- QUANTOS PRODUTOS VERMELHOS TEM PRECO ENTRE 500  A 100 DOLARES?
*/
SELECT *
FROM Production.Product

SELECT COUNT(Color)
FROM Production.Product
WHERE Color = 'Red'

SELECT Color,ListPrice
FROM Production.Product
WHERE Color = 'Red' AND ListPrice between 500 AND 1000

SELECT COUNT(*)
FROM Production.Product
WHERE Color = 'red'
AND ListPrice between 500 AND 1000

/*
6- QUANTOS PRODUTOS CADASTRADOS TEM A PALAVRA 'road' NO NOME DELES?
*/
SELECT *
FROM Production.Product

SELECT COUNT(*)
FROM Production.Product
WHERE Name Like '%road%'

SELECT DISTINCT Name
FROM Production.Product
WHERE Name Like '%road%' 