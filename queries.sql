SELECT *
FROM Games
WHERE Price > 20
ORDER BY ReleaseDate DESC;

UPDATE Games
SET Price = 29.99
WHERE Title = 'Cyberpunk 2077';

DELETE FROM Games
WHERE Title = 'Old Game';

SELECT d.Name, COUNT(g.Id) AS GameCount
FROM Developers d
JOIN Games g ON d.Id = g.DeveloperId
GROUP BY d.Name;

SELECT g.Title, d.Name AS Developer
FROM Games g
LEFT JOIN Developers d ON g.DeveloperId = d.Id;

SELECT g.Title, d.Name
FROM Games g
RIGHT JOIN Developers d
ON g.DeveloperId = d.Id;

SELECT u.Username, g.Title
FROM UserGames ug
INNER JOIN Users u ON ug.UserId = u.Id
INNER JOIN Games g ON ug.GameId = g.Id;

