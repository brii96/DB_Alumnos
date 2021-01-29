-- Carreras
INSERT INTO CARRERAS (id_carr, nom)
VALUES ('SIST','LICENCIATURA DE SISTEMAS'),
('ADMN','LICENCIATURA DE ADMIN. DE EMPRESA'),
('BOGA','ABOGACIA')

-- Alumnos
INSERT INTO ALUMNOS (leg, nom, ape, cuota, matr, id_carr)
VALUES (69,'Juan','Martinez',500,700,'SIST'),
(109,'Pedro','Garcia',550,600,'SIST'),
(138,'Pablo','Perez',550,700,'ADMN'),
(160,'Silvana','Gomez',600,600,'ADMN'),
(179,'Natalia','Lopez',500,550,'BOGA'),
(194,'Pamela','Gil',550,700,'BOGA'),
(207,'Juan Pablo','Santos',500,600,'SIST')
-- Insertando valores Nulos
INSERT INTO ALUMNOS (leg, nom) VALUES (400,'Pablo');
INSERT INTO ALUMNOS (leg) VALUES (51);

-- Materias
INSERT INTO MATERIAS (mat, nombre)
VALUES (1000,'??'),
(1001,'BD I'),
(1002,'BD II'),
(1003,'LEGALES'),
(1004,'MAE'),
(1005,'ADES')

-- Finales
INSERT INTO FINALES (fec, mat, leg, nota)
VALUES ('2008/12/10',1001,69,8),
('2008/12/13',1002,69,7),
('2008/12/15',1003,69,5),
('2009/03/21',1004,69,6),
('2008/12/10',1005,69,6),
('2008/12/10',1001,109,6),
('2008/12/13',1002,109,2),
('2008/12/15',1003,109,5),
('2009/03/21',1004,109,6),
('2008/12/10',1001,138,4),
('2008/03/22',1002,138,2),
('2008/06/11',1002,138,2),
('2008/12/13',1002,138,2),
('2009/03/21',1002,138,6),
('2008/12/15',1003,138,4),
('2009/03/21',1000,138,5),
('2008/12/10',1001,160,8),
('2008/12/13',1002,160,7),
('2008/12/15',1003,160,10),
('2009/03/21',1004,160,6),
('2008/12/10',1001,179,4),
('2009/03/21',1002,179,6),
('2008/12/13',1003,179,2),
('2009/02/11',1003,179,4),
('2008/12/10',1001,207,3),
('2008/12/13',1003,207,2),
('2009/02/11',1003,207,2),
('2009/05/11',1003,207,2),
('2009/03/21',1003,207,6),
('2008/12/13',1002,51,2),
('2008/12/13',1003,51,2),
('2009/03/21',1004,51,7)

-- Profesores
Insert into profesores (id_prof, nyape)
Values (1001, 'Juan Garcia'),
(1002, 'Jose Perez');

-- Cursos
Insert into cursos (mat, anio, id_prof)
Values (1001, 2008, 1001),
(1002, 2008, 1001),
(1002, 2009, 1001),
(1003, 2008, 1002),
(1003, 2009, 1001)

-- Inscripciones
Insert into Inscripciones (mat, anio, leg) 
Values (1001, 2008,  69),
(1001, 2008, 109),
(1001, 2008, 138),
(1001, 2009, 160),
(1001, 2009, 179),
(1001, 2009, 400),
(1002, 2008,  69),
(1002, 2008, 160),
(1002, 2009, 138);