/* =========================================================
   STUDENT ATTENDANCE MANAGEMENT SYSTEM
   DBMS PROJECT
   Platform: MySQL
   ========================================================= */


/* =========================================================
   1. CREATE DATABASE
   ========================================================= */

CREATE DATABASE StudentAttendanceSystem;

USE StudentAttendanceSystem;


/* =========================================================
   2. CREATE STUDENTS TABLE
   ========================================================= */

CREATE TABLE Students
(
    UID_NO VARCHAR(20) PRIMARY KEY,
    STUDENT_NAME VARCHAR(100) NOT NULL,
    DEPARTMENT VARCHAR(50) NOT NULL
);


/* =========================================================
   3. CREATE SUBJECTS TABLE
   ========================================================= */

CREATE TABLE Subjects
(
    SUBJECT_ID INT PRIMARY KEY AUTO_INCREMENT,
    SUBJECT_CODE VARCHAR(20) UNIQUE NOT NULL,
    SUBJECT_NAME VARCHAR(100) NOT NULL
);


/* =========================================================
   4. CREATE ATTENDANCE TABLE
   ========================================================= */

CREATE TABLE Attendance
(
    ATTENDANCE_ID INT PRIMARY KEY AUTO_INCREMENT,
    UID_NO VARCHAR(20) NOT NULL,
    SUBJECT_ID INT NOT NULL,
    ATTENDANCE_DATE DATE NOT NULL,
    STATUS ENUM('Present', 'Absent') NOT NULL,

    FOREIGN KEY (UID_NO)
        REFERENCES Students(UID_NO),

    FOREIGN KEY (SUBJECT_ID)
        REFERENCES Subjects(SUBJECT_ID),

    UNIQUE (UID_NO, SUBJECT_ID, ATTENDANCE_DATE)
);


/* =========================================================
   5. INSERT DATA INTO STUDENTS TABLE
   ========================================================= */

INSERT INTO Students
(UID_NO, STUDENT_NAME, DEPARTMENT)
VALUES
('UID 001', 'Rahul Sharma', 'CSE'),
('UID 002', 'Aman Verma', 'CSE'),
('UID 003', 'Priya Singh', 'AI'),
('UID 004', 'Neha Gupta', 'CSE'),
('UID 005', 'Arjun Kumar', 'IT'),
('UID 006', 'Priyam Prabhakar', 'CSE'),
('UID 007', 'Avinash Kumar', 'AI'),
('UID 008', 'Shubham Yadav', 'IT'),
('UID 009', 'Aditya Anand', 'CSE'),
('UID 010', 'Rohit Singh', 'AI'),
('UID 011', 'Karan Mehta', 'CSE'),
('UID 012', 'Ananya Gupta', 'IT'),
('UID 013', 'Vishal Kumar', 'AI'),
('UID 014', 'Sneha Sharma', 'CSE'),
('UID 015', 'Ayush Verma', 'IT');


/* =========================================================
   6. INSERT DATA INTO SUBJECTS TABLE
   ========================================================= */

INSERT INTO Subjects
(SUBJECT_CODE, SUBJECT_NAME)
VALUES
('CS301', 'Database Management System'),
('CS302', 'Data Structures'),
('CS303', 'Java Programming'),
('CS304', 'Computer Networks'),
('CS305', 'Operating System');


/* =========================================================
   7. ATTENDANCE - DAY 1
   DBMS
   ========================================================= */

INSERT INTO Attendance
(UID_NO, SUBJECT_ID, ATTENDANCE_DATE, STATUS)
VALUES
('UID 001', 1, '2026-09-08', 'Present'),
('UID 002', 1, '2026-09-08', 'Present'),
('UID 003', 1, '2026-09-08', 'Absent'),
('UID 004', 1, '2026-09-08', 'Present'),
('UID 005', 1, '2026-09-08', 'Present'),
('UID 006', 1, '2026-09-08', 'Absent'),
('UID 007', 1, '2026-09-08', 'Present'),
('UID 008', 1, '2026-09-08', 'Present'),
('UID 009', 1, '2026-09-08', 'Present'),
('UID 010', 1, '2026-09-08', 'Absent'),
('UID 011', 1, '2026-09-08', 'Present'),
('UID 012', 1, '2026-09-08', 'Present'),
('UID 013', 1, '2026-09-08', 'Present'),
('UID 014', 1, '2026-09-08', 'Absent'),
('UID 015', 1, '2026-09-08', 'Present');


