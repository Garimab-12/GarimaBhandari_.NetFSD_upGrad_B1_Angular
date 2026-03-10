CREATE PROCEDURE sp_UpdateMarks
    @MarkID INT,
    @NewMarks INT
AS
BEGIN
    UPDATE Marks
    SET MarksObtained = @NewMarks
    WHERE MarkID = @MarkID;

    -- Display updated result
    SELECT *
    FROM Marks
    WHERE MarkID = @MarkID;
END;
EXEC sp_UpdateMarks 
    @MarkID = 2,
    @NewMarks = 95;