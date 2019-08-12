SELECT a.model, a.price 
FROM Product p, PC a
WHERE p.maker = 'B' AND p.model = a.model

UNION SELECT b.model, b.price 
FROM Product p, Laptop b
WHERE p.maker = 'B' AND p.model = b.model

UNION SELECT c.model, c.price 
FROM Product p, Printer c
WHERE p.maker = 'B' AND p.model = c.model;