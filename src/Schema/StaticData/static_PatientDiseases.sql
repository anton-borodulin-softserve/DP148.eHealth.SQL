--Insert static disease of patient.

IF ( NOT EXISTS(SELECT *
                FROM   [dbo].[PatientDiseases]) )
  BEGIN
      INSERT INTO [dbo].[PatientDiseases]
                  ([PatientId], [DiseaseId], [UserId])
      VALUES      (1, 1, 1);
  END

GO