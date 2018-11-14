--Insert static disease of patient.

IF ( NOT EXISTS(SELECT *
                FROM   [dbo].[PatientDiseases]) )
  BEGIN
      INSERT INTO [dbo].[PatientDiseases]
                  ([PatientId], [DiseaseId], [UserId])
      VALUES      (1, 2, 1);
	  INSERT INTO [dbo].[PatientDiseases]
                  ([PatientId], [DiseaseId], [UserId])
      VALUES      (2, 1, 1);
	  INSERT INTO [dbo].[PatientDiseases]
                  ([PatientId], [DiseaseId], [UserId])
      VALUES      (7, 2, 1);
	  INSERT INTO [dbo].[PatientDiseases]
                  ([PatientId], [DiseaseId], [UserId])
      VALUES      (3, 1, 1);
	  INSERT INTO [dbo].[PatientDiseases]
                  ([PatientId], [DiseaseId], [UserId])
      VALUES      (3, 2, 1);
	  INSERT INTO [dbo].[PatientDiseases]
                  ([PatientId], [DiseaseId], [UserId])
      VALUES      (4, 2, 1);
	  INSERT INTO [dbo].[PatientDiseases]
                  ([PatientId], [DiseaseId], [UserId])
      VALUES      (4, 1, 1);
  END

GO