SELECT perfName, songTitle, perfDate
FROM Performance
WHERE perfDate > ALL (SELECT cDate FROM Song);

SELECT *
FROM Writes
WHERE songTitle IN (SELECT title FROM Song WHERE genreCode<>'alt') AND
	composerName IN (SELECT name FROM Composer WHERE DOB > '1940-01-01');

SELECT length, perfDate
FROM Performance P
WHERE length <= (
	SELECT AVG(length) FROM Performance
	WHERE songTitle = P.songTitle AND recorded='T' AND
	songTitle = ANY (
		SELECT songTitle FROM Writes
		WHERE composerName IN ('Bob Marley', 'David Byrne')
	)
);