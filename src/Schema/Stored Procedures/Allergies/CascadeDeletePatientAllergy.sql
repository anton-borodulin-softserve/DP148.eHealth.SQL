CREATE PROCEDURE [dbo].[CascadeDeletePatientAllergy] @Id int
AS
BEGIN
	UPDATE dbo.PatientAllergies SET IsDeleted = 1 WHERE PatientAllergyId = @Id;
	UPDATE dbo.AllergySymptoms SET IsDeleted = 1 WHERE AllergySymptoms.PatientAllergyId = @Id;
END
GO

