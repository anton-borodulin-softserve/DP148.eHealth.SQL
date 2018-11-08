﻿CREATE TABLE [dbo].[UsersData] 
  ( 
     [UserId]      INT NOT NULL IDENTITY(1, 1), 
     [FirstName]   NVARCHAR(100) NOT NULL, 
     [LastName]    NVARCHAR(100) NOT NULL, 
     [BirthDate]   DATE NOT NULL, 
     [PhoneNumber] VARCHAR(12) NOT NULL, 
     [Country]     NVARCHAR(100) NULL, 
     [City]        NVARCHAR(100) NULL, 
     [Adress]      NVARCHAR(100) NULL, 
     [Sex]         TINYINT NOT NULL DEFAULT 0, 
     [Email]       VARCHAR(50) NULL UNIQUE 

     CONSTRAINT PK_UserData PRIMARY KEY CLUSTERED ( UserId ) 
     CONSTRAINT UC_User UNIQUE(FirstName, LastName, BirthDate) 
  ) 