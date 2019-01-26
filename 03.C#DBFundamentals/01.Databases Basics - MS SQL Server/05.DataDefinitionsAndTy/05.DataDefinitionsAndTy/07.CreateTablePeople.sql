CREATE TABLE People(
Id INT IDENTITY NOT NULL,
Name VARCHAR(200) NOT NULL,
Picture VARBINARY(MAX),
Height DECIMAL(15,2),
Weight DECIMAL (15,2),
Gender BIT,
Birthdate DATE NOT NULL,
Biography VARCHAR(MAX)
)

INSERT INTO People
VALUES ('Gosho', NULL, 186, 98, 0, '12/9/1999', NULL ),
('Stavri',NULL, 156, 45, 0, '12/12/2000', NULL),
 ('Pesho', NULL, 155.5, 55, 0, '08/08/1978', NULL),
 ('Vlado', NULL, 148.4, 45, 0, '02/08/1977', NULL),
 ('Stamat', NULL, 189, 90, 0, '01/09/1998', NULL)