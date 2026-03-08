USE SchoolDB;

SELECT DepartmentID, COUNT(StudentID) AS TotalStudents
FROM Students
GROUP BY DepartmentID;

SELECT ExamID, AVG(MarksObtained) AS AverageMarks
FROM Marks
GROUP BY ExamID;

SELECT CourseID, COUNT(StudentID) AS TotalStudents
FROM Enrollments
GROUP BY CourseID;

SELECT ExamID, MAX(MarksObtained) AS MaxMarks
FROM Marks
GROUP BY ExamID;

SELECT e.CourseID, MIN(m.MarksObtained) AS MinMarks
FROM Marks m
JOIN Exams e ON m.ExamID = e.ExamID
GROUP BY e.CourseID;

SELECT DepartmentID, COUNT(StudentID) AS TotalStudents
FROM Students
GROUP BY DepartmentID
HAVING COUNT(StudentID) > 5;