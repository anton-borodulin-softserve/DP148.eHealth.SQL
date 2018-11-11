--Add the test AppointmentBill.

IF ( NOT EXISTS(SELECT *
                FROM   [dbo].[AppointmentBills]) )
  BEGIN
      INSERT INTO [dbo].[AppointmentBills]
                  ([AppointmentId], [Amount])
      VALUES      (1, 100)
  END