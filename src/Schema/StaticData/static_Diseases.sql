--Insert static disease.

IF ( NOT EXISTS(SELECT *
                FROM   [dbo].[Diseases]) )
  BEGIN
      INSERT INTO [dbo].[Diseases]
                  ([Name], [CategoryId], [Description])
      VALUES      ('Test Disease Name', 1, 'test disease description');
	  INSERT INTO [dbo].[Diseases]
                  ([Name], [CategoryId], [Description])
      VALUES      ('Test Disease Name2', 2, 'test disease description2');
	  INSERT INTO [dbo].[Diseases]
                  ([Name], [CategoryId], [Description])
      VALUES      ('Test Disease Name3', 2, 'test disease description2');
	  INSERT INTO [dbo].[Diseases]
                  ([Name], [CategoryId], [Description])
      VALUES      ('Test Disease Name4', 2, 'test disease description2');
	  INSERT INTO [dbo].[Diseases]
                  ([Name], [CategoryId], [Description])
      VALUES      ('Test Disease Name5', 1, 'test disease description2');
  END

GO