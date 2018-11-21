CREATE TABLE [dbo].[Prescriptions]
(
    [Id]             INT NOT NULL IDENTITY(1, 1),
    [PatientId]      INT NOT NULL,
    [UserId]         INT NOT NULL,
    [DrugId]         INT NOT NULL,
    [AssignmentDate] DATE NOT NULL DEFAULT GETDATE(),
    [Duration]       SMALLINT NOT NULL,
    [Notes]          NVARCHAR(MAX) NULL,
    [IsFinished]     BIT NOT NULL DEFAULT 0,
    [IsDeleted]      BIT NOT NULL DEFAULT 0

    CONSTRAINT PK_PatientMedications PRIMARY KEY CLUSTERED ( [Id] ),
    CONSTRAINT FK_PatientMedications_PatientsInfo FOREIGN KEY ( [PatientId] ) REFERENCES [dbo].[PatientInfo]( [Id] ),
    CONSTRAINT FK_PatientMedications_Medications FOREIGN KEY ( [DrugId] ) REFERENCES [dbo].[Drugs]( [Id] )
)