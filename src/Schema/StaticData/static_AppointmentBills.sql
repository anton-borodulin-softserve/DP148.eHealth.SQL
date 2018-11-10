--Add the test AppointmentBill.

IF ( NOT EXISTS(SELECT *
                FROM   [dbo].[AppointmentBill]) )
  BEGIN
      INSERT INTO [dbo].[AppointmentBill]
                  ([Amount])
      VALUES      (100)
  END