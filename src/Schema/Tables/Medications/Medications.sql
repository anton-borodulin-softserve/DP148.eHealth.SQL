CREATE TABLE [dbo].[Medications]
(
    [MedicationId] BIGINT NOT NULL IDENTITY(1, 1),
    [Name] NVARCHAR(100) NOT NULL,
    [LatinName] NVARCHAR(100) NOT NULL,
    [Type] NVARCHAR(50) NOT NULL,
    [Dose] SMALLINT NOT NULL,
    [Direction] NVARCHAR(50) NOT NULL,
    [Instruction] NVARCHAR(MAX) NOT NULL,
    [IsDeleted] BIT NOT NULL,

    CONSTRAINT PK_Medication PRIMARY KEY CLUSTERED ( [MedicationId] ),
    CONSTRAINT UC_Medication UNIQUE ( [LatinName], [Type], [Dose] ),
    CONSTRAINT CHK_MedicationDose CHECK ( [Dose] > 0)
)