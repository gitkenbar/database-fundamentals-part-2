-- EX. 5 --

CREATE TABLE StudentGrades (
    StudentId INT,
    Name TEXT,
    Subject TEXT,
    Grade INT);
    
CREATE TABLE Students(
    StudentId INT PRIMARY KEY,
    Name TEXT
);

CREATE TABLE Grades (
    StudentId INT,
    Subject TEXT,
    Grade INT,
    FOREIGN KEY (StudentId) REFERENCES Students(StudentId)
);

INSERT INTO Students(StudentId, Name)
    VALUES (1, 'Kenneth'), (2, 'Amanda'), (3, 'Topacio'), (4, 'Dusty');
INSERT INTO Grades(StudentId, Subject, Grade)
    VALUES
        (1, 'Coding', 86),
        (2, 'Coding', 76),
        (3, 'Coding', 89),
        (4, 'Coding', 66),
        (1, 'Language Arts', 99),
        (2, 'Language Arts', 80),
        (3, 'Language Arts', 75),
        (4, 'Language Arts', 62);

SELECT Name, Subject, Grade FROM Students INNER JOIN Grades ON Students.StudentId = Grades.StudentId;