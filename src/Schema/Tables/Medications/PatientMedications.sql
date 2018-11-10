CREATE TABLE [dbo].[PatientMedications]
(
    [PatientMedicationsId] BIGINT NOT NULL IDENTITY(1, 1),
    [PatientId]            INT NOT NULL,
    [UserId]               INT NOT NULL,
    [MedicationId]         BIGINT NOT NULL,
    [AssignmentDate]       DATE NOT NULL DEFAULT GETDATE(),
    [Duration]             NVARCHAR(20) NOT NULL,
    [Notes]                NVARCHAR(MAX) NULL,
    [IsFinished]           BIT NOT NULL DEFAULT 0,
    [IsDeleted]            BIT NOT NULL DEFAULT 0

    CONSTRAINT PK_PatientMedications PRIMARY KEY CLUSTERED ( [PatientMedicationsId] ),
    CONSTRAINT FK_PatientMedications_PatientsInfo FOREIGN KEY ( [PatientId] ) REFERENCES [dbo].[PatientInfo]( [PatientId] ),
    CONSTRAINT FK_PatientMedications_Medications FOREIGN KEY ( [MedicationId] ) REFERENCES [dbo].[Medications]( [MedicationId] )
)