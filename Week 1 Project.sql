--	You are provided with a table called Sales, which contains the following columns:
--	
--	1). SaleID: A unique ID for each sale.
--	2). ProductID: The ID of the product sold.
--	3). CustomerID: The ID of the customer who made the purchase.
--	4). SaleDate: The date the sale occurred.
--	5). Amount: The amount of the sale.
--	
--	Questions- Write SQL scripts that:
--	
--	1). Finds the total sales for each product.
--	
--	2). Calculates the total sales for each month.
--	
--	3). Identifies customers who made more than 5 purchases.



-- 1). Finds the total sales for each product.


SELECT 
	ProductID,
	SUM(Amount) AS TotalSales
	
FROM Sales
GROUP BY ProductID;


-- 2). Calculates the total sales for each month.


SELECT 
	ProductID,
	YEAR(SaleDate) AS saleyear,
	MONTH(SaleDate) AS salemonth,
	SUM(Amount) AS total_sales

FROM Sales
GROUP BY saleyear, salemonth;


-- 3). Identifies customers who made more than 5 purchases.


SELECT
	CustomerID,
	COUNT(SaleID) AS SalesCount
	
FROM Sales
GROUP BY CustomerID
HAVING SalesCount > 5;




