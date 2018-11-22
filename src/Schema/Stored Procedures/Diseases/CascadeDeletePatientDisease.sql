CREATE PROCEDURE [dbo].[CascadeDeletePatientDisease] @Id int
AS
BEGIN
	UPDATE dbo.PatientDiseases SET IsDeleted = 1 WHERE [Id] = @Id;	
END
GO