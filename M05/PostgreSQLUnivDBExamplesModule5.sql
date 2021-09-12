PostgreSQL Examples in Module 5

Lesson 1

1.
 SELECT Offering.OfferNo, 
        COUNT(*) AS NumStudents 
  FROM Enrollment, Offering  
  WHERE Offering.OfferNo = Enrollment.OfferNo 
    AND OffYear = 2017
  GROUP BY Offering.OfferNo;

-- Equivalent version using the join operator style
 SELECT Offering.OfferNo, 
        COUNT(*) AS NumStudents 
  FROM Enrollment INNER JOIN Offering ON Offering.OfferNo = Enrollment.OfferNo
  WHERE OffYear = 2017
  GROUP BY Offering.OfferNo;


2.
SELECT Enrollment.OfferNo, CourseNo, 
       AVG(StdGPA) AS AvgGPA
 FROM Offering, Enrollment, Student
 WHERE Offering.OfferNo = Enrollment.OfferNo
   AND Student.StdNo = Enrollment.StdNo
   AND OffYear = 2016 AND OffTerm = 'FALL' 
 GROUP BY Enrollment.OfferNo, CourseNo
 HAVING AVG(StdGPA) > 3.0; 

-- Equivalent version using the join operator style
SELECT Enrollment.OfferNo, CourseNo, 
       AVG(StdGPA) AS AvgGPA
 FROM Offering INNER JOIN Enrollment ON Offering.OfferNo = Enrollment.OfferNo 
   INNER JOIN Student ON Student.StdNo = Enrollment.StdNo
 WHERE OffYear = 2016 AND OffTerm = 'FALL' 
 GROUP BY Enrollment.OfferNo, CourseNo
 HAVING AVG(StdGPA) > 3.0;

3. 
-- Equivalent result to example 2 but an extra table (Course)
SELECT Enrollment.OfferNo, Offering.CourseNo, 
       AVG(StdGPA) AS AvgGPA
 FROM Offering, Enrollment, Student, Course
 WHERE Offering.OfferNo = Enrollment.OfferNo
   AND Student.StdNo = Enrollment.StdNo
   AND Course.CourseNo = Offering.CourseNo
   AND OffYear = 2016 AND OffTerm = 'FALL'
 GROUP BY Enrollment.OfferNo, Offering.CourseNo
 HAVING AVG(StdGPA) > 3.0;

-- Equivalent version using the join operator style
SELECT Enrollment.OfferNo, Offering.CourseNo, 
       AVG(StdGPA) AS AvgGPA
 FROM Offering INNER JOIN Enrollment ON Offering.OfferNo = Enrollment.OfferNo 
   INNER JOIN Student ON Student.StdNo = Enrollment.StdNo
   INNER JOIN Course ON Course.CourseNo = Offering.CourseNo
 WHERE OffYear = 2016 AND OffTerm = 'FALL' 
 GROUP BY Enrollment.OfferNo, Offering.CourseNo
 HAVING AVG(StdGPA) > 3.0; 


Lesson 2
1.
SELECT OfferNo, Offering.CourseNo, CrsUnits, OffDays,
       OffLocation, OffTime
 FROM Faculty, Course, Offering 
 WHERE Faculty.FacNo = Offering.FacNo
   AND Offering.CourseNo = Course.CourseNo 
   AND OffYear = 2016 AND OffTerm = 'FALL'  
   AND FacFirstName = 'LEONARD' 
   AND FacLastName = 'VINCE';

-- Equivalent version using the join operator style
SELECT OfferNo, Offering.CourseNo, CrsUnits, OffDays,
       OffLocation, OffTime
 FROM Faculty INNER JOIN Offering
    ON Offering.FacNo = Faculty.FacNo 
   INNER JOIN Course ON Course.CourseNo = Offering.CourseNo
 WHERE OffYear = 2016 AND OffTerm = 'FALL'  
   AND FacFirstName = 'LEONARD' 
   AND FacLastName = 'VINCE';
 
2.
SELECT Offering.OfferNo, Offering.CourseNo, OffDays,
       OffLocation, OffTime, FacFirstName, 
       FacLastName
 FROM Faculty, Offering, Enrollment, Student 
 WHERE Offering.OfferNo = Enrollment.OfferNo
   AND Student.StdNo = Enrollment.StdNo 
   AND Faculty.FacNo = Offering.FacNo 
   AND OffYear = 2017 AND OffTerm = 'SPRING' 
   AND StdFirstName = 'BOB' 
   AND StdLastName = 'NORBERT';

