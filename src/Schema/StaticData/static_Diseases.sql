--Insert static disease.

IF ( NOT EXISTS(SELECT *
                FROM   [dbo].[Diseases]) )
  BEGIN
      INSERT INTO [dbo].[Diseases]
                  ([Name], [CategoryId], [Description])
      VALUES      ('Tonsillitis', 1, 'Tonsillitis description.');
	  INSERT INTO [dbo].[Diseases]
                  ([Name], [CategoryId], [Description])
      VALUES      ('Rhinitis', 2, 'Rhinitis description.');
	  INSERT INTO [dbo].[Diseases]
                  ([Name], [CategoryId], [Description])
      VALUES      ('Sinusitis', 2, 'Sinusitis description.');
	  INSERT INTO [dbo].[Diseases]
                  ([Name], [CategoryId], [Description])
      VALUES      ('Laryngitis', 1, 'Laryngitis description.');
	  INSERT INTO [dbo].[Diseases]
                  ([Name], [CategoryId], [Description])
      VALUES      ('Upper respiratory tract infection', 1, 'URTI description.');
  END

GO