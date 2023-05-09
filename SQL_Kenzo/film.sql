EXERCICE 1

SELECT nom, prenom, anneeNaiss < 1950 AS "Date de Naissance"
 from artiste;

EXERCICE 2

SELECT titre, genre
 FROM film
 WHERE genre = "Drame";

EXERCICE 3

SELECT *
From role
INNER JOIN artiste
WHERE nom = "Willis";

EXERCICE 4

SELECT titre, nom, prenom
From film
INNER JOIN artiste
WHERE titre = "Memento"
AND nom = "Nolan";

EXERCICE 5

SELECT titre, note 
FROM notation
NATURAL JOIN film
WHERE titre = "Fargo";

EXERCICE 6

SELECT *
From artiste
NATURAL JOIN role
WHERE nomRôle = "Chewbacca";

EXERCICE 7

SELECT titre, nomRôle, prénom, nom
From artiste
INNER JOIN role
INNER JOIN film
WHERE nomRôle = "John McClane"
AND nom = "Willis";

EXERCICE 8

SELECT titre, prénom, nom, nomRôle, idActeur
From film
INNER JOIN artiste
INNER JOIN role
WHERE titre = "Sueurs froides";

EXERCICE 9

SELECT titre, prénom, nom, note
From film
INNER JOIN internaute
INNER JOIN notation
WHERE nom = "Nom0";

EXERCICE 10

SELECT titre, prénom, nom
From film
INNER JOIN artiste 
WHERE idRéalisateur = "510"
AND nom = "Depp"

EXERCICE 11

SELECT titre, prénom, nom, nomRôle
From film
INNER JOIN artiste 
INNER JOIN role
WHERE nom = "Allen"
AND prénom = "Woody"

EXERCICE 12

SELECT nom , prénom , titre , nomRôle
  FROM artiste INNER JOIN film INNER JOIN role
  WHERE idArtiste = idRéalisateur;

EXERCICE 13

SELECT titre, nom, prénom
  FROM film
  INNER JOIN artiste
  WHERE nom <> "Tarentino"
  AND prénom <> "Quentin";

EXERCICE 14

SELECT nom , prénom , titre , nomRôle, idRéalisateur
  FROM artiste 
  INNER JOIN film 
  INNER JOIN role

EXERCICE 15

select titre from film as f, artiste as a
where f.idRéalisateur = a.idArtiste
and a.nom='Hitchcock'
and not exists (select '' from artiste as a2, role as r
where a2.idArtiste = r.idActeur
and r.idFilm=f.idFilm
and nom='Stewart')

EXERCICE 16

select a1.prénom as prénom1, a1.nom as nom1, titre,
a2.prénom as prénom2, a2.nom as nom2
from   role as r, Film as f, Artiste as a1, Artiste as a2
where  f.idFilm = r.idFilm
and a1.idArtiste != a2.idArtiste
and f.idRéalisateur = a1.idArtiste
and r.idActeur = a2.idArtiste
and a1.prénom = a2.prénom

EXERCICE 17

SELECT titre
  FROM film
  NATURAL JOIN role
  WHERE titre <> nomRôle

EXERCICE 18

SELECT titre, prénom, nom, note
From film
INNER JOIN internaute
INNER JOIN notation
WHERE nom <> "Nom1"

EXERCICE 19

SELECT DISTINCT nom , prénom
  FROM artiste INNER JOIN film
  WHERE idArtiste != idRéalisateur;

EXERCICE 20

SELECT titre, ROUND(AVG(note))
  FROM notation
  INNER JOIN film
  WHERE titre = "Memento"

EXERCICE 21

select DISTINCT idArtiste, nom, prénom, count(titre) as nbFilms
from Artiste
INNER JOIN Film
where idRéalisateur = idArtiste
group by  idArtiste

EXERCICE 22

select  nom, prénom
from   Artiste 
INNER JOIN Film
where idRéalisateur = idArtiste
group by nom, prénom
having count(*) > 1

EXERCICE 23

SELECT titre, ROUND(AVG(note))
  FROM notation
  INNER JOIN film
  WHERE note>7










