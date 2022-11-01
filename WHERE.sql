
SELECT *
FROM Person.Person
WHERE LastName = 'miller' and FirstName = 'anna'

SELECT *
FROM Production.Product;

SELECT *
FROM Production.Product
WHERE color = 'blue' or color = 'black'

SELECT *
FROM Production.Product
WHERE ListPrice > 1500;

SELECT *
FROM Production.Product
WHERE ListPrice > 1500 and ListPrice < 5000;

SELECT *
FROM Production.Product
WHERE color <> 'red';

/*DESAFIO #3
A EQUIPE  DE PRODUÇÃO  DE PRODUTOS PRECISA DO NOME DE TODAS AS PEÇAS QUE PESAM MAIS QUE 500KG MAS NÃO MAIS QUE 700KG PARA INSPEÇÃO.
*/
SELECT *
FROM Production.Product;

SELECT Name,Weight
FROM Production.Product
WHERE Weight > 500 and Weight <= 700;

/*
DESAFIO #4
FOI PEDIDO  PELO MARKETING UMA RELAÇÃO  DE TODOS OS EMPREGADOS (EMPLOYEES) QUE SÃO CASADOS (SINGLE = SOLTEIRO),(MARRIED = CASADOS) E SÃO 
ASALARIADOS (SALARIED)
*/
SELECT *
FROM HumanResources.Employee;

SELECT DISTINCT BusinessEntityID,JobTitle,MaritalStatus,SalariedFlag
FROM HumanResources.Employee
WHERE MaritalStatus = 'M' and SalariedFlag = '1';

/*DESAFIO #5
UM USUARIO CHAMADO PETER KREBS ESTA DEVENDO UM PAGAMENTO , CONSIGA  O EMAIL  DELE PARA QUE POSSAMOS ENVIAR UMA COBRANÇA !
BusinessEntityID
(VOÇÊ VAI TER QUE USAR UMA TABELA PERSON.PERSON E DEPOIS A TABELA PERSON.EMAILADDRESS)
*/
SELECT *
FROM Person.Person;

SELECT *
FROM Person.EmailAddress;

SELECT BusinessEntityID,FirstName,LastName
FROM Person.Person
WHERE FirstName = 'peter' and LastName = 'Krebs';

SELECT * 
FROM Person.EmailAddress;

SELECT EmailAddress
FROM Person.EmailAddress
WHERE BusinessEntityID = '26';
