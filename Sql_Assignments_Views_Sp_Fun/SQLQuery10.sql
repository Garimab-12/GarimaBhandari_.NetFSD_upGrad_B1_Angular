CREATE PROCEDURE sp_DeleteEnrollment
    @EnrollmentID INT
AS
BEGIN
    DELETE FROM Enrollments
    WHERE EnrollmentID = @EnrollmentID;

    -- Verify deletion
    SELECT * 
    FROM Enrollments
    WHERE EnrollmentID = @EnrollmentID;
END;
EXEC sp_DeleteEnrollment @EnrollmentID = 3;
SELECT * FROM Enrollments;