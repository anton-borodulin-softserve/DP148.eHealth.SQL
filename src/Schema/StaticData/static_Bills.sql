/*
 Post-Deployment Script For inserting Test user.
 This file contains SQL statements that will be appended to the build script.
*/

--Add the test Bill.
IF ( NOT EXISTS(SELECT *
                FROM   [dbo].[Bills]) )
  BEGIN
      INSERT INTO [dbo].[Bills]
                  (InvoiceNumber, Amount, AppointmentId)
      VALUES      ('00000000-0000-0000-0000-000000000000', 100, 1)
  END

GO

--Add the test PatientBill.
IF ( NOT EXISTS(SELECT *
                FROM   [dbo].[PatientBills]) )
  BEGIN
      INSERT INTO [dbo].[PatientBills]
                  (PatientId, BillId)
      VALUES      (1, 1)
  END

GO