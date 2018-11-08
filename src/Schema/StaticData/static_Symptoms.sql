IF ( NOT EXISTS(SELECT * 
                FROM   [dbo].[Symptoms]) )
  BEGIN
      INSERT INTO [dbo].[Symptoms]
           ([Naming], [IsDeleted])
      VALUES
           ('Test', 0)
  END

GO