SELECT *
FROM Sales.SalesOrderDetail

SELECT SpecialOfferID, SUM(UnitPrice) AS 'soma'
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID

SELECT SpecialOfferID,UnitPrice
FROM Sales.SalesOrderDetail
WHERE SpecialOfferID = 9

-- VAMOS DIZER QUE EU QUERO SABER QUANTOS CADA PRODUTO FOI VENDIDO AT� HOJE 

SELECT *
FROM Sales.SalesOrderDetail

SELECT ProductID,COUNT(ProductID) AS 'PROD.VENDIDOS AT� HOJE'
FROM Sales.SalesOrderDetail
GROUP BY ProductID

-- VAMOS DIZER QUE EU QUERO SABER QUANTOS NOMES DE CADA NOME TEMOS CADASTRADOS EM NOSSO BANCO DE DADOS 

SELECT *
FROM Person.Person

SELECT FirstName,COUNT(FirstName) AS 'QTDADE DE NOMES'
FROM Person.Person
GROUP BY FirstName

-- NA TABELA PRODUCTION.PRODUCT EU QUERO SABER A M�DIA DE PRE�O PARA OS PRODUTOS QUE S�O PRATAS(SILVER)

SELECT *
FROM Production.Product

SELECT COLOR, AVG(ListPrice) AS 'Pre�o'
FROM Production.Product
GROUP BY Color

SELECT COLOR, AVG(ListPrice) AS 'Pre�o'
FROM Production.Product
WHERE Color = 'Silver'
GROUP BY Color

/*
DESAFIO
1 - EU PRECISO SABER QUANTAS PESSOAS TEM O MESMO MIDDLENAME AGRUPADAS POR UM MIDDLENAME
*/

SELECT *
FROM Person.Person

SELECT MiddleName, COUNT(MiddleName) AS 'MESMO MiddleName'
FROM Person.Person
GROUP BY MiddleName

-- SE EU QUISER VER UM MIDDLENAME ESPECIFICO '0'

SELECT MiddleName, COUNT(MiddleName) AS 'MESMO MiddleName'
FROM Person.Person
WHERE MiddleName = 'O'
GROUP BY MiddleName

/*
DESAFIO
2 - EU PRECISO SABER EM MEDIA QUAL � A QUANTIDADE (QUANTITY) QUE CADA PRODUTO � VENDIDO NA LOJA.
*/
	SELECT * 
	FROM Sales.SalesOrderDetail

	SELECT ProductID, AVG(OrderQty) AS 'M�dia'
	FROM Sales.SalesOrderDetail
	GROUP BY ProductID

/*
DESAFIO
3 - EU QUERO SABER QUAL FORAM AS 10 VENDAS QUE NO TOTAL TIVERAM OS MAIORES VALORES DE VENDA (LINE TOTAL) POR PRODUTO DO MAIOR VALOR PARA
O MENOR
*/

SELECT * 
FROM Sales.SalesOrderDetail

SELECT TOP 10 ProductID,SUM(linetotal) AS 'Media'
FROM Sales.SalesOrderDetail 
GROUP BY ProductID
ORDER BY SUM(LineTotal)DESC;

/*
DESAFIO
4 - EU PRECISO SABER QUANTOS PRODUTOS E QUAL E QUANTIDADE MEDIA DE PRODUTOS TEMOS CADASTRADOS NAS NOSSAS ORDEM DE SERVI�O (WORKORDER)
AGRUPADOS POR ProductId
*/
SELECT * 
FROM Production.WorkOrder

SELECT productId, COUNT(productId) AS 'Contagem', 
AVG(OrderQty) AS 'Media de Ordem'
FROM Production.WorkOrder
GROUP BY ProductID  