-- Equivalent version using the join operator style
SELECT Offering.OfferNo, Offering.CourseNo, OffDays,
       OffLocation, OffTime, FacFirstName, 
       FacLastName
 FROM Faculty INNER JOIN Offering ON Faculty.FacNo = Offering.FacNo
      INNER JOIN Enrollment ON Offering.OfferNo = Enrollment.OfferNo
      INNER JOIN Student ON Student.StdNo = Enrollment.StdNo
 WHERE OffYear = 2017 AND OffTerm = 'SPRING' 
   AND StdFirstName = 'BOB' 
   AND StdLastName = 'NORBERT';


3.
SELECT Offering.OfferNo, Offering.CourseNo, OffDays,
       OffLocation, OffTime, CrsUnits, FacFirstName,
       FacLastName
 FROM Faculty, Offering, Enrollment, Student, Course
 WHERE Faculty.FacNo = Offering.FacNo 
   AND Offering.OfferNo = Enrollment.OfferNo
   AND Student.StdNo = Enrollment.StdNo
   AND Offering.CourseNo = Course.CourseNo
   AND OffYear = 2017 AND OffTerm = 'SPRING' 
   AND StdFirstName = 'BOB'
   AND StdLastName = 'NORBERT';

-- Equivalent version using the join operator style
SELECT Offering.OfferNo, Offering.CourseNo, OffDays,
       OffLocation, OffTime, CrsUnits, FacFirstName,
       FacLastName
 FROM Faculty INNER JOIN Offering ON Faculty.FacNo = Offering.FacNo
      INNER JOIN Enrollment ON Offering.OfferNo = Enrollment.OfferNo
      INNER JOIN Student ON Student.StdNo = Enrollment.StdNo
      INNER JOIN Course ON Offering.CourseNo = Course.CourseNo
 WHERE OffYear = 2017 AND OffTerm = 'SPRING' 
   AND StdFirstName = 'BOB' 
   AND StdLastName = 'NORBERT';


Lesson 3
1.
SELECT Offering.OfferNo, 
        COUNT(*) AS NumStudents,
        AVG(StdGPA) AS AvgGPA
  FROM Enrollment, Offering, Student  
  WHERE Offering.OfferNo = Enrollment.OfferNo
    AND Student.StdNo = Enrollment.StdNo
    AND OffYear = 2017
  GROUP BY Offering.OfferNo
  HAVING AVG(StdGPA) > 3.3;

-- Equivalent version using the join operator style
SELECT Offering.OfferNo, 
        COUNT(*) AS NumStudents,
        AVG(StdGPA) AS AvgGPA
  FROM Offering INNER JOIN Enrollment ON Offering.OfferNo = Enrollment.OfferNo
       INNER JOIN Student ON Student.StdNo = Enrollment.StdNo  
  WHERE OffYear = 2017
  GROUP BY Offering.OfferNo
  HAVING AVG(StdGPA) > 3.3;


2.
SELECT CourseNo, Enrollment.OfferNo, 
       Count(*) AS NumStudents
 FROM Offering, Enrollment
 WHERE Offering.OfferNo = Enrollment.OfferNo
   AND OffYear = 2017 AND OffTerm = 'SPRING' 
 GROUP BY Enrollment.OfferNo, CourseNo;

-- Equivalent version using the join operator style
SELECT CourseNo, Enrollment.OfferNo, 
       Count(*) AS NumStudents
 FROM Offering INNER JOIN Enrollment ON Offering.OfferNo = Enrollment.OfferNo
 WHERE OffYear = 2017 AND OffTerm = 'SPRING' 
 GROUP BY Enrollment.OfferNo, CourseNo;


3.
SELECT Enrollment.OfferNo, CourseNo, FacFirstName, 
       FacLastName, AVG(StdGPA) AS AvgGPA
 FROM Offering, Enrollment, Student, Faculty
 WHERE Offering.OfferNo = Enrollment.OfferNo
   AND Student.StdNo = Enrollment.StdNo
   AND Faculty.FacNo = Offering.FacNo    
   AND OffYear = 2016 AND OffTerm = 'FALL' 
 GROUP BY Enrollment.OfferNo, CourseNo, 
       FacFirstName, FacLastName
 HAVING AVG(StdGPA) > 3.0;

-- Equivalent version using the join operator style
SELECT Enrollment.OfferNo, CourseNo, FacFirstName, 
       FacLastName, AVG(StdGPA) AS AvgGPA
 FROM Offering INNER JOIN Enrollment ON Offering.OfferNo = Enrollment.OfferNo
      INNER JOIN Student ON Student.StdNo = Enrollment.StdNo
      INNER JOIN Faculty ON Faculty.FacNo = Offering.FacNo
 WHERE OffYear = 2016 AND OffTerm = 'FALL' 
 GROUP BY Enrollment.OfferNo, CourseNo, 
       FacFirstName, FacLastName
 HAVING AVG(StdGPA) > 3.0;

