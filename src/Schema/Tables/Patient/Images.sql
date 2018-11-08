﻿CREATE TABLE [dbo].[Images]
(
	[ImageId] INT NOT NULL IDENTITY(1, 1), 
	[ImageName] VARCHAR(100) NULL, 
	[Image] VARBINARY(MAX) NULL

	CONSTRAINT PK_Images PRIMARY KEY CLUSTERED ( [ImageId] )
)