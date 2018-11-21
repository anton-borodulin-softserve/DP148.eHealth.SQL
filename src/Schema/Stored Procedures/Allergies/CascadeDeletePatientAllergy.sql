CREATE PROCEDURE [dbo].[CascadeDeletePatientAllergy] @Id int
AS
BEGIN
	UPDATE [dbo].[PatientAllergies] SET [IsDeleted] = 1, [DeletionDate] = GETDATE() WHERE [Id] = @Id;
	UPDATE [dbo].[AllergySymptoms] SET [IsDeleted] = 1, [DeletionDate] = GETDATE() WHERE [AllergySymptoms].[PatientAllergyId] = @Id;
END
GO

