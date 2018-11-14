--Insert static disease category.

IF ( NOT EXISTS(SELECT *
                FROM   [dbo].[DiseaseCategories]) )
  BEGIN
      INSERT INTO [dbo].[DiseaseCategories]
                  ([Name])
      VALUES      ('Test disease category1');
	  INSERT INTO [dbo].[DiseaseCategories]
                  ([Name])
      VALUES      ('Test disease category2');
	  INSERT INTO [dbo].[DiseaseCategories]
                  ([Name])
      VALUES      ('Test disease category3');
  END

GO