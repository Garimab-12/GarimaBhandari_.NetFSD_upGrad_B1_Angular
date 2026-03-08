USE SchoolDB;

-- 1. Students from Computer Science department
SELECT * 
FROM Students
WHERE DepartmentID = (
    SELECT DepartmentID FROM Dept 
    WHERE DepartmentName = 'Computer Science'
);

-- 2. Teachers hired after 2022
SELECT * 
FROM Teachers
WHERE HireDate > '2022-01-01';

-- 3. Students whose name starts with 'A'
SELECT * 
FROM Students
WHERE StudentFirstName LIKE 'A%';

-- 4. Courses having credits greater than 3
SELECT * 
FROM Courses
WHERE Credits > 3;

-- 5. Students born between 2005 and 2008
SELECT * 
FROM Students
WHERE DateOfBirth BETWEEN '2005-01-01' AND '2008-12-31';

-- 6. Students not belonging to Mechanical department
SELECT * 
FROM Students
WHERE DepartmentID <> (
    SELECT DepartmentID FROM Dept 
    WHERE DepartmentName = 'Mechanical'
);

-- 7. Teachers whose salary between 40000 and 70000
SELECT * 
FROM Teachers
WHERE Salary BETWEEN 40000 AND 70000;

-- 8. Courses not taught by TeacherID = 3
SELECT * 
FROM Courses
WHERE TeacherID <> 3;