SELECT DISTINCT maker AS Maker
FROM Product
WHERE model IN ( 
	SELECT model 
	FROM PC
	WHERE speed >= 3.0
);

SELECT model AS Model, price AS Price
FROM Printer
WHERE price >= ALL (
	SELECT price
	FROM Printer
);

SELECT model AS Model
FROM Laptop
WHERE speed <= ALL (
	SELECT speed
	FROM PC
);


SELECT model AS Model
FROM (
 (SELECT model, price FROM PC) UNION
 (SELECT model, price FROM Laptop) UNION
 (SELECT model, price FROM Printer)) AS joinedTable 
WHERE joinedTable.price >= ALL (
	SELECT price
	FROM (
		(SELECT model, price FROM PC) UNION
		(SELECT model, price FROM Laptop) UNION
		(SELECT model, price FROM printer)) AS secJoinTable
);

SELECT DISTINCT pt.maker AS Maker, pt.model AS Model
FROM Product pt, Printer pr
WHERE pt.model = pr.model
  AND pr.color = true
  AND pr.price <= ALL (
	SELECT price
	FROM Printer
	WHERE color = true
  );

SELECT DISTINCT pt.maker AS Maker
FROM Product pt, PC pc
WHERE pt.model = pc.model
  AND pc.speed >= ALL (
	SELECT speed
	FROM PC
	WHERE ram  = (
		SELECT min(ram)
		FROM PC
	)
);






