1=?
--------------------------
USE TSQL2012
SELECT CompanyName
FROM Sales.Customers
WHERE city = 'Dallas'
--------------------
USE TSQL2012
SELECT SUM (qty)
FROM Sales.OrderDetails
WHERE unitprice > '1000'
--------------------
USE TSQL2012
SELECT CompanyName
FROM Production.Suppliers ps
INNER JOIN Production.Products pp
ON ps.supplierid = pp.supplierid
INNER JOIN Sales.OrderDetails so
ON pp.unitprice = so.unitprice
WHERE qty > '1000'
-------------------------------
USE TSQL2012
SELECT SUM (productid) 'productid', companyname
FROM Production.Products pp
INNER JOIN Production.Suppliers ps
ON pp.supplierid = ps.supplierid
WHERE productname = 'Racing Socks Left' AND companyname = 'Riding Cycles'
GROUP BY companyname
ORDER BY companyname
---------------------------
USE TSQL2012
SELECT unitprice, qty, orderid
FROM Sales.OrderDetails
WHERE qty = '1'
------------------------------
USE TSQL2012
SELECT description 'description', productid 'productid'
FROM Production.Categories pc
INNER JOIN Production.Products pp
ON pp.categoryid = pc.categoryid
WHERE pp.productid = '736' 
----------------------------------
USE TSQL2012
SELECT qty, unitprice, productid, (qty * unitprice) 'totalvalue'
FROM Sales.OrderDetails
WHERE (qty * unitprice) > '10000' AND (qty * unitprice) BETWEEN '1000 - 9999' AND (qty * unitprice) BETWEEN '0 - 99'  
   

