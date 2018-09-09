-- Say that there are around two million rows in the Student table
-- and four million rows in the Grades table.

CREATE TEMP TABLE Student (
    ID INT PRIMARY KEY,
    Name TEXT
);

CREATE TEMP TABLE Grades (
    ID INT PRIMARY KEY,
    StudentName TEXT,
    SubjectName TEXT,
    Grade INT
);

-- .... Data is inserted here, in a random order but with a
-- surjective relationship between Student and Grades.

-- Question: Why does this run really slowly?
SELECT Name, SubjectName, Grade
FROM Student
JOIN Grades ON Student.Name = Grades.StudentName
ORDER BY Name, SubjectName, Grade
DESC;
