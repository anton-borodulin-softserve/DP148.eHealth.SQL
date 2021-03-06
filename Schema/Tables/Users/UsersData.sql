﻿CREATE TABLE [dbo].[UsersData]
(
    [Id]          INT NOT NULL,
    [FirstName]   NVARCHAR(100) NOT NULL,
    [LastName]    NVARCHAR(100) NOT NULL,
    [BirthDate]   DATE NOT NULL,
    [PhoneNumber] VARCHAR(12) NOT NULL,
    [Country]     NVARCHAR(100) NULL,
    [City]        NVARCHAR(100) NULL,
    [Adress]      NVARCHAR(100) NULL,
    [Gender]      TINYINT NOT NULL DEFAULT 0,
    [Email]       VARCHAR(50) NULL,
    [IsDeleted]   BIT NOT NULL DEFAULT 0

    CONSTRAINT PK_UsersData PRIMARY KEY CLUSTERED ( [Id] ),
    CONSTRAINT FK_UsersData_Logins FOREIGN KEY ( [Id] ) REFERENCES [dbo].[Logins]( [Id] ),
    CONSTRAINT UC_UsersEmail UNIQUE( [Email] ),
    CONSTRAINT UC_User UNIQUE([FirstName], [LastName], [BirthDate]) 
)