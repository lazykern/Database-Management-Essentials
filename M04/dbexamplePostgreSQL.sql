PostgreSQL Examples in Module 4

Lesson 2

1.
SELECT * FROM Faculty;

2. 
-- Need hyphens in constant
 SELECT *
  FROM Faculty
  WHERE FacNo = '543-21-0987';

3.
 SELECT FacFirstName, FacLastName, FacSalary
  FROM Faculty
  WHERE FacSalary > 65000 AND FacRank = 'PROF';

-- No rows returned due to lower case constant
 SELECT FacFirstName, FacLastName, FacSalary
  FROM Faculty
  WHERE FacSalary > 65000 AND FacRank = 'prof';

4
-- Duplicate rows in the result
 SELECT FacCity, FacState
  FROM Faculty;

-- Duplicate rows eliminated
 SELECT DISTINCT FacCity, FacState
  FROM Faculty;

5.
-- Condition using the EXTRACT function
SELECT FacFirstName, FacLastName, FacCity, 
       FacSalary*1.1 AS IncreasedSalary, 
       FacHireDate 
 FROM Faculty 
 WHERE EXTRACT(YEAR FROM FacHireDate) > 2005;

-- Condition using the DATE_PART sfunction
SELECT FacFirstName, FacLastName, FacCity, 
       FacSalary*1.1 AS IncreasedSalary, 
       FacHireDate 
 FROM Faculty 
 WHERE DATE_PART('YEAR', FacHireDate) > 2005;

6.
 SELECT * 
  FROM Offering 
  WHERE CourseNo LIKE 'IS%';

7.
SELECT FacFirstName, FacLastName, FacHireDate 
 FROM Faculty 
 WHERE FacHireDate BETWEEN '2008-01-01'
   AND '2009-12-31';

8.
 SELECT OfferNo, CourseNo 
  FROM Offering 
  WHERE FacNo IS NULL AND OffTerm = 'SUMMER' 
    AND OffYear = 2017;

9.
 SELECT OfferNo, CourseNo, FacNo 
  FROM Offering 
  WHERE (OffTerm = 'FALL' AND OffYear = 2016) 
     OR (OffTerm = 'WINTER' AND OffYear = 2017);

Lesson 4

1.
SELECT OfferNo, CourseNo, FacFirstName, FacLastName 
 FROM Offering, Faculty 
 WHERE OffTerm = 'FALL' AND OffYear = 2016 
   AND FacRank = 'ASST' AND CourseNo LIKE 'IS%'
   AND Faculty.FacNo = Offering.FacNo;

2.
SELECT OfferNo, CourseNo, FacFirstName, FacLastName  
 FROM Offering INNER JOIN Faculty 
   ON Faculty.FacNo = Offering.FacNo
 WHERE OffTerm = 'FALL' AND OffYear = 2016 
   AND FacRank = 'ASST' AND CourseNo LIKE 'IS%';

3.
SELECT OfferNo, Offering.CourseNo, OffDays,
       CrsUnits, OffLocation, OffTime
 FROM Faculty, Course, Offering 
 WHERE Faculty.FacNo = Offering.FacNo
   AND Offering.CourseNo = Course.CourseNo     
   AND OffYear = 2016 AND OffTerm = 'FALL'  
   AND FacFirstName = 'LEONARD' 
   AND FacLastName = 'VINCE';

4.
SELECT OfferNo, Offering.CourseNo, OffDays,
       CrsUnits, OffLocation, OffTime
 FROM Offering INNER JOIN Course 
   ON Offering.CourseNo = Course.CourseNo
   INNER JOIN Faculty 
      ON Offering.FacNo = Faculty.FacNo
 WHERE OffYear = 2016 AND OffTerm = 'FALL'  
   AND FacFirstName = 'LEONARD' 
   AND FacLastName = 'VINCE';

Lesson 5

1.
SELECT FacNo, FacRank, FacSalary 
FROM Faculty 
ORDER BY FacRank;

2.
SELECT FacRank, 
       AVG(FacSalary) AS AvgSalary
  FROM Faculty 
  GROUP BY FacRank
  ORDER BY FacRank;

3.
SELECT StdMajor, AVG(StdGPA) AS AvgGpa 
 FROM Student
 WHERE StdClass IN ('JR', 'SR')
 GROUP BY StdMajor;

4.
SELECT StdMajor, AVG(StdGPA) AS AvgGpa 
 FROM Student
 WHERE StdClass IN ('JR', 'SR')
 GROUP BY StdMajor
 HAVING AVG(StdGPA) > 3.1;


