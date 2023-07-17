SELECT * FROM Airbnb.`airbnb prices`;

-- Le nombre total d'Airbnb à Amsterdam 
SELECT COUNT(*) AS total_airbnb
FROM `airbnb prices`
WHERE ville = 'Amsterdam';

-- Les Airbnb disponibles à Amsterdam avec un prix inférieur à 100 euros par nuit

SELECT *
FROM `airbnb prices`
WHERE city = 'Amsterdam' AND price < 100;

-- Les Airbnb à Amsterdam avec une note d'évaluation supérieure à 2.5 :

SELECT *
FROM `airbnb prices`
WHERE ville = 'Amsterdam' AND note_evaluation > 2.5;


-- Quels sont les quartiers les plus chers pour les locations Airbnb à Amsterdam ?

SELECT neighborhood, AVG(price) AS price
FROM `airbnb prices`
GROUP BY neighborhood
ORDER BY price DESC;

-- Quelle est la moyenne des prix de location des Airbnb à Amsterdam ?

SELECT AVG(price) AS moyenne_prix
FROM `airbnb prices`


-- Quel est le nombre moyen de commentaires laissés par les utilisateurs pour les Airbnb à Amsterdam ?

SELECT AVG(reviews) AS nombre_commentaires_moyen
FROM `airbnb prices`
WHERE city = 'Amsterdam';

 