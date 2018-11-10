--Add the test user login.

IF ( NOT EXISTS(SELECT * 
                FROM   [dbo].[Logins]) )
  BEGIN
      INSERT INTO [dbo].[Logins]
                  ([Login], [RoleId])
      VALUES      ('admin1', 1);
      INSERT INTO [dbo].[Logins]
                  ([Login], [RoleId])
      VALUES      ('doctor1', 2);
  END 

GO
