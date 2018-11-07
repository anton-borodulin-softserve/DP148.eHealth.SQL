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

--Add the test secret.
IF ( NOT EXISTS(SELECT * 
                FROM   [dbo].[Secrets]) )
  BEGIN
      INSERT INTO [dbo].[Secrets]
                  (UserId, Password)
      VALUES      (1, '123456')
  END 

GO

--Add the test user data.
IF ( NOT EXISTS(SELECT * 
                FROM   [dbo].[UserData]) )
  BEGIN
      INSERT INTO [dbo].[UserData]
                  (UserId, FirstName, LastName, BirthDate, PhoneNumber, Country, City, Adress, Sex, Email)
      VALUES      (1, 'Ivan', 'Ivanov', 05/10/1992, '380975638912', 'Ukraine', 'Dnipro', 'Dmytra Yavornytskoho Avenue, 22', 1, 'test')
  END 

GO

