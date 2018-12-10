-- Summary:
-- Goes through all records which were not been deleted
-- and updates status of prescriptions to historic
-- operating current date, assignment date and duration.
CREATE PROCEDURE [dbo].[UpdateStatusAuthomaticallyPrescription]
AS
BEGIN
    DECLARE @Id INT;
    DECLARE @AssignmentDate DATE;
    DECLARE @Duration SMALLINT;
    -- @CurrentDuration of prescription
    -- Forms as result current date - assignment date
    -- GETDATE()  - AssignmentDate
    DECLARE @CurrentDuration INT;
    DECLARE @PrescriptionCursor CURSOR;

    SET @PrescriptionCursor = CURSOR FOR
    SELECT [Id], [AssignmentDate], [Duration]
    FROM [dbo].[Prescriptions] 
    WHERE [IsFinished] = 0 AND [IsDeleted] = 0;

    OPEN @PrescriptionCursor

    FETCH NEXT FROM @PrescriptionCursor
    INTO @Id, @AssignmentDate, @Duration

    WHILE @@FETCH_STATUS = 0
    BEGIN
        SET @CurrentDuration = DATEDIFF(day, @AssignmentDate, GETDATE());
        IF (@CurrentDuration > @Duration)
            BEGIN
                UPDATE [dbo].[Prescriptions] SET [IsFinished] = 1 WHERE Id = @Id;
            END;
        FETCH NEXT FROM @PrescriptionCursor
        INTO @Id, @AssignmentDate, @Duration
    END;
    CLOSE @PrescriptionCursor;
    DEALLOCATE @PrescriptionCursor;
END
GO