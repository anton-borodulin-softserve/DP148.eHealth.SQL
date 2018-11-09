--Insert static patient medications.

IF ( NOT EXISTS(SELECT *
                FROM   [dbo].[PatientMedications]) )
  BEGIN
      INSERT INTO [dbo].[PatientMedications]
                  ([PatientId], [UserId], [MedicationId], [Duration])
      VALUES      ('1', '1', '1', '14 days');
  END

GO