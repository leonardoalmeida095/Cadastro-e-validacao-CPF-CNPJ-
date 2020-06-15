

CREATE PROCEDURE usp_cadastrarCliente @NOME VARCHAR(60), @EMAIL VARCHAR(50), @RENDA FLOAT,
									@DOC VARCHAR(20), @SEXO CHAR, @RAMO VARCHAR(30)
AS
	BEGIN
		DECLARE @DOCSEMPONTOS VARCHAR(20), @CODCLI INT

		-- Remover os pontos do documento.
		SET @DOCSEMPONTOS = REPLACE(@DOC, '.', '')

		-- Remover barra e hifen do documento.
		SET @DOCSEMPONTOS = REPLACE(REPLACE(@DOCSEMPONTOS, '-', ''), '/', '')

		IF LEN(@DOCSEMPONTOS) = 11 AND ISNUMERIC(@DOCSEMPONTOS) = 1
			BEGIN
				INSERT INTO cliente VALUES(@NOME, @EMAIL, @RENDA)
				SET @CODCLI = SCOPE_IDENTITY()
				INSERT INTO pessoaFisica VALUES(@CODCLI, @DOC, @SEXO)
				PRINT 'Cliente cadastrado como pessoa física.'
			END
		ELSE IF LEN(@DOCSEMPONTOS) = 14 AND ISNUMERIC(@DOCSEMPONTOS) = 1
			BEGIN
				INSERT INTO cliente VALUES(@NOME, @EMAIL, @RENDA)
				SET @CODCLI = SCOPE_IDENTITY()
				INSERT INTO pessoaJuridica VALUES(@CODCLI, @DOC, @RAMO)
				PRINT 'Cliente cadastrado como pessoa jurídica.'
			END
		ELSE
			BEGIN
				PRINT 'Documento Inválido.'
			END
	END
GO