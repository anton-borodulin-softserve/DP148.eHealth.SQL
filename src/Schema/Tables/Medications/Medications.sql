CREATE TABLE [dbo].[Medications]
(
    [MedicationId]      BIGINT NOT NULL IDENTITY(1, 1),
    [InternationalName] NVARCHAR(50) NOT NULL,
    [Type]              NVARCHAR(50) NOT NULL,
    [Dose]              FLOAT NOT NULL,
    [DoseUnit]          NVARCHAR(4) NOT NULL DEFAULT 'mg',
    [Direction]         NVARCHAR(50) NOT NULL,
    [Instruction]       NVARCHAR(MAX) NOT NULL,
    [IsDeleted]         BIT NOT NULL DEFAULT 0,

    CONSTRAINT PK_Medications PRIMARY KEY CLUSTERED ( [MedicationId] ),
    CONSTRAINT UC_Medications UNIQUE ( [InternationalName], [Type], [Dose], [DoseUnit]),
    CONSTRAINT CHK_MedicationsDose CHECK ( [Dose] > 0)
)