CREATE TABLE [dbo].[Medications]
(
    [MedicationId] INT NOT NULL PRIMARY KEY,
    [Name] NCHAR(10) NULL,
    [LatinName] NCHAR(10) NULL,
    [Type] NCHAR(10) NULL,
    [Dose] NCHAR(10) NULL,
    [Units] NCHAR(10) NULL,
    [Direction] NCHAR(10) NULL,
    [Instruction] NCHAR(10) NULL,
    [IsDeleted] NCHAR(10) NULL,
)