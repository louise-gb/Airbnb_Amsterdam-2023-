SELECT * FROM Airbnb.`airbnb prices`;

-- Quels sont les quartiers les plus chers pour les locations Airbnb à Amsterdam ?

SELECT neighborhood, AVG(price) AS price
FROM `airbnb prices`
GROUP BY neighborhood
ORDER BY price DESC;

-- Quelle est la moyenne des prix de location des Airbnb à Amsterdam ?

SELECT AVG(price) AS moyenne_prix
FROM `airbnb prices`




 