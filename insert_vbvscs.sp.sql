USE [ISYS4283];
GO
IF OBJECT_ID('dbo.insert_vbvscs', 'p') IS NULL
    EXEC('CREATE PROCEDURE insert_vbvscs AS SELECT 1')
GO
ALTER PROCEDURE insert_vbvscs
	@url NVARCHAR(450),
	@title NVARCHAR(255),
	@salary MONEY,
	@lang CHAR(2)
AS
	SET NOCOUNT ON
	INSERT INTO vbvscs (url, title, salary, lang, username)
	VALUES (@url, @title, @salary, @lang, SYSTEM_USER);
GO

GRANT EXECUTE ON insert_vbvscs TO ISYS4283vendors;
GO
