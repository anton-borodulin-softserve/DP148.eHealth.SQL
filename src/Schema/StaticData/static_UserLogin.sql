--Add the test user login.
IF ( NOT EXISTS(SELECT * 
                FROM   [dbo].[UsersLogin]) )
  BEGIN
      INSERT INTO [dbo].[UsersLogin]
                  ([RoleId], [Login])
      VALUES      (1, 'test');
  END 

GO
