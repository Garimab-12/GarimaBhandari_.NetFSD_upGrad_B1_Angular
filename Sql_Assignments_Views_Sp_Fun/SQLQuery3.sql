CREATE VIEW vw_ExamResults AS
SELECT 
    s.FirstName,
    s.LastName,
    c.CourseName,
    e.ExamType,
    m.MarksObtained
FROM Students s
JOIN Marks m ON s.StudentID = m.StudentID
JOIN Exams e ON m.ExamID = e.ExamID
JOIN Courses c ON e.CourseID = c.CourseID;
GO
SELECT * FROM vw_ExamResults;

SELECT FirstName, LastName, CourseName, MarksObtained
FROM vw_ExamResults
WHERE MarksObtained > 80;


SELECT FirstName, LastName, CourseName, ExamType, MarksObtained
FROM vw_ExamResults v1
WHERE MarksObtained = (
    SELECT MAX(MarksObtained)
    FROM vw_ExamResults v2
    WHERE v1.ExamType = v2.ExamType
);

SELECT FirstName, LastName, CourseName, ExamType, MarksObtained
FROM vw_ExamResults
WHERE MarksObtained < 40;