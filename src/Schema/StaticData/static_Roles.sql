--Insert static roles.

IF ( NOT EXISTS(SELECT *
                FROM   [dbo].[Roles]) )
  BEGIN
      INSERT INTO [dbo].[Roles]
                  ([Title])
      VALUES      ('Admin');
      INSERT INTO [dbo].[Roles]
                  ([Title])
      VALUES      ('Doctor');
  END

GO