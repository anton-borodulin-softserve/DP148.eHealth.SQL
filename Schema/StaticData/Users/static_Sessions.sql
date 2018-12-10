--Add the test secret.

IF ( NOT EXISTS(SELECT * 
                FROM   [dbo].[Sessions]) )
  BEGIN
      INSERT INTO [dbo].[Sessions]
                  ([UserId], [Token], [ExpiredDate])
      VALUES      (1, NEWID(), GETDATE());
      INSERT INTO [dbo].[Sessions]
                  ([UserId], [Token], [ExpiredDate])
      VALUES      (2, NEWID(), GETDATE());
      INSERT INTO [dbo].[Sessions]
                  ([UserId], [Token], [ExpiredDate])
      VALUES      (3, NEWID(), GETDATE());
  END

GO