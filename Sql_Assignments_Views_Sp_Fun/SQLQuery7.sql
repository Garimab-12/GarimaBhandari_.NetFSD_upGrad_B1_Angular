CREATE PROCEDURE sp_EnrollStudent
    @StudentID INT,
    @CourseID INT
AS
BEGIN
    INSERT INTO Enrollments (StudentID, CourseID, EnrollmentDate)
    VALUES (@StudentID, @CourseID, GETDATE());
END; 
EXEC sp_EnrollStudent 
    @StudentID = 3,
    @CourseID = 102;
    SELECT * FROM Enrollments;