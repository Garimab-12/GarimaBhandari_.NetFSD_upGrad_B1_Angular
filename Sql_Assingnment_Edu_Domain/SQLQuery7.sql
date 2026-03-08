USE SchoolDB;

SELECT s.StudentID, s.StudentFirstName, d.DepartmentName
FROM Students s
JOIN Dept d ON s.DepartmentID = d.DepartmentID;

SELECT c.CourseID, c.CourseName, t.TeacherName
FROM Courses c
JOIN Teachers t ON c.TeacherID = t.TeacherID;

SELECT s.StudentFirstName, c.CourseName
FROM Students s
JOIN Enrollments e ON s.StudentID = e.StudentID
JOIN Courses c ON e.CourseID = c.CourseID;

SELECT s.StudentFirstName, e.ExamID, m.MarksObtained
FROM Students s
JOIN Marks m ON s.StudentID = m.StudentID
JOIN Exams e ON m.ExamID = e.ExamID;

SELECT c.CourseName, t.TeacherName
FROM Courses c
LEFT JOIN Teachers t ON c.TeacherID = t.TeacherID;

SELECT t.TeacherID, t.TeacherName
FROM Teachers t
LEFT JOIN Courses c ON t.TeacherID = c.TeacherID
WHERE c.CourseID IS NULL;