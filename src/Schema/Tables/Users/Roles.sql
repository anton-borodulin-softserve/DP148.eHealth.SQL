﻿CREATE TABLE [dbo].[Roles]
(
    [Id]     INT NOT NULL IDENTITY(1, 1),
    [Title]  VARCHAR(100) NOT NULL,

    CONSTRAINT PK_Roles PRIMARY KEY CLUSTERED ( [Id] )
)