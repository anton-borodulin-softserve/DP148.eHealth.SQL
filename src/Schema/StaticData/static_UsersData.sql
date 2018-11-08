--Add the test user data.
IF ( NOT EXISTS(SELECT * 
                FROM   [dbo].[UserData]) )
  BEGIN
      INSERT INTO [dbo].[UserData]
                  (UserId, FirstName, LastName, BirthDate, PhoneNumber, Country, City, Adress, Sex, Email)
      VALUES      (1, 'Ivan', 'Ivanov', 05/10/1992, '380975638912', 'Ukraine', 'Dnipro', 'Dmytra Yavornytskoho Avenue, 22', 1, 'test')
  END 

GO