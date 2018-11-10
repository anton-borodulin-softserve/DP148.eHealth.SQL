--Add the test user data.
IF ( NOT EXISTS(SELECT * 
                FROM   [dbo].[UsersData]) )
  BEGIN
      INSERT INTO [dbo].[UsersData]
                  (FirstName, LastName, BirthDate, PhoneNumber, Country, City, Adress, Gender, Email)
      VALUES      ('Ivan', 'Ivanov', GETDATE(), '380975638912', 'Ukraine', 'Dnipro', 'Dmytra Yavornytskoho Avenue, 22', 1, 'test')
  END 

GO