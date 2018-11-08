IF ( NOT EXISTS(SELECT * 
                FROM   [dbo].[PatientAllergy]) )
  BEGIN
      INSERT INTO [dbo].[PatientAllergy]
           ([PatientId] , [AllergyId] , [Duration] ,
            [Notes] , [IsDeleted])
      VALUES
           (1 , 1 , '1 day' , 'note' , 0)
  END
GO