/* 
 Post-Deployment Script For inserting Test user.
 This file contains SQL statements that will be appended to the build script.
*/

--Add the test role.
IF ( NOT EXISTS(SELECT *
                FROM   [dbo].[Roles]) )
  BEGIN
      INSERT INTO [dbo].[Roles]
                  (Title)
      VALUES      ('Test')
  END

GO

--Add the test user login.
IF ( NOT EXISTS(SELECT * 
                FROM   [dbo].[UsersLogin]) )
  BEGIN
      INSERT INTO [dbo].[UsersLogin]
                  (RoleId, Login)
      VALUES      (1, 'test')
  END 

GO
