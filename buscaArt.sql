USE bdrecordsX
GO

CREATE PROCEDURE buscaArtista @nombre nvarchar(30)
AS
	SELECT * 
	FROM artistas
	WHERE Nombre = @nombre
GO
