--Insert static disease.

IF ( NOT EXISTS(SELECT *
                FROM   [dbo].[Diseases]) )
  BEGIN
      INSERT INTO [dbo].[Diseases]
                  ([Name], [CategoryId], [Description])
      VALUES      ('Test Disease Name', 1, 'test disease description');
  END

GO