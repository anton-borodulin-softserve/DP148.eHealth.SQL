--Add the test secret.
IF ( NOT EXISTS(SELECT * 
                FROM   [dbo].[Secrets]) )
  BEGIN
      INSERT INTO [dbo].[Secrets]
                  ([Password])
      VALUES      ('123456');
  END 

GO