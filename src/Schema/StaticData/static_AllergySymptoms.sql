IF ( NOT EXISTS(SELECT * 
                FROM   [dbo].[AllergySymptoms]) )
  BEGIN
      INSERT INTO [dbo].[AllergySymptoms] ([PatientAllergyId] , [SymptomId] , [IsDeleted])
      VALUES      (1 , 1 , 0);
      INSERT INTO [dbo].[AllergySymptoms] ([PatientAllergyId] , [SymptomId] , [IsDeleted])
      VALUES      (1 , 4 , 0);
      INSERT INTO [dbo].[AllergySymptoms] ([PatientAllergyId] , [SymptomId] , [IsDeleted])
      VALUES      (1 , 5 , 0);
      INSERT INTO [dbo].[AllergySymptoms] ([PatientAllergyId] , [SymptomId] , [IsDeleted])
      VALUES      (1 , 2 , 1);
      INSERT INTO [dbo].[AllergySymptoms] ([PatientAllergyId] , [SymptomId] , [IsDeleted])
      VALUES      (3 , 1 , 0);
      INSERT INTO [dbo].[AllergySymptoms] ([PatientAllergyId] , [SymptomId] , [IsDeleted])
      VALUES      (4 , 1 , 0);
      INSERT INTO [dbo].[AllergySymptoms] ([PatientAllergyId] , [SymptomId] , [IsDeleted])
      VALUES      (3 , 6 , 0);
  END
GO