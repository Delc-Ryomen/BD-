CREATE DATABASE CentreFormation
CREATE TABLE Etudiant (
NumCINEtu INT PRIMARY KEY,
NomEtu VARCHAR,
PrenomEtu VARCHAR,
DateNaissance DATE,
AdresseEtu VARCHAR,
VilleEtu VARCHAR,
NiveauEtu VARCHAR
);
CREATE TABLE Session (
codeSess INT PRIMARY KEY,
nomSess VARCHAR (50),
DateDebut DATE,
DateFin DATE
);
CREATE TABLE Specialite (
codeSpec INT PRIMARY KEY,
nomSpec VARCHAR (50),
descSpec VARCHAR (255),
);
CREATE TABLE Formation (
codeForm INT PRIMARY KEY,
titreForm VARCHAR (50),
dureeForm INT
prixForm DECIMAL (10, 2)
);
CREATE TABLE Est_inscrit (
FOREIGN KEY (codeSess) REFERENCES Session(codeSess),
FOREIGN KEY (NumCINEtu) REFERENCES Etudiant(NumCINEtu)
typeCours VARCHAR
);