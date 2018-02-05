CREATE PROCEDURE prodcuentaart
	@id INT,
	@name VARCHAR(20),
	@app VARCHAR(20), 
	@country VARCHAR(20),
	@datex DATE,
	@Nickname VARCHAR(20)
AS 
BEGIN 
	IF (EXISTS (
		SELECT * FROM artistas
		WHERE Artista_id = @id)
	)BEGIN
		PRINT 'ID EXISTE:' + CAST(@id AS VARCHAR) + ' ' + 
				@name + ' ' + @app + ' ' + @country + ' ' + 
				CAST(@datex AS VARCHAR) + ' ' + @nickname
		END
	ELSE
	BEGIN
		INSERT INTO artistas VALUES(@id,@name,@app,@country,@datex,@Nickname)
		print 'INSERTADO: '
		SELECT * FROM artistas WHERE Artista_id = @id
	END
END

EXEC prodcuentaart	@id = 119,
					@name = 'JOSE ALFREO',
					@app = 'JIMENEZ',
					@country = 'MEXICO',
					@datex = '1950-02-02',
					@Nickname = 'EL REY'
