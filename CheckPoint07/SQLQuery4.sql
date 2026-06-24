use GestionParticipationSalaries;

CREATE TABLE Departement (
Num_S INT PRIMARY KEY,
Label VARCHAR(255) NOT NULL,
Nom_du_manager VARCHAR(255) NOT NULL); 

CREATE TABLE Employe (
Num_E INT PRIMARY KEY,
Nom VARCHAR(255) NOT NULL,
Position VARCHAR(255) NOT NULL,
Salaire DECIMAL(10,2) NOT NULL,
Department_Num_S INT NOT NULL,
FOREIGN KEY (Department_Num_S)
REFERENCES Departement(Num_S)
);


CREATE TABLE Projet (
Num_P INT PRIMARY KEY,
Titre VARCHAR(255) NOT NULL,
Date_de_debut DATE NOT NULL,
Date_fin DATE,
Department_Num_S INT NOT NULL,
FOREIGN KEY (Department_Num_S)
REFERENCES Departement(Num_S)
);

CREATE TABLE Employe_Projet (
Employe_Num_E INT NOT NULL,
Projet_Num_P INT NOT NULL,
Role VARCHAR(255) NOT NULL,
PRIMARY KEY (Employe_Num_E, Projet_Num_P),
FOREIGN KEY (Employe_Num_E) REFERENCES Employe (Num_E),
FOREIGN KEY (Projet_Num_P) REFERENCES Projet (Num_P)
);

USE GestionParticipationSalaries;
GO

SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES;

