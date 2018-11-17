CREATE PROCEDURE [dbo].[CascadeDeletePatientAllergy] @Id int
AS
BEGIN
	UPDATE dbo.PatientAllergies SET IsDeleted = 1 WHERE [Id] = @Id;
	UPDATE dbo.AllergySymptoms SET IsDeleted = 1 WHERE AllergySymptoms.PatientAllergyId = @Id;
END
GO

