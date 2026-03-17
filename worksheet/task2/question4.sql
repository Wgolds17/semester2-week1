-- List all students along with the names of the courses they are enrolled in.
-- Expected Columns:
-- StudentId, FirstName, LastName, CourseName

SELECT DISTINCT student.StudentId, student.FirstName, student.LastName, course.CourseName FROM student
INNER JOIN enrolment ON student.StudentId=enrolment.StudentId
INNER JOIN course ON enrolment.CourseId=course.CourseId;