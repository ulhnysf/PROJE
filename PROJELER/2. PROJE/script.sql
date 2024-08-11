
DROP TABLE IF EXISTS students;

DROP TABLE IF EXISTS courses;

DROP TABLE IF EXISTS enrollments;



CREATE TABLE students (
    student_id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    department TEXT
);


CREATE TABLE courses (
    course_id INTEGER PRIMARY KEY,
    course_name TEXT,
    course_code TEXT
);



CREATE TABLE enrollments (
    student_id INTEGER,
    course_id INTEGER,
    grade REAL,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);



INSERT INTO students (student_id, first_name, last_name, department)
VALUES (1, 'Uluhan', 'Dokay', 'Bilgisayar Mühendisliği'),
       (2, 'Yusuf', 'Kızılok', 'Ucak Mühendisliği'),
       (3, 'Fatma', 'Öztürk', 'Elektronik Mühendisliği');


INSERT INTO courses (course_id, course_name, course_code)
VALUES (1, 'Veri Yapıları', 'CS101'),
       (2, 'Ucus Dinamiği', 'CS102'),
       (3, 'Devre Teorisi', 'CS103');


INSERT INTO enrollments (student_id, course_id, grade)
VALUES (1, 1, 85.5),
       (2, 2, 90.0),
       (3, 3, 78.0);


UPDATE students
SET department = 'Makine Mühendisliği'
WHERE student_id = 2;


DELETE FROM students
WHERE student_id = 3;


INSERT INTO students (student_id, first_name, last_name, department)
VALUES (3, 'Neset', 'Akmandor', 'Elektrik Mühendisliği'),
       (4, 'Turagay', 'Vural', 'Sistem Mühendisi');


INSERT INTO enrollments (student_id, course_id, grade)
VALUES (3, 1, 88.0),
       (4, 1, 89.5);
       
              

SELECT s.first_name, s.last_name, c.course_name, e.grade
FROM enrollments e
JOIN students s ON e.student_id = s.student_id
JOIN courses c ON e.course_id = c.course_id;



SELECT c.course_name, e.grade
FROM enrollments e
JOIN courses c ON e.course_id = c.course_id
WHERE e.student_id = 1;


SELECT * FROM students;

SELECT * FROM courses;

SELECT * FROM enrollments;