CREATE TRIGGER PHIM ON GRUPOS
FOR INSERT AS 
BEGIN
	DECLARE @VAR1 varchar(100) =(SELECT Nombre FROM inserted)
	IF (@VAR1 like 'HIM')
		BEGIN
		ROLLBACK
		print 'No se puede insertar HIM'
	END
END
