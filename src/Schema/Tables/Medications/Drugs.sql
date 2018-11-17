CREATE TABLE [dbo].[Drugs]
(
    [DrugId]            BIGINT NOT NULL IDENTITY(1, 1),
    [Name]              NVARCHAR(50) NOT NULL,
    [Type]              NVARCHAR(50) NOT NULL,
    [Dose]              FLOAT NOT NULL,
    [DoseUnit]          NVARCHAR(4) NOT NULL DEFAULT 'mg',
    [Direction]         NVARCHAR(50) NOT NULL,
    [Instruction]       NVARCHAR(MAX) NOT NULL,
    [IsDeleted]         BIT NOT NULL DEFAULT 0,

    CONSTRAINT PK_Medications PRIMARY KEY CLUSTERED ( [DrugId] ),
    CONSTRAINT UC_Medications UNIQUE ( [Name], [Type], [Dose], [DoseUnit]),
    CONSTRAINT CHK_MedicationsDose CHECK ( [Dose] > 0)
)