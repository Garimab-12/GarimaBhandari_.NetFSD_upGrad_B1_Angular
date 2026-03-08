
CREATE DATABASE SchoolDB;
USE SchoolDB;
USE SchoolDB;

CREATE TABLE DepartmentInfo (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL,
    Location VARCHAR(100)
);

CREATE TABLE Teachers (
    TeacherID INT PRIMARY KEY,
    TeacherName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    DepartmentID INT,
    HireDate DATE,
    FOREIGN KEY (DepartmentID) REFERENCES DepartmentInfo(DepartmentID)
);

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Gender VARCHAR(10),
    DepartmentID INT,
    AdmissionDate DATE,
    FOREIGN KEY (DepartmentID) REFERENCES DepartmentInfo(DepartmentID)
);

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    Credits INT,
    DepartmentID INT,
    TeacherID INT,
    FOREIGN KEY (DepartmentID) REFERENCES DepartmentInfo(DepartmentID),
    FOREIGN KEY (TeacherID) REFERENCES Teachers(TeacherID)
);

CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

CREATE TABLE Exams (
    ExamID INT PRIMARY KEY,
    CourseID INT,
    ExamDate DATE,
    ExamType VARCHAR(50),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

CREATE TABLE Marks (
    MarkID INT PRIMARY KEY,
    StudentID INT,
    ExamID INT,
    MarksObtained INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (ExamID) REFERENCES Exams(ExamID)
);