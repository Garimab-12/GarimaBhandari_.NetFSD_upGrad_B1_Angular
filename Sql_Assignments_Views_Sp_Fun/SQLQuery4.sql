CREATE VIEW vw_DepartmentStudentCount AS
SELECT 
    d.DepartmentName,
    COUNT(s.StudentID) AS TotalStudents
FROM Departments d
JOIN Students s ON d.DepartmentID = s.DepartmentID
GROUP BY d.DepartmentName;
GO
SELECT * FROM vw_DepartmentStudentCount;
SELECT DepartmentName, TotalStudents
FROM vw_DepartmentStudentCount
WHERE TotalStudents > 10;

SELECT DepartmentName, TotalStudents
FROM vw_DepartmentStudentCount
ORDER BY TotalStudents DESC;