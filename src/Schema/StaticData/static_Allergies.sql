IF ( NOT EXISTS(SELECT * 
                FROM   [dbo].[Allergies]) )
  BEGIN
	  INSERT INTO [dbo].[Allergies]
           ([Pathogen] , [IsDeleted])
      VALUES
           ('test' , 0)
  END
GO