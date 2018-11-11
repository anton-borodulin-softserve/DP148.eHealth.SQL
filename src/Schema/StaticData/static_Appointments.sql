--Insert static Appointments.

IF ( NOT EXISTS(SELECT *
                FROM   [dbo].[Appointments]) )
  BEGIN
      INSERT INTO [dbo].[Appointments]
                  ([PatientId], [UserId], [AppointmentTime])
      VALUES      (1, 1, '00:00:00');
  END

GO