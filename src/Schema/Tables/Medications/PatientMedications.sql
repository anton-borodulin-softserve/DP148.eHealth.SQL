CREATE TABLE [dbo].[PatientMedications]
(
    [PatientMedicationsId] INT NOT NULL PRIMARY KEY,
    [PatientId] NCHAR(10) NULL,
    [UserId] NCHAR(10) NULL,
    [MedicationId] NCHAR(10) NULL,
    [AssignmentDate] NCHAR(10) NULL,
    [Duration] NCHAR(10) NULL,
    [Notes] NCHAR(10) NULL,
    [Status] NCHAR(10) NULL

)