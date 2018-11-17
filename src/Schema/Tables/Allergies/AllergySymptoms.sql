CREATE TABLE [dbo].[AllergySymptoms] 
(
    [AllergySymptomId] INT NOT NULL IDENTITY, 
    [PatientAllergyId] INT NOT NULL, 
    [SymptomId] INT NOT NULL, 
    [IsDeleted] BIT NOT NULL DEFAULT 0

    CONSTRAINT PK_AllergySymptom PRIMARY KEY ( [AllergySymptomId] ), 
    CONSTRAINT FK_AllergySymptom_PatientAllergy FOREIGN KEY ( [PatientAllergyId] ) REFERENCES [PatientAllergies]( [PatientAllergyId] ), 
    CONSTRAINT FK_AllergySymptom_Symptom FOREIGN KEY ( [SymptomId] ) REFERENCES Symptoms( [SymptomId] ), 
    CONSTRAINT UC_AllergySymptom UNIQUE ( [PatientAllergyId], [SymptomId] )
)