/* =========================================================
   8. ATTENDANCE - DAY 2
   DBMS
   ========================================================= */

INSERT INTO Attendance
(UID_NO, SUBJECT_ID, ATTENDANCE_DATE, STATUS)
VALUES
('UID 001', 1, '2026-09-09', 'Present'),
('UID 002', 1, '2026-09-09', 'Absent'),
('UID 003', 1, '2026-09-09', 'Present'),
('UID 004', 1, '2026-09-09', 'Present'),
('UID 005', 1, '2026-09-09', 'Absent'),
('UID 006', 1, '2026-09-09', 'Present'),
('UID 007', 1, '2026-09-09', 'Present'),
('UID 008', 1, '2026-09-09', 'Absent'),
('UID 009', 1, '2026-09-09', 'Present'),
('UID 010', 1, '2026-09-09', 'Present'),
('UID 011', 1, '2026-09-09', 'Present'),
('UID 012', 1, '2026-09-09', 'Absent'),
('UID 013', 1, '2026-09-09', 'Present'),
('UID 014', 1, '2026-09-09', 'Present'),
('UID 015', 1, '2026-09-09', 'Absent');


/* =========================================================
   9. ATTENDANCE - DAY 3
   DBMS
   ========================================================= */

INSERT INTO Attendance
(UID_NO, SUBJECT_ID, ATTENDANCE_DATE, STATUS)
VALUES
('UID 001', 1, '2026-09-10', 'Present'),
('UID 002', 1, '2026-09-10', 'Present'),
('UID 003', 1, '2026-09-10', 'Present'),
('UID 004', 1, '2026-09-10', 'Absent'),
('UID 005', 1, '2026-09-10', 'Present'),
('UID 006', 1, '2026-09-10', 'Present'),
('UID 007', 1, '2026-09-10', 'Absent'),
('UID 008', 1, '2026-09-10', 'Present'),
('UID 009', 1, '2026-09-10', 'Absent'),
('UID 010', 1, '2026-09-10', 'Present'),
('UID 011', 1, '2026-09-10', 'Present'),
('UID 012', 1, '2026-09-10', 'Present'),
('UID 013', 1, '2026-09-10', 'Absent'),
('UID 014', 1, '2026-09-10', 'Present'),
('UID 015', 1, '2026-09-10', 'Present');


/* =========================================================
   10. ATTENDANCE - DAY 4
   DBMS
   ========================================================= */

INSERT INTO Attendance
(UID_NO, SUBJECT_ID, ATTENDANCE_DATE, STATUS)
VALUES
('UID 001', 1, '2026-09-11', 'Absent'),
('UID 002', 1, '2026-09-11', 'Present'),
('UID 003', 1, '2026-09-11', 'Present'),
('UID 004', 1, '2026-09-11', 'Present'),
('UID 005', 1, '2026-09-11', 'Present'),
('UID 006', 1, '2026-09-11', 'Present'),
('UID 007', 1, '2026-09-11', 'Present'),
('UID 008', 1, '2026-09-11', 'Present'),
('UID 009', 1, '2026-09-11', 'Present'),
('UID 010', 1, '2026-09-11', 'Absent'),
('UID 011', 1, '2026-09-11', 'Present'),
('UID 012', 1, '2026-09-11', 'Present'),
('UID 013', 1, '2026-09-11', 'Present'),
('UID 014', 1, '2026-09-11', 'Present'),
('UID 015', 1, '2026-09-11', 'Present');


/* =========================================================
   11. ATTENDANCE - DAY 5
   DBMS
   ========================================================= */

INSERT INTO Attendance
(UID_NO, SUBJECT_ID, ATTENDANCE_DATE, STATUS)
VALUES
('UID 001', 1, '2026-09-12', 'Present'),
('UID 002', 1, '2026-09-12', 'Present'),
('UID 003', 1, '2026-09-12', 'Absent'),
('UID 004', 1, '2026-09-12', 'Present'),
('UID 005', 1, '2026-09-12', 'Absent'),
('UID 006', 1, '2026-09-12', 'Present'),
('UID 007', 1, '2026-09-12', 'Present'),
('UID 008', 1, '2026-09-12', 'Absent'),
('UID 009', 1, '2026-09-12', 'Present'),
('UID 010', 1, '2026-09-12', 'Present'),
('UID 011', 1, '2026-09-12', 'Absent'),
('UID 012', 1, '2026-09-12', 'Present'),
('UID 013', 1, '2026-09-12', 'Present'),
('UID 014', 1, '2026-09-12', 'Absent'),
('UID 015', 1, '2026-09-12', 'Present');


