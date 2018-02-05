CREATE TRIGGER P1 ON artistas
FOR INSERT AS 
BEGIN
	DECLARE @VAR1 INT =(SELECT Artista_id FROM inserted)
	IF (@VAR1%7=0)
		BEGIN
		ROLLBACK
		print'multiplo de 7'
	END
END
