--Add the test secret.

IF ( NOT EXISTS(SELECT * 
                FROM   [dbo].[Secrets]) )
  BEGIN
      INSERT INTO [dbo].[Secrets]
                  ([Id], [Password])
      VALUES      (1, '123456');
      INSERT INTO [dbo].[Secrets]
                  ([Id], [Password])
      VALUES      (2, '654321');
      INSERT INTO [dbo].[Secrets]
                  ([Id], [Password])
      VALUES      (3, '192837');
  END

GO