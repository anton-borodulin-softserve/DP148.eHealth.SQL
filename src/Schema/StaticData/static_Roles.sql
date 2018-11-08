--Insert static roles.

IF ( NOT EXISTS(SELECT *
                FROM   [dbo].[Roles]) )
  BEGIN
      INSERT INTO [dbo].[Roles]
                  (Title)
      VALUES      ('Test')
  END

GO