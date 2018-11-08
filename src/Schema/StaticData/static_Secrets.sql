--Add the test secret.
IF ( NOT EXISTS(SELECT * 
                FROM   [dbo].[Secrets]) )
  BEGIN
      INSERT INTO [dbo].[Secrets]
                  (UserId, Password)
      VALUES      (1, '123456')
  END 

GO