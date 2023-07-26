CREATE DATABASE MindBoxdb
GO

USE Mindboxdb

CREATE TABLE �������� (
    Id INT PRIMARY KEY IDENTITY(1,1),
    ���_�������� NVARCHAR(100)
);

CREATE TABLE ��������� (
    Id INT PRIMARY KEY IDENTITY(1,1),
    ���_��������� NVARCHAR(100)
);

CREATE TABLE ��������_��������� (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Id_�������� INT,
    Id_��������� INT,
    FOREIGN KEY (Id_��������) REFERENCES ��������(Id),
    FOREIGN KEY (Id_���������) REFERENCES ���������(Id)
);

GO 

INSERT INTO �������� (���_��������)
VALUES
    ('������� 1'),
    ('������� 2'),
    ('������� 3'),
    ('������� 4'),
	('������� 5');

INSERT INTO ��������� (���_���������)
VALUES
    ('��������� A'),
    ('��������� B'),
    ('��������� C'),
    ('��������� D');
	
INSERT INTO ��������_��������� (Id_��������, Id_���������)
VALUES
    (1, 1), 
    (1, 2),
    (2, 1),
    (3, 2), 
    (4, 3);

GO

SELECT
    p.���_��������,
    c.���_���������
FROM
    �������� p
LEFT JOIN
    ��������_��������� pc ON p.Id = pc.Id_��������
LEFT JOIN
    ��������� c ON pc.Id_��������� = c.Id;
