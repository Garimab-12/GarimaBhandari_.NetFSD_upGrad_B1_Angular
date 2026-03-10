USE master;
DROP DATABASE IF EXISTS EducationDB;
CREATE DATABASE EducationDB;
USE EducationDB;
CREATE TABLE Departments(
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

CREATE TABLE Students(
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Gender VARCHAR(10),
    DepartmentID INT,
    AdmissionDate DATE
);

CREATE TABLE Courses(
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50)
);

CREATE TABLE Enrollments(
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE
);

CREATE TABLE Exams(
    ExamID INT PRIMARY KEY,
    CourseID INT,
    ExamType VARCHAR(50)
);

CREATE TABLE Marks(
    MarkID INT PRIMARY KEY,
    StudentID INT,
    ExamID INT,
    MarksObtained INT
);
-- Departments
INSERT INTO Departments VALUES
(1,'Computer Science'),
(2,'Mechanical'),
(3,'Electronics');

-- Students
INSERT INTO Students VALUES
(1,'Rahul','Sharma','Male',1,'2023-07-10'),
(2,'Anita','Verma','Female',1,'2024-01-15'),
(3,'Vikas','Singh','Male',2,'2023-06-20'),
(4,'Neha','Gupta','Female',3,'2025-02-10'),
(5,'Aman','Yadav','Male',1,'2024-08-05');

-- Courses
INSERT INTO Courses VALUES
(101,'Database'),
(102,'Java'),
(103,'Python'),
(104,'Web Development');

-- Enrollments
INSERT INTO Enrollments VALUES
(1,1,101,'2024-01-10'),
(2,2,102,'2024-03-12'),
(3,3,103,'2023-11-05'),
(4,4,104,'2025-02-20'),
(5,5,101,'2024-04-18'),
(6,5,103,'2025-01-22');

-- Exams
INSERT INTO Exams VALUES
(1,101,'Midterm'),
(2,101,'Final'),
(3,102,'Midterm'),
(4,103,'Final');

-- Marks
INSERT INTO Marks VALUES
(1,1,1,75),
(2,2,2,85),
(3,3,3,90),
(4,4,4,35),
(5,5,1,88),
(6,5,4,92);