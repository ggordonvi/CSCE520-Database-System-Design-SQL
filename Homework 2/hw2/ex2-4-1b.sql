SELECT maker
FROM Product
WHERE model IN ( 
	SELECT model 
	FROM Laptop
	WHERE hd >= 100
);