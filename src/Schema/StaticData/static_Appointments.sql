--Insert static Appointments.

IF ( NOT EXISTS(SELECT *
                FROM   [dbo].[Appointments]) )
  BEGIN
      INSERT INTO [dbo].[Appointments]
                  ([PatientId], [UserId], [AppointmentDateTime])
      VALUES      (1, 1, '2018-10-01 00:00:00'),
	              (2, 1, '2018-10-02 00:00:00'),
				  (3, 1, '2018-10-03 00:00:00'),
				  (1, 2, '2018-10-04 00:00:00'),
				  (2, 3, '2018-10-05 00:00:00'),
				  (4, 1, '2018-10-06 00:00:00'),
				  (7, 1, '2018-10-07 00:00:00'),
				  (4, 2, '2018-10-08 00:00:00');
  END

GO