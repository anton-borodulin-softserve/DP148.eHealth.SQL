--Add the test user login.

IF ( NOT EXISTS(SELECT * 
                FROM   [dbo].[Logins]) )
  BEGIN
      INSERT INTO [dbo].[Logins]
                  ([Login], [RoleId])
      VALUES      ('ivan@gmail.com', 1);
      INSERT INTO [dbo].[Logins]
                  ([Login], [RoleId])
      VALUES      ('kate@gmail.com', 2);
      INSERT INTO [dbo].[Logins]
                  ([Login], [RoleId])
      VALUES      ('svetpal@gmail.com', 3);
  END 

GO
