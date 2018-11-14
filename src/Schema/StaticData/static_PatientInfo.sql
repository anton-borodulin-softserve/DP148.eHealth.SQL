--Insert test Patient.

IF (NOT EXISTS(SELECT *
			   FROM [dbo].[PatientInfo]))
  BEGIN
      INSERT INTO [dbo].[PatientInfo]
				  (FirstName, LastName, Country, City, [Address], BirthDate, Phone,  Email, Gender, ImageId, IsDeleted)
	  VALUES      ('James', 'Bond', 'UK', 'London', 'Douning str, 11', '1970-1-18', '380505554334', 'mi5@gmail.com', 1, 1, 0),
				  ('Ivy', 'Young', 'Ireland', 'Dublin', 'Yellow park, 1', '1980-1-18', '380675554334', 'kotya@gmail.com', 2, 2, 0),
				  ('Melissa', 'Brown', 'Sweden', 'Stokholm', 'Norcheping av, 110', '1990-3-8', '380635554334', 'mel@outlook.com', 2, 3, 0),
				  ('John', 'Smith', 'UK', 'London', 'Westminster, 11', '1956-1-18', '380975554334', 'jo@gmail.com', 1, 4, 0),
                  ('Kevin', 'McBribe', 'UK', 'Aberdin', 'Lake view sq, 11', '1900-1-18', '380505554334', 'scottish@gmail.com', 1, 5, 0),
                  ('Elizabeth', 'Parker', 'UK', 'London', 'Douning str, 11', '1979-1-18', '380505554334', 'Liza999@gmail.com', 2, 1, 0),
                  ( 'Frank', 'Connor', 'UK', 'London', 'Trafalgar sq, 1', '1974-10-18', '380505554334', 'franky@gmail.com', 1, 1, 0),
                  ('Anna', 'Green', 'UK', 'London', 'Nelson str, 9', '1960-1-18', '380505554334', 'ann@gmail.com', 2, 1, 0),
                  ('Sarah', 'Zimmermann', 'UK', 'London', 'Bright avenue, 110', '1999-5-18', '380505554334', 'sarah@gmail.com', 2,  1, 0),
                  ('Klavidya', 'Popkina', 'Russia', 'London', 'Red square, 5', '1970-1-18', '380505554334', 'klava@mail.ru', 2, 1, 0);
  END

GO