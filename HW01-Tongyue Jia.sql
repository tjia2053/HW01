USE AdventureWorks2019
GO

-- T1. Write a query that retrieves the columns ProductID, Name, Color and ListPrice from the Production.Product table, with no filter. 
SELECT ProductID, Name, Color, ListPrice
FROM Production.Product

-- T2. Write a query that retrieves the columns ProductID, Name, Color and ListPrice from the Production.Product table, excluding the rows that ListPrice is 0.
SELECT ProductID, Name, Color, ListPrice
FROM Production.Product
WHERE ListPrice!=0

-- T3. Write a query that retrieves the columns ProductID, Name, Color and ListPrice from the Production.Product table, the rows that are not NULL for the Color column.
SELECT ProductID, Name, Color, ListPrice
FROM Production.Product
WHERE Color IS NOT NULL

-- T4. Write a query that retrieves the columns ProductID, Name, Color and ListPrice from the Production.Product table, the rows that are not NULL for the column Color, and the column ListPrice has a value greater than zero.
SELECT ProductID, Name, Color, ListPrice
FROM Production.Product
WHERE Color IS NOT NULL AND ListPrice>0

-- T5. Write a query that concatenates the columns Name and Color from the Production.Product table by excluding the rows that are null for color.
SELECT Name, Color     
FROM Production.Product
WHERE Color IS NOT NULL

-- T6. Write a query that generates the following result set from Production.Product: NAME: LL Crankarm  --  COLOR: Black
SELECT 'NAME: '+ Name + ' -- COLOR: ' + Color  
FROM Production.Product
WHERE Name IS NOT NULL AND Color IS NOT NULL

-- T7. Write a query to retrieve the to the columns ProductID and Name from the Production.Product table filtered by ProductID from 400 to 500 using between
SELECT ProductID, Name  
FROM Production.Product
WHERE ProductID BETWEEN 400 AND 500

-- T8. Write a query to retrieve the to the columns  ProductID, Name and color from the Production.Product table restricted to the colors black and blue
SELECT ProductID, Name, Color  
FROM Production.Product
WHERE Color='Black' OR Color='Blue'

-- T9. Write a query to get a result set on products that begins with the letter S. 
SELECT *
FROM Production.Product
WHERE Name LIKE 'S%'

-- T10. Write a query that retrieves the columns Name and ListPrice from the Production.Product table. Your result set should look something like the following. Order the result set by the Name column. The products name should start with either 'A' or 'S'
SELECT Name, ListPrice
FROM Production.Product
WHERE Name LIKE 'S%' OR Name LIKE 'A%'
ORDER BY Name

-- T11. Write a query so you retrieve rows that have a Name that begins with the letters SPO, but is then not followed by the letter K. After this zero or more letters can exists. Order the result set by the Name column.
SELECT Name 
FROM Production.Product
WHERE Name LIKE 'SPO[^K]%'
ORDER BY Name

-- T12. Write a query that retrieves the unique combination of columns ProductSubcategoryID and Color from the Production.Product table. We do not want any rows that are NULL.in any of the two columns in the result. (Hint: Use IsNull)
SELECT DISTINCT ProductSubcategoryID, Color  
FROM Production.Product
WHERE ProductSubcategoryID IS NOT NULL AND Color IS NOT NULL














