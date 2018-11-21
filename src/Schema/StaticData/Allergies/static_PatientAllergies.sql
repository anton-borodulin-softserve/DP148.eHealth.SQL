IF ( NOT EXISTS(SELECT * 
                FROM   [dbo].[PatientAllergies]) )
  BEGIN
      INSERT INTO [dbo].[PatientAllergies] ([PatientId] , [AllergyId] , [Duration] , [Notes] , [IsDeleted], [CreationDate])
      VALUES      (1 , 1 , '1 day' , 'note' , 0 , '2018-11-04');
      INSERT INTO [dbo].[PatientAllergies] ([PatientId] , [AllergyId] , [Duration] , [Notes] , [IsDeleted], [CreationDate])
      VALUES      (1 , 3 , '3 weeks' , 'note' , 0 , '2018-11-11');
      INSERT INTO [dbo].[PatientAllergies] ([PatientId] , [AllergyId] , [Duration] , [Notes] , [IsDeleted], [CreationDate])
      VALUES      (2 , 4 , 'Whole life' , '' , 0 , '2018-11-12');
      INSERT INTO [dbo].[PatientAllergies] ([PatientId] , [AllergyId] , [Duration] , [Notes] , [IsDeleted], [CreationDate])
      VALUES      (2 , 1 , '' , 'note' , 0 , '2018-11-06');
      INSERT INTO [dbo].[PatientAllergies] ([PatientId] , [AllergyId] , [Duration] , [Notes] , [IsDeleted], [CreationDate])
      VALUES      (2 , 2 , '1 day' , 'note' , 1 , '2018-11-01');
      INSERT INTO [dbo].[PatientAllergies] ([PatientId] , [AllergyId] , [Duration] , [Notes] , [IsDeleted], [CreationDate])
      VALUES      (4 , 1 , '' , '' , 0 , '2018-11-08');
      INSERT INTO [dbo].[PatientAllergies] ([PatientId] , [AllergyId] , [Duration] , [Notes] , [IsDeleted], [CreationDate])
      VALUES      (4 , 7 , '11 days' , 'note note note note notenotenonononon' , 0 , '2018-11-24');
      INSERT INTO [dbo].[PatientAllergies] ([PatientId] , [AllergyId] , [Duration] , [Notes] , [IsDeleted], [CreationDate])
      VALUES      (4 , 9 , '10 years' , 'in prison' , 0 , '2018-11-14');
  END
GO