CREATE DATABASE MindBoxdb
GO

USE Mindboxdb

CREATE TABLE Продукты (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Имя_продукта NVARCHAR(100)
);

CREATE TABLE Категории (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Имя_категории NVARCHAR(100)
);

CREATE TABLE Продукты_Категории (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Id_продукта INT,
    Id_категории INT,
    FOREIGN KEY (Id_продукта) REFERENCES Продукты(Id),
    FOREIGN KEY (Id_категории) REFERENCES Категории(Id)
);

GO 

INSERT INTO Продукты (Имя_продукта)
VALUES
    ('Продукт 1'),
    ('Продукт 2'),
    ('Продукт 3'),
    ('Продукт 4'),
	('Продукт 5');

INSERT INTO Категории (Имя_категории)
VALUES
    ('Категория A'),
    ('Категория B'),
    ('Категория C'),
    ('Категория D');
	
INSERT INTO Продукты_Категории (Id_продукта, Id_категории)
VALUES
    (1, 1), 
    (1, 2),
    (2, 1),
    (3, 2), 
    (4, 3);

GO

SELECT
    p.Имя_продукта,
    c.Имя_категории
FROM
    Продукты p
LEFT JOIN
    Продукты_Категории pc ON p.Id = pc.Id_продукта
LEFT JOIN
    Категории c ON pc.Id_категории = c.Id;
