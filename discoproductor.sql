CREATE FUNCTION grupoproductor(@GRUPO VARCHAR(100))
RETURNS TABLE
AS
RETURN(
	SELECT Grupos.Nombre,Discos.Titulo,productores.Nombre pnombre
	FROM GRUPOs,discos,productores
	WHERE grupos.Nombre like @GRUPO
	AND Grupos.Grupo_id = discos.Grupo_id AND productores.Productor_id = discos.Productor_id
)