/* =========================================================
   12. ATTENDANCE FOR DATA STRUCTURES
   ========================================================= */

INSERT INTO Attendance
(UID_NO, SUBJECT_ID, ATTENDANCE_DATE, STATUS)
VALUES
('UID 001', 2, '2026-09-08', 'Present'),
('UID 002', 2, '2026-09-08', 'Present'),
('UID 003', 2, '2026-09-08', 'Present'),
('UID 004', 2, '2026-09-08', 'Absent'),
('UID 005', 2, '2026-09-08', 'Present'),
('UID 006', 2, '2026-09-08', 'Present'),
('UID 007', 2, '2026-09-08', 'Present'),
('UID 008', 2, '2026-09-08', 'Absent'),
('UID 009', 2, '2026-09-08', 'Present'),
('UID 010', 2, '2026-09-08', 'Present');


/* =========================================================
   13. ATTENDANCE FOR JAVA PROGRAMMING
   ========================================================= */

INSERT INTO Attendance
(UID_NO, SUBJECT_ID, ATTENDANCE_DATE, STATUS)
VALUES
('UID 001', 3, '2026-09-09', 'Present'),
('UID 002', 3, '2026-09-09', 'Absent'),
('UID 003', 3, '2026-09-09', 'Present'),
('UID 004', 3, '2026-09-09', 'Present'),
('UID 005', 3, '2026-09-09', 'Present'),
('UID 006', 3, '2026-09-09', 'Absent'),
('UID 007', 3, '2026-09-09', 'Present'),
('UID 008', 3, '2026-09-09', 'Present'),
('UID 009', 3, '2026-09-09', 'Absent'),
('UID 010', 3, '2026-09-09', 'Present');


/* =========================================================
   14. DISPLAY ALL TABLES
   ========================================================= */

SELECT * FROM Students;

SELECT * FROM Subjects;

SELECT * FROM Attendance;


/* =========================================================
   15. BASIC SELECT QUERIES
   ========================================================= */

-- Display student names and departments

SELECT STUDENT_NAME, DEPARTMENT
FROM Students;


-- Display students from CSE

SELECT *
FROM Students
WHERE DEPARTMENT = 'CSE';


-- Display students from AI and IT

SELECT UID_NO, STUDENT_NAME, DEPARTMENT
FROM Students
WHERE DEPARTMENT IN ('AI', 'IT');


-- Display all subjects

SELECT SUBJECT_CODE, SUBJECT_NAME
FROM Subjects;


/* =========================================================
   16. ORDER BY
   ========================================================= */

-- Arrange students alphabetically

SELECT *
FROM Students
ORDER BY STUDENT_NAME ASC;


-- Arrange students according to UID

SELECT *
FROM Students
ORDER BY UID_NO DESC;


/* =========================================================
   17. AGGREGATE FUNCTIONS
   ========================================================= */

-- Total number of students

SELECT COUNT(*) AS TOTAL_STUDENTS
FROM Students;


-- Total number of subjects

SELECT COUNT(*) AS TOTAL_SUBJECTS
FROM Subjects;


-- Total attendance records

SELECT COUNT(*) AS TOTAL_ATTENDANCE_RECORDS
FROM Attendance;


-- Total present records

SELECT COUNT(*) AS TOTAL_PRESENT
FROM Attendance
WHERE STATUS = 'Present';


-- Total absent records

SELECT COUNT(*) AS TOTAL_ABSENT
FROM Attendance
WHERE STATUS = 'Absent';


/* =========================================================
   18. GROUP BY
   ========================================================= */

-- Number of students in each department

SELECT
    DEPARTMENT,
    COUNT(*) AS STUDENT_COUNT
FROM Students
GROUP BY DEPARTMENT;


-- Number of Present and Absent records

SELECT
    STATUS,
    COUNT(*) AS TOTAL
