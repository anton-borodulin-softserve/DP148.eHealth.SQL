--Insert static Appointments.

IF ( NOT EXISTS(SELECT *
                FROM   [dbo].[Appointments]) )
  BEGIN
      INSERT INTO [dbo].[Appointments]
                  ([PatientId], [UserId], [AppointmentDateTime])
      VALUES      (1, 1, '1970-01-01 00:00:00')
  END

GO