Lesson 4
1.
SELECT FacNo AS PerNo, FacFirstName AS FirstName,
       FacLastName AS LastName, FacCity AS City, 
       FacState AS State 
 FROM Faculty
	UNION
SELECT StdNo AS PerNo, StdFirstName AS FirstName,
       StdLastName AS LastName, StdCity AS City, 
       StdState AS State 
 FROM Student;


2.
-- PostgreSQL supports the INTERSECT keyword

SELECT FacNo AS PerNo, FacFirstName AS 
       FirstName, FacLastName AS LastName, 
       FacCity AS City, FacState AS State
 FROM Faculty
   INTERSECT
SELECT StdNo AS PerNo, StdFirstName AS
       FirstName, StdLastName AS LastName, 
       StdCity AS City, StdState AS State
 FROM Student;


3.
-- PostgreSQL supports the EXCEPT operator
-- Need to use a nested query in MySQL

SELECT FacNo AS PerNo, FacFirstName AS 
       FirstName, FacLastName AS LastName, 
       FacCity AS City, FacState AS State
 FROM Faculty
   EXCEPT
SELECT StdNo AS PerNo, StdFirstName AS
       FirstName, StdLastName AS LastName, 
       StdCity AS City, StdState AS State
 FROM Student;

-- Reverse query blocks to demonstrate that MINUS is not symmetric.

SELECT StdNo AS PerNo, StdFirstName AS
       FirstName, StdLastName AS LastName, 
       StdCity AS City, StdState AS State
 FROM Student
   EXCEPT
 SELECT FacNo AS PerNo, FacFirstName AS 
       FirstName, FacLastName AS LastName, 
       FacCity AS City, FacState AS State
 FROM Faculty;

Lesson 5
1.
INSERT INTO Student 
 (StdNo, StdFirstName, StdLastName, 
  StdCity, StdState, StdZip, StdClass, 
  StdMajor, StdGPA) 
 VALUES ('999999999','JOE','STUDENT','SEATAC',
   'WA','98042-1121','FR','IS', 0.0);

2.

UPDATE Student 
 SET StdMajor = 'ACCT', 
     StdClass = 'SO' 
 WHERE StdFirstName = 'HOMER' 
   AND StdLastName = 'WELLS';

3.

DELETE FROM Student 
 WHERE StdMajor = 'IS' 
   AND StdClass = 'SR';

Lesson 6
1.
-- Statement with a semantic error
SELECT StdFirstName, StdLastName, Enrollment.OfferNo 
 FROM Student, Enrollment, Offering 
 WHERE Student.StdNo = Enrollment.StdNo
   AND OffYear = 2016 AND OffTerm = 'FALL'  
   AND EnrGrade >= 3.7; 

-- Corrected statement
SELECT StdFirstName, StdLastName, Enrollment.OfferNo 
 FROM Student, Enrollment, Offering 
 WHERE Student.StdNo = Enrollment.StdNo
   AND Enrollment.OfferNo = Offering.OfferNo
   AND OffYear = 2016 AND OffTerm = 'FALL'  
   AND EnrGrade >= 3.7; 

2.
-- Statement with a redundancy error
SELECT StdFirstName, StdLastName, Enrollment.OfferNo 
 FROM Student, Enrollment, Offering 
 WHERE Student.StdNo = Enrollment.StdNo
   AND Offering.OfferNo = Enrollment.OfferNo 
   AND OffYear = 2016 AND OffTerm = 'FALL' AND EnrGrade >= 3.7
 GROUP BY StdFirstName, StdLastName, Enrollment.OfferNo; 

-- Corrected statement
SELECT StdFirstName, StdLastName, Enrollment.OfferNo 
 FROM Student, Enrollment, Offering 
 WHERE Student.StdNo = Enrollment.StdNo
   AND Offering.OfferNo = Enrollment.OfferNo 
   AND OffYear = 2016 AND OffTerm = 'FALL'  AND EnrGrade >= 3.7;

3.
-- Statement with a semantic error
SELECT OfferNo, CourseNo, FacNo, OffYear, OffTerm 
 FROM Offering 
 WHERE OffTerm = 'SPRING' OR OffTerm = 'SUMMER'
   AND OffYear = 2016; 

-- Corrected statements
-- Parentheses added
SELECT OfferNo, CourseNo, FacNo, OffYear, OffTerm 
 FROM Offering 
 WHERE ( OffTerm = 'SPRING' OR OffTerm = 'SUMMER' ) 
   AND OffYear = 2016; 

