DECLARE @Q INT = 0
SELECT @Q = (	SELECT BUDGET 
				FROM Departments 
				WHERE LOCATION = 'New York'
			)
DECLARE @presupuesto INT = CAST(@Q AS int)
WHILE (@presupuesto>=2500)
BEGIN
	print @presupuesto
	SET @presupuesto = @presupuesto -10
END