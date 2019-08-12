SELECT maker AS Maker, COUNT(*) AS Amount_Of_PCs
FROM Product
WHERE type = "pc"
GROUP BY maker;


SELECT p.maker AS Maker, max(l.screen) AS Maximum_Screen_Size
FROM Product p, Laptop l
WHERE p.model = l.model AND p.maker = 'E';


SELECT maker AS Maker, AVG(price) AS Average_Price
FROM (
	SELECT maker, price
	FROM Product
	INNER JOIN Laptop ON Product.model = Laptop.model
	UNION SELECT maker, price
	FROM Product
	INNER JOIN PC ON Product.model = PC.model
	UNION SELECT maker, price
	FROM Product
	INNER JOIN Printer ON Product.model = Printer.model
) AS Joined_Table
GROUP BY maker HAVING Average_Price >= 200
ORDER BY Average_Price DESC;
