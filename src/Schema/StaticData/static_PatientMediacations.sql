--Insert static patient medications.

IF ( NOT EXISTS(SELECT *
                FROM   [dbo].[Medications]) )
  BEGIN
      INSERT INTO [dbo].[Medications]
                  ([PatientId], [UserId], [MedicationId], [Duration])
      VALUES      ('1', '1', '1', '14 days');
  END

GO