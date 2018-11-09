--Add the test user data.

IF ( NOT EXISTS(SELECT * 
                FROM   [dbo].[UsersData]) )
  BEGIN
      INSERT INTO [dbo].[UsersData]
                  (FirstName, LastName)
      VALUES      ('Ivan', 'Ivanov')
  END 

GO