FROM Attendance
GROUP BY STATUS;


-- Attendance records for each subject

SELECT
    SUBJECT_ID,
    COUNT(*) AS TOTAL_RECORDS
FROM Attendance
GROUP BY SUBJECT_ID;


/* =========================================================
   19. INNER JOIN
   ========================================================= */

-- Student attendance details

SELECT
    S.UID_NO,
    S.STUDENT_NAME,
    S.DEPARTMENT,
    A.ATTENDANCE_DATE,
    A.STATUS
FROM Students S
INNER JOIN Attendance A
ON S.UID_NO = A.UID_NO;


-- Student, subject and attendance details

SELECT
    S.UID_NO,
    S.STUDENT_NAME,
    S.DEPARTMENT,
    SUB.SUBJECT_NAME,
    A.ATTENDANCE_DATE,
    A.STATUS
FROM Attendance A
INNER JOIN Students S
ON A.UID_NO = S.UID_NO
INNER JOIN Subjects SUB
ON A.SUBJECT_ID = SUB.SUBJECT_ID;


/* =========================================================
   20. LEFT JOIN
   ========================================================= */

SELECT
    S.UID_NO,
    S.STUDENT_NAME,
    S.DEPARTMENT,
    A.ATTENDANCE_DATE,
    A.STATUS
FROM Students S
LEFT JOIN Attendance A
ON S.UID_NO = A.UID_NO;


/* =========================================================
   21. DISTINCT
   ========================================================= */

-- Display different departments

SELECT DISTINCT DEPARTMENT
FROM Students;


-- Display subjects for which attendance exists

SELECT DISTINCT SUBJECT_ID
FROM Attendance;


/* =========================================================
   22. LIKE OPERATOR
   ========================================================= */

-- Students whose name starts with A

SELECT *
FROM Students
WHERE STUDENT_NAME LIKE 'A%';


-- Students whose name contains Kumar

SELECT *
FROM Students
WHERE STUDENT_NAME LIKE '%Kumar%';


-- Students whose name ends with Sharma

SELECT *
FROM Students
WHERE STUDENT_NAME LIKE '%Sharma';


/* =========================================================
   23. BETWEEN
   ========================================================= */

-- Attendance between two dates

SELECT *
FROM Attendance
WHERE ATTENDANCE_DATE
BETWEEN '2026-09-08' AND '2026-09-10';


/* =========================================================
   24. IN OPERATOR
   ========================================================= */

SELECT *
FROM Students
WHERE DEPARTMENT IN ('CSE', 'AI');


/* =========================================================
   25. CASE STATEMENT
   ========================================================= */

SELECT
    UID_NO,
    ATTENDANCE_DATE,
    CASE
        WHEN STATUS = 'Present'
            THEN 'Student Attended'
        WHEN STATUS = 'Absent'
            THEN 'Student Was Absent'
    END AS ATTENDANCE_REMARK
FROM Attendance;


/* =========================================================
   26. ATTENDANCE PERCENTAGE
   ========================================================= */

SELECT
    S.UID_NO,
    S.STUDENT_NAME,
    S.DEPARTMENT,
    COUNT(A.ATTENDANCE_ID) AS TOTAL_CLASSES,
    SUM(A.STATUS = 'Present') AS PRESENT_CLASSES,
    SUM(A.STATUS = 'Absent') AS ABSENT_CLASSES,
    ROUND(
        SUM(A.STATUS = 'Present') * 100.0 /
        COUNT(A.ATTENDANCE_ID),
        2
    ) AS ATTENDANCE_PERCENTAGE
FROM Students S
INNER JOIN Attendance A
ON S.UID_NO = A.UID_NO
GROUP BY
    S.UID_NO,
    S.STUDENT_NAME,
    S.DEPARTMENT;


/* =========================================================
   27. STUDENTS WITH GOOD ATTENDANCE
   ========================================================= */

SELECT
    S.UID_NO,
    S.STUDENT_NAME,
    ROUND(
        SUM(A.STATUS = 'Present') * 100.0 /
        COUNT(A.ATTENDANCE_ID),
        2
    ) AS ATTENDANCE_PERCENTAGE
FROM Students S
INNER JOIN Attendance A
ON S.UID_NO = A.UID_NO
GROUP BY
    S.UID_NO,
    S.STUDENT_NAME
