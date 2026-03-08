USE SchoolDB;

SELECT *
FROM Students
WHERE StudentID IN (
    SELECT StudentID
    FROM Marks
    WHERE MarksObtained > (SELECT AVG(MarksObtained) FROM Marks)
);

SELECT *
FROM Courses
WHERE Credits = (SELECT MAX(Credits) FROM Courses);

SELECT *
FROM Students s
WHERE 2 < (
    SELECT COUNT(*)
    FROM Enrollments e
    WHERE e.StudentID = s.StudentID
);

SELECT *
FROM Teachers
WHERE DepartmentID = (
    SELECT DepartmentID
    FROM Teachers
    WHERE TeacherName = 'John'
);

SELECT *
FROM Marks m
WHERE MarksObtained = (
    SELECT MAX(MarksObtained)
    FROM Marks
    WHERE ExamID = m.ExamID
);

SELECT *
FROM Dept
WHERE DepartmentID = (
    SELECT TOP 1 DepartmentID
    FROM Students
    GROUP BY DepartmentID
    ORDER BY COUNT(*) DESC
);