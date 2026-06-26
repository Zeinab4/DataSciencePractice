                     
                     /*	    1- INSERER DES VALEURS*/

/*Insérer des valeurs dans la table departement*/

INSERT INTO Departement
VALUES
(1, 'IT', 'Fatou Ba'),
(2, 'HR', 'Mariam Diop'),
(3, 'Marketing', 'Ali Ndiaye');

/*	Modifier les noms des managers dans la table departement*/

UPDATE Departement
SET Nom_du_manager = CASE
    WHEN Num_S = 1 THEN 'Alice Johnson'
    WHEN Num_S = 2 THEN 'Bob Smith'
    WHEN Num_S = 3 THEN 'Clara Bennett'
END
WHERE Num_S IN (1, 2, 3);

/*	Afficher la table departement*/

SELECT * FROM Departement;

/*Insérer des valeurs dans la table Employé */

INSERT INTO Employe
VALUES
(101, 'John Doe', 'Développeur', 60000.00, 1),
(102, 'Jane Smith', 'Analyste', 55000.00, 2),
(103, 'Mike Brown', 'Concepteur', 50000.00, 3),
(104, 'Sarah Johnson', 'Data Scientist', 70000.00, 1),
(105, 'Emma Wilson', 'HR Specialist', 52000.00, 2);

/*	Afficher la table Employé*/

SELECT * FROM Employe;

/*Insérer des valeurs dans la table Projet */

INSERT INTO Projet
VALUES
(201, 'Refonte du site web', '2024-01-15', '2024-06-30', 1),
(202, 'Onboarding des employés', '2024-03-01', '2024-09-01', 2),
(203, 'Market Research', '2024-02-01', '2024-07-31', 3),
(204, 'IT Infrastructure Setup', '2024-04-01', '2024-12-31', 1);

/*	Afficher la table Projet*/

SELECT * FROM Projet;

/*Insérer des valeurs dans la table Employe_Projet*/

INSERT INTO Employe_Projet
VALUES
(101, 201, 'Développeur Frontend'),
(104, 201, 'Développeur Backend'),
(102, 202, 'Formateur'),
(105, 202, 'Coordinateur'),
(103, 203, 'Responsable de la recherche'),
(101, 204, 'Spécialiste réseau');


/*	Afficher la Employe_Projet*/

SELECT * FROM Employe_Projet;


            /*	2- METTRE A JOUR UN ENREGISTREMENT*/

/*Verifions l'existande de Employe_Num_E= 101 */

SELECT *
FROM Employe_Projet
WHERE Employe_Num_E = 101;

/*Modifiions Employe_Num_E= 101 en Full Stack Developer */

UPDATE Employe_Projet
SET Role = 'Full Stack Developer'
WHERE Employe_Num_E = 101;

            /*	3- SUPPRESSION */

/*	Supprimons d'abord la relation */

DELETE FROM Employe_Projet
WHERE Employe_Num_E = 103;

/*	Supprimons l'employé 103 */

DELETE FROM Employe
WHERE Num_E = 103;