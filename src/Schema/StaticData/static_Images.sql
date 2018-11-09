--Insert test Image.

IF (NOT EXISTS(SELECT *
			   FROM [dbo].[Images]))
  BEGIN
      INSERT INTO [dbo].[Images]
				  (ImageName)
	  VALUES      ('TestImageName1')
  END

GO