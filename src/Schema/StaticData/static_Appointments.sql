--Insert static Appointments.

IF ( NOT EXISTS(SELECT *
                FROM   [dbo].[Appointments]) )
  BEGIN
      INSERT INTO [dbo].[Appointments]
                  ([PatientId], [UserId])
      VALUES      (1, 1)
  END

GO