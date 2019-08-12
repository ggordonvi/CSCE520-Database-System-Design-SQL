mysql> SELECT name, owner FROM pet WHERE sex ='f' AND birth >= '1990-1-1' ORDER BY name;

mysql> UPDATE pet SET name = 'eddie' WHERE name = 'Whistler';

mysql> UPDATE pet SET death = 'CURDATE()' WHERE name = 'Buffy';

mysql> SELECT * FROM pet;