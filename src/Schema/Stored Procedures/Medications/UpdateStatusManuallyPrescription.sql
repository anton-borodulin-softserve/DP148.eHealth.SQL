-- Summary:
-- Change prescription record specified by identifier, setting status to historic.
-- Operates current date, assignment date and duration.
-- If current duration more then assignment duration, sets status to historic and leave duration unchanged.
-- If current duration less then assignment duration, sets status to historic and changes duration up-to-date.
-- Parameter @Id:
-- Prescription identifier to make changes.
CREATE PROCEDURE [dbo].[UpdateStatusManuallyPrescription] @Id INT
AS
BEGIN
    DECLARE @Duration SMALLINT;
    -- @CurrentDuration of prescription
    -- Forms as result current date - assignment date
    -- GETDATE()  - AssignmentDate
    DECLARE @CurrentDuration INT;

    SELECT @Duration = [Duration], @CurrentDuration = DATEDIFF(day, [AssignmentDate], GETDATE())
    FROM [dbo].[Prescriptions] WHERE [Id] = @Id AND [IsDeleted] = 0;

    IF (@CurrentDuration > @Duration)
        BEGIN
            UPDATE [dbo].[Prescriptions]
            SET [IsFinished] = 1
            WHERE [Id] = @Id;
        END;
    ELSE
        BEGIN
            UPDATE [dbo].[Prescriptions]
            SET [Duration] = @CurrentDuration, [IsFinished] = 1
            WHERE [Id] = @Id;
        END;
END
GO