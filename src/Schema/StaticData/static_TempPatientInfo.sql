--Insert test Patient.

IF (NOT EXISTS(SELECT *
			   FROM [dbo].[PatientInfo]))
  BEGIN
      INSERT INTO [dbo].[PatientInfo]
				  (FirstName, LastName)
	  VALUES      ('FirstName1', 'LastName1')
  END

GO