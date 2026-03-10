USE EducationDB;
GO
CREATE VIEW vw_StudentCourses AS
SELECT 
    s.StudentID,
    s.FirstName,
    s.LastName,
    c.CourseName,
    e.EnrollmentDate
FROM Students s
JOIN Enrollments e ON s.StudentID = e.StudentID
JOIN Courses c ON e.CourseID = c.CourseID;
GO