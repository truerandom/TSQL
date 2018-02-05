CREATE TABLE Alumnos(
	id_alumno INT PRIMARY KEY IDENTITY(1,1),
	nombre VARCHAR(20) NOT NULL,
	apaterno VARCHAR(20) NOT NULL,
	amaterno VARCHAR(20) NOT NULL,
	fnacimiento DATE
)


INSERT INTO ALUMNOS VALUES  ('Fernando','Parra','Jmz','1990-05-05'),
							('Cristian','monroy','perez','1994-10-10'),
							('Angel','Mendez','Martinez','1982-02-02'),
							('Oscar','reyes','monroy','1991-07-07'),
							('Omar','santiago','mendez','1990-04-04')

CREATE VIEW VistaAlumnos AS
	SELECT nombre, apaterno ,amaterno,(DATEDIFF(DAY,[fnacimiento],GETDATE()))/367 AS yy,
			(MONTH(GETDATE())-MONTH(fnacimiento)+12) AS mm 
	FROM Alumnos 


SELECT * FROM VistaAlumnos