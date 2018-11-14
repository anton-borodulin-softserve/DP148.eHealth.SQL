IF ( NOT EXISTS(SELECT * 
                FROM   [dbo].[PatientAllergies]) )
  BEGIN
      INSERT INTO [dbo].[PatientAllergies] ([PatientId] , [AllergyId] , [Duration] , [Notes] , [IsDeleted])
      VALUES      (1 , 1 , '1 day' , 'note' , 0);
      INSERT INTO [dbo].[PatientAllergies] ([PatientId] , [AllergyId] , [Duration] , [Notes] , [IsDeleted])
      VALUES      (1 , 3 , '3 weeks' , 'note' , 0);
      INSERT INTO [dbo].[PatientAllergies] ([PatientId] , [AllergyId] , [Duration] , [Notes] , [IsDeleted])
      VALUES      (2 , 4 , 'Whole life' , '' , 0);
      INSERT INTO [dbo].[PatientAllergies] ([PatientId] , [AllergyId] , [Duration] , [Notes] , [IsDeleted])
      VALUES      (2 , 1 , '' , 'note' , 0);
      INSERT INTO [dbo].[PatientAllergies] ([PatientId] , [AllergyId] , [Duration] , [Notes] , [IsDeleted])
      VALUES      (2 , 2 , '1 day' , 'note' , 1);
      INSERT INTO [dbo].[PatientAllergies] ([PatientId] , [AllergyId] , [Duration] , [Notes] , [IsDeleted])
      VALUES      (4 , 1 , '' , '' , 0);
      INSERT INTO [dbo].[PatientAllergies] ([PatientId] , [AllergyId] , [Duration] , [Notes] , [IsDeleted])
      VALUES      (4 , 7 , '11 days' , 'note note note note notenotenonononon' , 0);
      INSERT INTO [dbo].[PatientAllergies] ([PatientId] , [AllergyId] , [Duration] , [Notes] , [IsDeleted])
      VALUES      (4 , 9 , '10 years' , 'in prison' , 0);
  END
GO