IF ( NOT EXISTS(SELECT * 
                FROM   [dbo].[Symptoms]) )
  BEGIN
      INSERT INTO [dbo].[Symptoms] ([Naming], [IsDeleted])
      VALUES      ('Cough' , 0);
      INSERT INTO [dbo].[Symptoms] ([Naming], [IsDeleted])
      VALUES      ('Rash' , 0);
      INSERT INTO [dbo].[Symptoms] ([Naming], [IsDeleted])
      VALUES      ('Eye swelling' , 0);
      INSERT INTO [dbo].[Symptoms] ([Naming], [IsDeleted])
      VALUES      ('Snuffle' , 0);
      INSERT INTO [dbo].[Symptoms] ([Naming], [IsDeleted])
      VALUES      ('Diarrhea' , 0);
      INSERT INTO [dbo].[Symptoms] ([Naming], [IsDeleted])
      VALUES      ('Drowsiness' , 0);
      INSERT INTO [dbo].[Symptoms] ([Naming], [IsDeleted])
      VALUES      ('Jumping ability' , 1);
      INSERT INTO [dbo].[Symptoms] ([Naming], [IsDeleted])
      VALUES      ('My symptom' , 1);
  END

GO
