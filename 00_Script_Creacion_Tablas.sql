-- Modelo Relacional de la base de datos DBFacu:
--   - CARRERAS     (*Id,Nombre)
--   - ALUMNOS	    (*Leg, Nom, Ape, *id_carr)
--   - MATERIAS	    (*Mat, Nombre) 
--   - FINALES	    (*Fec, *Mat, *Leg, Nota)
--   - Profesores   (*Prof,NyA)
--   - Cursos       (*Mat, *Prof, *Anio)
--   - Inscripciones(*Mat, *Anio, *Leg)

-- Drops:
Drop Table If Exists Finales;
Drop Table If Exists Alumnos;
Drop Table If Exists Materias;
Drop Table If Exists Carreras;
Drop Table If Exists Inscripciones;
Drop Table If Exists Cursos;
Drop Table If Exists Profesores;
---------------------------------------------------------------------------

-- Carreras
CREATE TABLE carreras 
(id_carr     char(4) primary key,
 nom    varchar(40),
CONSTRAINT CHK_Carreras_id CHECK (id_carr > ' '));
---------------------------------------------------------------------------

-- Alumnos
CREATE TABLE alumnos 
(leg    int primary key,
 nom    varchar(20),
 ape    varchar(20) not null default 'Desconocido',
 cuota  decimal(9,2),
 matr   decimal(9,2),
 id_carr char(4) );
ALTER TABLE Alumnos ADD CONSTRAINT CHK_Alumnos_leg CHECK (leg > 50);
ALTER TABLE Alumnos ADD CONSTRAINT FK_Alumnos_id_carr FOREIGN KEY (id_carr)
            REFERENCES carreras  ON UPDATE CASCADE ON DELETE CASCADE;
---------------------------------------------------------------------------

-- Materias
CREATE TABLE materias 
(mat    integer primary key,
 nombre varchar(20),
CONSTRAINT CHK_Materias_mat CHECK (mat >  0));
---------------------------------------------------------------------------

-- Finales
CREATE TABLE finales 
(fec    date,
 mat    int,
 leg    int,
 nota   int,
 CONSTRAINT CHK_NOTA  CHECK (nota >=0 AND nota <= 10),
 CONSTRAINT CHK_FECHA CHECK (fec >= '2000-01-01'),
 PRIMARY KEY (fec, mat, leg),
 FOREIGN KEY (mat) REFERENCES materias ON UPDATE CASCADE ON DELETE NO ACTION,
 FOREIGN KEY (leg) REFERENCES alumnos  ON UPDATE CASCADE ON DELETE CASCADE);
---------------------------------------------------------------------------

-- Profesores
CREATE TABLE profesores (
id_prof int primary key, 
nyape varchar(40)
CONSTRAINT CHK_PROF CHECK (id_prof >=1001 AND id_prof <= 1999));
---------------------------------------------------------------------------

-- Cursos
CREATE TABLE cursos(
mat int, 
anio int, 
id_prof int,
PRIMARY KEY (mat, anio, id_prof),
FOREIGN KEY (mat) REFERENCES materias ON UPDATE CASCADE ON DELETE NO ACTION,
FOREIGN KEY (id_prof) REFERENCES profesores ON UPDATE CASCADE ON DELETE CASCADE);
---------------------------------------------------------------------------

-- Inscripciones
CREATE TABLE inscripciones(
mat int, 
anio int, 
leg int,
PRIMARY KEY (mat, anio, leg),
FOREIGN KEY (mat) REFERENCES materias ON UPDATE CASCADE ON DELETE NO ACTION,
FOREIGN KEY (leg) REFERENCES alumnos ON UPDATE CASCADE ON DELETE CASCADE);
