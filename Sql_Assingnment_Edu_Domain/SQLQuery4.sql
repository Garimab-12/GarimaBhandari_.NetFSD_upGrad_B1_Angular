USE SchoolDB;

INSERT INTO Dept VALUES
(1,'Computer Science','Block A'),
(2,'Mechanical','Block B'),
(3,'Electrical','Block C'),
(4,'Civil','Block D'),
(5,'Electronics','Block E');

INSERT INTO Teachers VALUES
(1,'Amit Sharma','amit@school.com',1,'2019-06-10',35000),
(2,'Neha Verma','neha@school.com',2,'2018-03-12',42000),
(3,'Rohit Gupta','rohit@school.com',3,'2020-01-15',38000),
(4,'Priya Singh','priya@school.com',1,'2017-09-20',45000),
(5,'Karan Mehta','karan@school.com',4,'2021-07-18',30000),
(6,'Anita Kapoor','anita@school.com',5,'2016-05-11',47000),
(7,'Suresh Yadav','suresh@school.com',2,'2019-02-22',34000),
(8,'Pooja Nair','pooja@school.com',3,'2018-12-09',36000),
(9,'Vikas Jain','vikas@school.com',4,'2020-08-14',33000),
(10,'Rahul Das','rahul@school.com',5,'2021-04-01',31000);

INSERT INTO Students VALUES
(1,'Aarav','Sharma','2003-01-12','M',1,'2022-07-01'),
(2,'Ananya','Verma','2002-04-22','F',2,'2022-07-01'),
(3,'Riya','Singh','2003-02-15','F',1,'2022-07-01'),
(4,'Kabir','Gupta','2002-06-18','M',3,'2022-07-01'),
(5,'Ishita','Mehta','2003-03-10','F',4,'2022-07-01'),
(6,'Arjun','Yadav','2002-12-01','M',5,'2022-07-01'),
(7,'Diya','Kapoor','2003-05-09','F',2,'2022-07-01'),
(8,'Rohan','Jain','2002-08-17','M',3,'2022-07-01'),
(9,'Sneha','Nair','2003-09-21','F',1,'2022-07-01'),
(10,'Aditya','Das','2002-11-11','M',4,'2022-07-01'),
(11,'Kriti','Shah','2003-07-14','F',5,'2022-07-01'),
(12,'Manav','Patel','2002-10-02','M',1,'2022-07-01'),
(13,'Pooja','Agarwal','2003-06-25','F',2,'2022-07-01'),
(14,'Raj','Malhotra','2002-03-30','M',3,'2022-07-01'),
(15,'Simran','Kaur','2003-12-12','F',4,'2022-07-01'),
(16,'Yash','Bansal','2002-09-19','M',5,'2022-07-01'),
(17,'Nisha','Joshi','2003-01-05','F',1,'2022-07-01'),
(18,'Dev','Reddy','2002-04-28','M',2,'2022-07-01'),
(19,'Tanvi','Iyer','2003-08-08','F',3,'2022-07-01'),
(20,'Kunal','Saxena','2002-02-16','M',4,'2022-07-01');

INSERT INTO Courses VALUES
(1,'Database Systems',4,1,1),
(2,'Thermodynamics',3,2,2),
(3,'Circuit Theory',4,3,3),
(4,'Structural Engineering',3,4,5),
(5,'Digital Electronics',4,5,6),
(6,'Operating Systems',4,1,4),
(7,'Fluid Mechanics',3,2,7),
(8,'Power Systems',4,3,8),
(9,'Surveying',3,4,9),
(10,'Microprocessors',4,5,10);

INSERT INTO Enrollments VALUES
(1,1,1,GETDATE()),
(2,2,2,GETDATE()),
(3,3,1,GETDATE()),
(4,4,3,GETDATE()),
(5,5,4,GETDATE()),
(6,6,5,GETDATE()),
(7,7,2,GETDATE()),
(8,8,3,GETDATE()),
(9,9,1,GETDATE()),
(10,10,4,GETDATE()),
(11,11,5,GETDATE()),
(12,12,1,GETDATE()),
(13,13,2,GETDATE()),
(14,14,3,GETDATE()),
(15,15,4,GETDATE()),
(16,16,5,GETDATE()),
(17,17,1,GETDATE()),
(18,18,2,GETDATE()),
(19,19,3,GETDATE()),
(20,20,4,GETDATE()),
(21,1,6,GETDATE()),
(22,2,7,GETDATE()),
(23,3,8,GETDATE()),
(24,4,9,GETDATE()),
(25,5,10,GETDATE()),
(26,6,6,GETDATE()),
(27,7,7,GETDATE()),
(28,8,8,GETDATE()),
(29,9,9,GETDATE()),
(30,10,10,GETDATE());

INSERT INTO Exams VALUES
(1,1,'2024-11-01','Midterm'),
(2,2,'2024-11-02','Midterm'),
(3,3,'2024-11-03','Midterm'),
(4,4,'2024-11-04','Midterm'),
(5,5,'2024-11-05','Midterm');

INSERT INTO Marks VALUES
(1,1,1,85),(2,2,2,78),(3,3,1,92),(4,4,3,74),(5,5,4,81),
(6,6,5,69),(7,7,2,88),(8,8,3,76),(9,9,1,90),(10,10,4,72),
(11,11,5,67),(12,12,1,83),(13,13,2,79),(14,14,3,91),(15,15,4,75),
(16,16,5,68),(17,17,1,84),(18,18,2,77),(19,19,3,89),(20,20,4,73),
(21,1,1,86),(22,2,2,80),(23,3,1,93),(24,4,3,70),(25,5,4,82),
(26,6,5,65),(27,7,2,87),(28,8,3,78),(29,9,1,88),(30,10,4,74);
SELECT * FROM Dept;
SELECT * FROM Teachers;
SELECT * FROM Students;
SELECT * FROM Courses;
SELECT * FROM Enrollments;
SELECT * FROM Exams;
SELECT * FROM Marks;