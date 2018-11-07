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

--TODO: Add secret etc.

/* 
 Post-Deployment Script For inserting Test Image.
 This file contains SQL statements that will be appended to the build script.
*/

IF (NOT EXISTS(SELECT *
			   FROM [dbo].[Images]))
  BEGIN
      INSERT INTO [dbo].[Images]
				  (ImageName)
	  VALUES      ('TestImageName1')
  END

GO

/* 
 Post-Deployment Script For inserting Test Patient.
 This file contains SQL statements that will be appended to the build script.
*/

IF (NOT EXISTS(SELECT *
			   FROM [dbo].[PatientInfo]))
  BEGIN
      INSERT INTO [dbo].[PatientInfo]
				  (FirstName, LastName, Country, City, [Address], BirthDate, Phone, Gender, Email, ImageId, IsDeleted)
	  VALUES      ('FirstName1', 'LastName1', 'Country1', 'City1', 'Test Street, 101', '2000-01-01', '+380673222233', 1, 'testemail@mail.com', 1, 0)
  END

GO