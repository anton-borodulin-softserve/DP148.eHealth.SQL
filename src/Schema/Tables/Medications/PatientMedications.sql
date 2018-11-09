CREATE TABLE [dbo].[PatientMedications]
(
    [PatientMedicationsId] BIGINT NOT NULL IDENTITY(1, 1),
    [PatientId] INT NOT NULL,
    [UserId] INT NOT NULL ,
    [MedicationId] BIGINT NOT NULL,
    [AssignmentDate] DATE NOT NULL DEFAULT GETDATE(),
    [Duration] NVARCHAR(20) NOT NULL,
    [Notes] NVARCHAR(MAX) NULL,
    [Status] BIT NOT NULL

    CONSTRAINT PK_PatientMedication PRIMARY KEY CLUSTERED ( [PatientMedicationsId] ),
    CONSTRAINT FK_PatientMedication_Patient FOREIGN KEY ( [PatientId] ) REFERENCES [dbo].[PatientInfo]( [PatientId] ),
    CONSTRAINT FK_PatientMedication_Doctor FOREIGN KEY ( [UserId] ) REFERENCES dbo.[UsersData]( [UserId] ),
    CONSTRAINT FK_PatientMedication_Medication FOREIGN KEY ( [MedicationId] ) REFERENCES dbo.[Medications]( [MedicationId] ),
)