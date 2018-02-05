CREATE PROCEDURE Multiplos @num INT
AS 
BEGIN 
	DECLARE @i INT
	SET @i = 0
	WHILE(@i < @num )
	BEGIN
		IF(@i % 5 != 0 AND @i % 7 != 0)
		BEGIN
			PRINT 'NUM  ---> ' + CAST(@i AS VARCHAR)
		END
		SET	@i = @i + 1
	END
END

EXEC Multiplos @num = 10
