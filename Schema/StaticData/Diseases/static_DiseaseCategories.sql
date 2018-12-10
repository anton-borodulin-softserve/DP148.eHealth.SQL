--Insert static disease category.

IF ( NOT EXISTS(SELECT *
                FROM   [dbo].[DiseaseCategories]) )
  BEGIN
      INSERT INTO [dbo].[DiseaseCategories]
                  ([Name])
      VALUES      ('Throat');
	  INSERT INTO [dbo].[DiseaseCategories]
                  ([Name])
      VALUES      ('Nose');
  END

GO