-- OR conditions changed to a comparison using the IN operator
SELECT OfferNo, CourseNo, FacNo, OffYear, OffTerm 
 FROM Offering 
 WHERE OffTerm IN ('SPRING', 'SUMMER') 
   AND OffYear = 2016; 

4.
-- Statement with poor coding practices
SELECT Offering.OfferNo, Offering.CourseNo, OffDays,
       OffLocation, OffTime, CrsUnits, FacFirstName,
    FacLastName FROM Faculty, Offering, Enrollment, Student, Course WHERE Faculty.FacNo = Offering.FacNo AND
Offering.OfferNo
  = Enrollment.OfferNo
  AND Student.StdNo = Enrollment.StdNo
AND Offering.CourseNo = Course.CourseNo
   AND OffYear = '2017' AND OffTerm = 'SPRING' 
 AND StdFirstName LIKE 'BOB' AND StdLastName = 'NORBERT';

-- Revised statement with good coding practices
SELECT Offering.OfferNo, Offering.CourseNo, OffDays,
       OffLocation, OffTime, CrsUnits, FacFirstName,
       FacLastName
 FROM Faculty, Offering, Enrollment, Student, Course
 WHERE Faculty.FacNo = Offering.FacNo 
   AND Offering.OfferNo = Enrollment.OfferNo
   AND Student.StdNo = Enrollment.StdNo
   AND Offering.CourseNo = Course.CourseNo
   AND OffYear = 2017 AND OffTerm = 'SPRING' 
   AND StdFirstName = 'BOB'
   AND StdLastName = 'NORBERT';

Extra problems for lesson 6
-- Examples not shown in lesson 6
-- You should correct the statements as an ungraded exercise.

-- Extra example 1
-- Misspelled keywords
SELECT OfferNo, CourseNo, FacNo 
 FROMM Offering 
 WHERRE OffTerm = 'FALL' AND OffYear = 2016;

-- Extra example 2
-- Unqualified column name
SELECT StdFirstName, StdLastName, OfferNo 
 FROM Student, Enrollment, Offering 
 WHERE Student.StdNo = Enrollment.StdNo
   AND Offering.OfferNo = Enrollment.OfferNo 
   AND OffYear = 2016 AND OffTerm = 'FALL'  
   AND EnrGrade >= 3.7;

-- Extra example 3
-- Missing table
SELECT StdFirstName, StdLastName, Enrollment.OfferNo 
 FROM Student, Offering 
 WHERE Student.StdNo = Enrollment.StdNo
   AND Offering.OfferNo = Enrollment.OfferNo 
   AND OffYear = 2016 AND OffTerm = 'FALL'  
   AND EnrGrade >= 3.7;

-- Extra example 4
-- Row condition in the HAVING clause causes a syntax error
SELECT CourseNo, Enrollment.OfferNo, 
       Avg(StdGPA) AS AvgGPA
 FROM Student, Offering, Enrollment
 WHERE Offering.OfferNo = Enrollment.OfferNo
   AND Enrollment.StdNo = Student.StdNo 
   AND OffTerm = 'FALL' 
 GROUP BY CourseNo, Enrollment.OfferNo 
 HAVING Avg(StdGPA) > 3.0 AND OffYear = 2016

-- Extra example 5
-- Missing column in GROUP BY clause
SELECT CourseNo, Enrollment.OfferNo, 
       Avg(StdGPA) AS AvgGPA
 FROM Student, Offering, Enrollment
 WHERE Offering.OfferNo = Enrollment.OfferNo
   AND Enrollment.StdNo = Student.StdNo 
   AND OffTerm = 'FALL' AND OffYear = 2016
 GROUP BY CourseNo
 HAVING Avg(StdGPA) > 3.0;

-- Extra example 6
-- List the student name and the offering number in 
-- which the grade is greater than 3.7 and the offering is given in fall 2016. 
-- Extra table
SELECT StdFirstName, StdLastName, Enrollment.OfferNo 
 FROM Student, Enrollment, Offering, Course
 WHERE Student.StdNo = Enrollment.StdNo
   AND Offering.OfferNo = Enrollment.OfferNo
   AND Course.CourseNo = Offering.CourseNo
   AND OffYear = 2016 AND OffTerm = 'FALL'  
   AND EnrGrade >= 3.7;

-- Extra example 7
-- List the student name and the offering number in 
-- which the grade is greater than 3.7 and the offering is given in fall 2016. 
-- Missing condition
SELECT StdFirstName, StdLastName, Enrollment.OfferNo 
 FROM Student, Enrollment, Offering 
 WHERE Student.StdNo = Enrollment.StdNo
   AND Offering.OfferNo = Enrollment.OfferNo 
   AND OffTerm = 'FALL'  
   AND EnrGrade >= 3.7;


