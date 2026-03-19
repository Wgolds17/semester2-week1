-- For each student, calculate the total number of credits from courses they passed. Assume a passing grade is 40 or higher.
-- Expected Columns:
-- StudentId, FirstName, LastName, TotalCreditsPassed

SELECT 
    student.StudentId,
    student.FirstName,
    student.LastName,
    COALESCE(SUM(CASE 
        WHEN enrolment.Grade >= 40 THEN course.Credits 
        ELSE 0 
    END), 0) AS TotalCreditsPassed FROM student
INNER JOIN enrolment ON student.StudentId = enrolment.StudentId
INNER JOIN course ON enrolment.CourseId = course.CourseId
WHERE enrolment.Grade >= 40
GROUP BY student.StudentId;