HAVING ATTENDANCE_PERCENTAGE >= 80;


/* =========================================================
   28. STUDENTS WITH LOW ATTENDANCE
   ========================================================= */

SELECT
    S.UID_NO,
    S.STUDENT_NAME,
    S.DEPARTMENT,
    ROUND(
        SUM(A.STATUS = 'Present') * 100.0 /
        COUNT(A.ATTENDANCE_ID),
        2
    ) AS ATTENDANCE_PERCENTAGE
FROM Students S
INNER JOIN Attendance A
ON S.UID_NO = A.UID_NO
GROUP BY
    S.UID_NO,
    S.STUDENT_NAME,
    S.DEPARTMENT
HAVING ATTENDANCE_PERCENTAGE < 75;


/* =========================================================
   29. SUBQUERY
   Students having more absences than average
   ========================================================= */

SELECT
    S.UID_NO,
    S.STUDENT_NAME,
    COUNT(A.ATTENDANCE_ID) AS ABSENT_COUNT
FROM Students S
INNER JOIN Attendance A
ON S.UID_NO = A.UID_NO
WHERE A.STATUS = 'Absent'
GROUP BY
    S.UID_NO,
    S.STUDENT_NAME
HAVING COUNT(A.ATTENDANCE_ID) >
(
    SELECT AVG(ABSENCE_COUNT)
    FROM
    (
        SELECT COUNT(*) AS ABSENCE_COUNT
        FROM Attendance
        WHERE STATUS = 'Absent'
        GROUP BY UID_NO
    ) AS TEMP
);


/* =========================================================
   30. MOST ATTENDED STUDENT
   ========================================================= */

SELECT
    S.UID_NO,
    S.STUDENT_NAME,
    COUNT(A.ATTENDANCE_ID) AS PRESENT_DAYS
FROM Students S
INNER JOIN Attendance A
ON S.UID_NO = A.UID_NO
WHERE A.STATUS = 'Present'
GROUP BY
    S.UID_NO,
    S.STUDENT_NAME
ORDER BY PRESENT_DAYS DESC
LIMIT 1;


/* =========================================================
   31. MOST ABSENT STUDENT
   ========================================================= */

SELECT
    S.UID_NO,
    S.STUDENT_NAME,
    COUNT(A.ATTENDANCE_ID) AS ABSENT_DAYS
FROM Students S
INNER JOIN Attendance A
ON S.UID_NO = A.UID_NO
WHERE A.STATUS = 'Absent'
GROUP BY
    S.UID_NO,
    S.STUDENT_NAME
ORDER BY ABSENT_DAYS DESC
LIMIT 1;


/* =========================================================
   32. UPDATE STUDENT
   ========================================================= */

UPDATE Students
SET DEPARTMENT = 'AI'
WHERE UID_NO = 'UID 015';

SELECT *
FROM Students
WHERE UID_NO = 'UID 015';


/* =========================================================
   33. UPDATE ATTENDANCE
   ========================================================= */

UPDATE Attendance
SET STATUS = 'Present'
WHERE UID_NO = 'UID 006'
AND SUBJECT_ID = 1
AND ATTENDANCE_DATE = '2026-09-08';


/* =========================================================
   34. DELETE ATTENDANCE
   ========================================================= */

DELETE FROM Attendance
WHERE UID_NO = 'UID 015'
AND SUBJECT_ID = 1
AND ATTENDANCE_DATE = '2026-09-12';


/* =========================================================
   35. CREATE ATTENDANCE VIEW
   ========================================================= */

CREATE VIEW StudentAttendanceDetails AS
SELECT
    S.UID_NO,
    S.STUDENT_NAME,
    S.DEPARTMENT,
    SUB.SUBJECT_NAME,
    A.ATTENDANCE_DATE,
    A.STATUS
FROM Attendance A
INNER JOIN Students S
ON A.UID_NO = S.UID_NO
INNER JOIN Subjects SUB
ON A.SUBJECT_ID = SUB.SUBJECT_ID;


/* Display View */

SELECT *
FROM StudentAttendanceDetails;


/* =========================================================
   36. CREATE ATTENDANCE SUMMARY VIEW
   ========================================================= */

