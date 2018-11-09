﻿CREATE TABLE [dbo].[PatientInfo]
(
    [PatientId] INT NOT NULL IDENTITY(1, 1),
    [FirstName] NVARCHAR(50) NOT NULL,
    [LastName] NVARCHAR(50) NOT NULL

    CONSTRAINT PK_PatientInfo PRIMARY KEY CLUSTERED ( [PatientId] )
)