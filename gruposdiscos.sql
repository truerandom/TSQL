CREATE PROCEDURE GRUPODISCOS @nombre VARCHAR(100)
AS 
BEGIN 
	SELECT Discos.TITULO,Grupos.Nombre
	FROM discos,grupos
	WHERE	grupos.nombre like @nombre AND
			discos.Grupo_id = Grupos.grupo_id

END

-- EXEC GRUPODISCOS @nombre = 'CAFE TACUBA'
