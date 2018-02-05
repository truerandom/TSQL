
CREATE TRIGGER NO_MAS_5
ON artistas
FOR INSERT
AS
	DECLARE @cuenta INT = (select count(*) from inserted)
	IF @cuenta > 5
		BEGIN
			SELECT * into #aborrar FROM inserted
			DELETE ARTISTAS
			FROM ARTISTAS
			INNER JOIN #aborrar ON  artistas.Artista_id = #aborrar.Artista_id 
			SELECT TOP 5 * into #solo5 FROM #aborrar
			INSERT INTO ARTISTAS (artista_id,nombre,apellido,pais_nacimiento,fecha_nacimiento,nombre_artistico)
			SELECT artista_id,nombre,apellido,pais_nacimiento,fecha_nacimiento,nombre_artistico
			FROM #solo5 
		END