CREATE VIEW AttendanceSummary AS
SELECT
    S.UID_NO,
    S.STUDENT_NAME,
    S.DEPARTMENT,
    COUNT(A.ATTENDANCE_ID) AS TOTAL_CLASSES,
    SUM(A.STATUS = 'Present') AS PRESENT_CLASSES,
    SUM(A.STATUS = 'Absent') AS ABSENT_CLASSES,
    ROUND(
        SUM(A.STATUS = 'Present') * 100.0 /
        COUNT(A.ATTENDANCE_ID),
        2
    ) AS ATTENDANCE_PERCENTAGE
FROM Students S
INNER JOIN Attendance A
ON S.UID_NO = A.UID_NO
GROUP BY
    S.UID_NO,
    S.STUDENT_NAME,
    S.DEPARTMENT;


/* Display Summary */

SELECT *
FROM AttendanceSummary;


/* =========================================================
   37. STORED PROCEDURE - STUDENT DETAILS
   ========================================================= */

DELIMITER //

CREATE PROCEDURE GetStudentDetails(IN StudentUID VARCHAR(20))
BEGIN
    SELECT
        UID_NO,
        STUDENT_NAME,
        DEPARTMENT
    FROM Students
    WHERE UID_NO = StudentUID;
END //

DELIMITER ;


/* Execute Procedure */

CALL GetStudentDetails('UID 006');


/* =========================================================
   38. STORED PROCEDURE - ATTENDANCE DETAILS
   ========================================================= */

DELIMITER //

CREATE PROCEDURE GetStudentAttendance(IN StudentUID VARCHAR(20))
BEGIN
    SELECT
        S.UID_NO,
        S.STUDENT_NAME,
        S.DEPARTMENT,
        SUB.SUBJECT_NAME,
        A.ATTENDANCE_DATE,
        A.STATUS
    FROM Attendance A
    INNER JOIN Students S
        ON A.UID_NO = S.UID_NO
    INNER JOIN Subjects SUB
        ON A.SUBJECT_ID = SUB.SUBJECT_ID
    WHERE A.UID_NO = StudentUID
    ORDER BY A.ATTENDANCE_DATE;
END //

DELIMITER ;


/* Execute Procedure */

CALL GetStudentAttendance('UID 006');


/* =========================================================
   39. FINAL REPORT
   ========================================================= */

-- Total Students

SELECT COUNT(*) AS TOTAL_STUDENTS
FROM Students;


-- Total Subjects

SELECT COUNT(*) AS TOTAL_SUBJECTS
FROM Subjects;


-- Total Attendance Entries

SELECT COUNT(*) AS TOTAL_ATTENDANCE_ENTRIES
FROM Attendance;


-- Total Present

SELECT COUNT(*) AS TOTAL_PRESENT
FROM Attendance
WHERE STATUS = 'Present';


-- Total Absent

SELECT COUNT(*) AS TOTAL_ABSENT
FROM Attendance
WHERE STATUS = 'Absent';


-- Overall Attendance Percentage

SELECT
    ROUND(
        SUM(STATUS = 'Present') * 100.0 /
        COUNT(*),
        2
    ) AS OVERALL_ATTENDANCE_PERCENTAGE
FROM Attendance;


-- Department-wise Attendance

SELECT
    S.DEPARTMENT,
    COUNT(A.ATTENDANCE_ID) AS TOTAL_CLASSES,
    SUM(A.STATUS = 'Present') AS PRESENT_COUNT,
    ROUND(
        SUM(A.STATUS = 'Present') * 100.0 /
        COUNT(A.ATTENDANCE_ID),
        2
    ) AS ATTENDANCE_PERCENTAGE
FROM Students S
INNER JOIN Attendance A
ON S.UID_NO = A.UID_NO
GROUP BY S.DEPARTMENT;


-- Subject-wise Attendance

SELECT
    SUB.SUBJECT_NAME,
    COUNT(A.ATTENDANCE_ID) AS TOTAL_CLASSES,
    SUM(A.STATUS = 'Present') AS PRESENT_COUNT,
    SUM(A.STATUS = 'Absent') AS ABSENT_COUNT
FROM Subjects SUB
INNER JOIN Attendance A
ON SUB.SUBJECT_ID = A.SUBJECT_ID
GROUP BY
    SUB.SUBJECT_ID,
    SUB.SUBJECT_NAME;


/* =========================================================
   PROJECT COMPLETED
   ========================================================= */