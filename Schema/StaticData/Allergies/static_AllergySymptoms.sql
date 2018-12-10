IF ( NOT EXISTS(SELECT * 
                FROM   [dbo].[AllergySymptoms]) )
  BEGIN
      INSERT INTO [dbo].[AllergySymptoms] ([PatientAllergyId] , [SymptomId] , [IsDeleted], [CreationDate])
      VALUES      (1 , 1 , 0 , '2018-11-04');
      INSERT INTO [dbo].[AllergySymptoms] ([PatientAllergyId] , [SymptomId] , [IsDeleted], [CreationDate])
      VALUES      (1 , 4 , 0 , '2018-11-11');
      INSERT INTO [dbo].[AllergySymptoms] ([PatientAllergyId] , [SymptomId] , [IsDeleted], [CreationDate])
      VALUES      (1 , 5 , 0 , '2018-11-12');
      INSERT INTO [dbo].[AllergySymptoms] ([PatientAllergyId] , [SymptomId] , [IsDeleted], [CreationDate])
      VALUES      (1 , 2 , 1 , '2018-11-13');
      INSERT INTO [dbo].[AllergySymptoms] ([PatientAllergyId] , [SymptomId] , [IsDeleted], [CreationDate])
      VALUES      (3 , 1 , 0 , '2018-11-14');
      INSERT INTO [dbo].[AllergySymptoms] ([PatientAllergyId] , [SymptomId] , [IsDeleted], [CreationDate])
      VALUES      (4 , 1 , 0 , '2018-11-10');
      INSERT INTO [dbo].[AllergySymptoms] ([PatientAllergyId] , [SymptomId] , [IsDeleted], [CreationDate])
      VALUES      (3 , 6 , 0 , '2018-11-21');
  END
GO