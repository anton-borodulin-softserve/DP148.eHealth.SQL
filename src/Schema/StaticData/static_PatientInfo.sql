--Insert test Patient.

IF (NOT EXISTS(SELECT *
			   FROM [dbo].[PatientInfo]))
  BEGIN
      INSERT INTO [dbo].[PatientInfo]
				  (FirstName, LastName, Country, City, [Address], BirthDate, Phone, Gender, Email, ImageId, IsDeleted)
	  VALUES      ('FirstName1', 'LastName1', 'Country1', 'City1', 'Test Street, 101', '2000-01-01', '+380673222233', 1, 'testemail@mail.com', 1, 0)
  END

GO