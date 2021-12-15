CREATE DATABASE pets_db;

USE pets_db;

CREATE TABLE owners (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL
);

CREATE TABLE pets (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	name VARCHAR(50) NOT NULL,
    species VARCHAR(50) NOT NULL,
	breed VARCHAR(50) NOT NULL,
    OwnerId INT NOT NULL,
    FOREIGN KEY (OwnerID) REFERENCES owners(id)
);

USE pets_db;
INSERT INTO owners (name, email)
VALUES ('John Doe', 'johndoe@gmail.com'), ('Jane Doe', 'janedoe@gmail.com');

USE pets_db;
INSERT INTO owners (name, email)
VALUES ('Jack Doe', 'jackdoe@gmail.com');

USE pets_db;
SELECT * FROM owners;

USE pets_db;
INSERT INTO pets (name, species, breed, ownerId)
VALUES ('Beef', 'dog', 'chihuahua', 1), ('Bear', 'dog', 'cockapoo', 1), ('Kramer', 'cat', 'bombay', 2), ('Leo', 'horse', 'thoroughbread', 2);

USE pets_db;
SELECT pets.id, pets.name, pets.species, pets.breed, owners.name FROM pets
INNER JOIN owners
ON owners.id = pets.OwnerId;

USE pets_db;
SELECT pets.id, pets.name, pets.species, pets.breed, owners.name FROM pets
RIGHT JOIN owners
ON owners.id = pets.OwnerId;

USE pets_db;
SELECT pets.id, pets.name, pets.species, pets.breed, owners.name FROM owners
LEFT JOIN pets
ON owners.id = pets.OwnerId;
