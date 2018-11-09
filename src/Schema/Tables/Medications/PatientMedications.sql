CREATE TABLE [dbo].[PatientMedications]
(
    [PatientMedicationsId] BIGINT NOT NULL IDENTITY(1, 1),
    [PatientId]            INT NOT NULL,
    [UserId]               INT NOT NULL,
    [MedicationId]         BIGINT NOT NULL,
    [AssignmentDate]       DATE NOT NULL DEFAULT Getdate(),
    [Duration]             NVARCHAR(20) NOT NULL,
    [Notes]                NVARCHAR(max) NULL,
    -- Сurrent treatment by medicine equals 0, finished equals 1.
    [Status]               BIT NOT NULL DEFAULT 0

    CONSTRAINT PK_PatientMedications
    PRIMARY KEY CLUSTERED ( [PatientMedicationsId] ),

    -- This constraint won't available
    -- without merging which
    -- gives access to PatientIngo table.
    /*
    CONSTRAINT FK_PatientMedications_PatientsInfo
    FOREIGN KEY ( [PatientId] )
    REFERENCES [dbo].[PatientInfo]( [PatientId] ),
    */

    CONSTRAINT FK_PatientMedications_Medications
    FOREIGN KEY ( [MedicationId] )
    REFERENCES dbo.[Medications]( [MedicationId] )
)