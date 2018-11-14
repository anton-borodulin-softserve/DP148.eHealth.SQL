--Insert test Image.

IF (NOT EXISTS(SELECT *
			   FROM [dbo].[Images]))
  BEGIN
      INSERT INTO [dbo].[Images]
				  (ImageName)
	  VALUES      ('James_Bond.jpg'),
				  ('Ivy_Young.jpg'),
				  ('Melissa_Brown.jpg'),
				  ('John_Smith.jpg'),
				  ('Kevin_McBribe.jpg');
  END

GO