
DECLARE @pais VARCHAR(50)
DECLARE @grupo VARCHAR(100)
DECLARE @costolocal INT
DECLARE MONEDA CURSOR
	FOR SELECT grupos.Pais_origen,grupos.Nombre
	FROM grupos

OPEN MONEDA
FETCH MONEDA INTO @pais,@grupo
WHILE(@@FETCH_STATUS=0)
BEGIN
	SET @costolocal = CASE @pais
						WHEN 'Mexico' THEN 22
						WHEN 'Chile' THEN 660
						WHEN 'Venezuela' THEN 10
						WHEN 'Estados Unidos' THEN 1
						WHEN 'España' THEN 1
						WHEN 'Argentina' THEN 15
						WHEN 'Inglaterra' THEN 1
						WHEN 'Paises Bajos' THEN 2
					  END 
	PRINT @grupo + ' -> '+@pais + ' -> ' + CAST(@costolocal as varchar)
	FETCH MONEDA INTO @pais,@grupo
END
CLOSE MONEDA
DEALLOCATE MONEDA

