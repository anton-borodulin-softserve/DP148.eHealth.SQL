--Add the test AppointmentBill.

IF ( NOT EXISTS(SELECT *
                FROM   [dbo].[AppointmentBills]) )
  BEGIN
      INSERT INTO [dbo].[AppointmentBills] ([Id], [Amount])
      VALUES      (1, 100);
      INSERT INTO [dbo].[AppointmentBills] ([Id], [Amount])
      VALUES      (2, 0);
      INSERT INTO [dbo].[AppointmentBills] ([Id], [Amount])
      VALUES      (3, 400);
      INSERT INTO [dbo].[AppointmentBills] ([Id], [Amount])
      VALUES      (4, 1000);
  END