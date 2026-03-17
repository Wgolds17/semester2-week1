-- For each department, calculate the number of enrolments in its courses.
-- Expected Columns:
-- DepartmentName, TotalEnrolments

SELECT DISTINCT department.DepartmentName, COUNT(enrolment.enrolmentId) AS TotalEnrolments
FROM department
INNER JOIN course ON department.DepartmentId=course.DepartmentId
INNER JOIN enrolment ON course.CourseId=enrolment.CourseId
GROUP BY department.DepartmentName;