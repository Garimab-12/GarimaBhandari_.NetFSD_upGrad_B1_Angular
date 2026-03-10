CREATE PROCEDURE sp_InsertStudent
    @FirstName VARCHAR(50),
    @LastName VARCHAR(50),
    @Gender VARCHAR(10),
    @DepartmentID INT,
    @AdmissionDate DATE
AS
BEGIN
    INSERT INTO Students (FirstName, LastName, Gender, DepartmentID, AdmissionDate)
    VALUES (@FirstName, @LastName, @Gender, @DepartmentID, @AdmissionDate);
END;
EXEC sp_InsertStudent 
    @FirstName = 'Riya',
    @LastName = 'Mehta',
    @Gender = 'Female',
    @DepartmentID = 1,
    @AdmissionDate = '2025-03-10';

    SELECT * FROM Students;