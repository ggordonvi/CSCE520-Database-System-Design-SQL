SELECT songTitle, perfDate
FROM Performance
WHERE perfDate < ALL (
	SELECT cDate
	FROM Song
);

SELECT perfDate, perfName
FROM Performance
WHERE length >= 300 AND songTitle IN (
	SELECT songTitle
	FROM Writes
	WHERE composerName='Cole Porter'
);

SELECT name
FROM Composer
WHERE name IN (
	SELECT composerName
	FROM Writes
	WHERE songTitle IN (
		SELECT title
		FROM Song
		WHERE DOB > cDate
	)
);