IF ( NOT EXISTS(SELECT * 
                FROM   [dbo].[AllergySymptom]) )
  BEGIN
      INSERT INTO [dbo].[AllergySymptom]
           ([PatientAllergyId] , [SymptomId] , [IsDeleted])
      VALUES
           (1 , 1 , 0)
  END
GO