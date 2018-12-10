IF ( NOT EXISTS(SELECT * 
                FROM   [dbo].[Allergies]) )
  BEGIN
	  INSERT INTO [dbo].[Allergies] ([Pathogen] , [IsDeleted])
      VALUES      ('Lemons' , 0);
      INSERT INTO [dbo].[Allergies] ([Pathogen] , [IsDeleted])
      VALUES      ('Milk' , 1);
      INSERT INTO [dbo].[Allergies] ([Pathogen] , [IsDeleted])
      VALUES      ('Chocolate' , 0);
      INSERT INTO [dbo].[Allergies] ([Pathogen] , [IsDeleted])
      VALUES      ('Lactose' , 0);
      INSERT INTO [dbo].[Allergies] ([Pathogen] , [IsDeleted])
      VALUES      ('Washing powder' , 0);
      INSERT INTO [dbo].[Allergies] ([Pathogen] , [IsDeleted])
      VALUES      ('Cats' , 0);
      INSERT INTO [dbo].[Allergies] ([Pathogen] , [IsDeleted])
      VALUES      ('Dogs' , 0);
      INSERT INTO [dbo].[Allergies] ([Pathogen] , [IsDeleted])
      VALUES      ('Dodos' , 1);
      INSERT INTO [dbo].[Allergies] ([Pathogen] , [IsDeleted])
      VALUES      ('Garlic' , 0);
      INSERT INTO [dbo].[Allergies] ([Pathogen] , [IsDeleted])
      VALUES      ('Coffee' , 0);
  END
GO