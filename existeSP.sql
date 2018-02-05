CREATE FUNCTION dbo.existeSP(@sp varchar)
RETURNS INT 
AS
   BEGIN
       Declare @r INT
	   IF NOT EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = @sp)
		SET @r = 2
	   ELSE
		SET @r = 1
	   RETURN @r
  END
  GO

  SELECT dbo.existeSP('SP_EJEMPLO') AS EXISTESP