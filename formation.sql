-- 1. Créer la base de données
CREATE DATABASE gestion_etudiants;

-- 2. Utiliser la base
USE gestion_etudiants;

-- 3. Créer la table promotion

CREATE TABLE promotion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(20) NOT NULL
);

-- 4. Créer la table etudiants

CREATE TABLE etudiants (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50),
    post_nom VARCHAR(50),
    prenom VARCHAR(50),
    sexe CHAR(1),
    lieu_de_naissance VARCHAR(50),
    adresse VARCHAR(100),
    etat_civil VARCHAR(20),
    telephone VARCHAR(20),
    operateur VARCHAR(20),
    id_promotion INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (id_promotion) REFERENCES promotion(id)
);

-- 5. Insérer des promotions
INSERT INTO promotion (code) VALUES
('L1'),
('L2'),
('L3');

-- 6. Insérer des étudiants

INSERT INTO etudiants 
(nom, post_nom, prenom, sexe, lieu_de_naissance, adresse, etat_civil, telephone, operateur, id_promotion)
VALUES
('Yarama','Exauce','Smith','M','Kinshasa','Gombe','Célibataire','0821234567','Vodacom',1),
('Mbala','Kalala','David','M','Kasaï','Limete','Marié','0819876543','Airtel',1),
('Mukendi','Ilunga','Prisca','F','Kolwezi','Lemba','Célibataire','0994567890','Orange',2),
('Katoto','Mayamba','Samuel','M','Kinshasa','Masina','Marié','0825566778','Vodacom',2);

-- 7. Afficher tous les étudiants

SELECT * FROM etudiants;

-- 8. Afficher les 10 derniers étudiants
SELECT *
FROM etudiants
ORDER BY id DESC
LIMIT 10;
