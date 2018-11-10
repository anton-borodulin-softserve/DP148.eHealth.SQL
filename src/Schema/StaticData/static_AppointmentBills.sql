--Add the test AppointmentBill.

IF ( NOT EXISTS(SELECT *
                FROM   [dbo].[AppointmentBill]) )
  BEGIN
      INSERT INTO [dbo].[AppointmentBill]
                  ([InvoiceNumber], [Amount])
      VALUES      ('00000000-0000-0000-0000-000000000000', 100)
  END