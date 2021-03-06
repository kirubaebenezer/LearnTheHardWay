CREATE DATABASE IF NOT EXISTS TRAINING_SAMPLE;
USE TRAINING_SAMPLE;

CREATE TABLE IF NOT EXISTS `students` (
    `id` BIGINT(19) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100) DEFAULT NULL,
    PRIMARY KEY (`id`)
)  ENGINE=INNODB AUTO_INCREMENT=100007 DEFAULT CHARSET=LATIN1;


LOCK TABLES `students` WRITE;
INSERT INTO `students` VALUES (100001,'Thor'),(100002,'Hulk'),(100003,'Daredevil'),(100004,'X Man'),(100005,'Ironman'),(100006,'Quicksilver');
UNLOCK TABLES;


CREATE TABLE IF NOT EXISTS `marks` (
    `id` BIGINT(19) NOT NULL AUTO_INCREMENT,
    `student_id` BIGINT(19) NOT NULL,
    `subject_id` BIGINT(19) NOT NULL,
    `quarterly` INT(11) DEFAULT NULL,
    `half_yearly` INT(11) DEFAULT NULL,
    `annual` INT(11) DEFAULT NULL,
    `year` INT(11) DEFAULT NULL,
    `grade` INT(11) DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `fk_marks_student_id` (`student_id`),
    CONSTRAINT `fk_marks_student_id` FOREIGN KEY (`student_id`)
        REFERENCES `students` (`id`)
        ON DELETE CASCADE
);

LOCK TABLES `marks` WRITE;
INSERT INTO `marks` VALUES (1001,100001,1,NULL,79,91,2003,6),(1002,100002,1,35,49,77,2003,6),(1003,100003,1,100,97,95,2003,6),(1004,100004,1,38,38,65,2003,6),(1005,100005,1,73,40,100,2003,6),(1006,100001,2,NULL,30,76,2003,6),(1007,100002,2,37,45,87,2003,6),(1008,100003,2,93,91,98,2003,6),(1009,100004,2,93,59,63,2003,6),(1010,100005,2,34,89,45,2003,6),(1011,100001,3,NULL,86,89,2003,6),(1012,100002,3,46,76,48,2003,6),(1013,100003,3,46,NULL,83,2003,6),(1014,100004,3,71,74,31,2003,6),(1015,100005,3,34,54,36,2003,6),(1016,100001,4,NULL,NULL,80,2003,6),(1017,100002,4,52,43,31,2003,6),(1018,100003,4,91,95,99,2003,6),(1019,100004,4,46,76,39,2003,6),(1020,100005,4,80,41,94,2003,6),(1021,100001,5,NULL,31,88,2003,6),(1022,100002,5,33,44,53,2003,6),(1023,100003,5,98,92,90,2003,6),(1024,100004,5,52,63,63,2003,6),(1025,100005,5,56,60,48,2003,6),(1026,100001,1,59,34,57,2004,7),(1027,100002,1,47,37,94,2004,7),(1028,100003,1,47,80,97,2004,7),(1029,100004,1,89,43,68,2004,7),(1030,100005,1,72,82,47,2004,7),(1031,100001,2,44,54,31,2004,7),(1032,100002,2,85,96,89,2004,7),(1033,100003,2,84,63,57,2004,7),(1034,100004,2,83,97,53,2004,7),(1035,100005,2,53,30,80,2004,7),(1036,100001,3,44,90,54,2004,7),(1037,100002,3,53,36,87,2004,7),(1038,100003,3,64,55,39,2004,7),(1039,100004,3,95,36,54,2004,7),(1040,100005,3,66,87,37,2004,7),(1041,100001,4,31,65,69,2004,7),(1042,100002,4,98,30,94,2004,7),(1043,100003,4,43,60,83,2004,7),(1044,100004,4,76,79,40,2004,7),(1045,100005,4,66,43,75,2004,7),(1046,100001,5,58,51,98,2004,7),(1047,100002,5,41,92,99,2004,7),(1048,100003,5,86,56,43,2004,7),(1049,100004,5,35,90,92,2004,7),(1050,100005,5,36,35,48,2004,7),(1051,100001,1,96,57,94,2005,8),(1052,100002,1,68,41,50,2005,8),(1053,100003,1,60,83,73,2005,8),(1054,100004,1,53,81,97,2005,8),(1055,100005,1,64,81,39,2005,8),(1056,100001,2,77,82,36,2005,8),(1057,100002,2,73,57,52,2005,8),(1058,100003,2,38,35,81,2005,8),(1059,100004,2,69,46,44,2005,8),(1060,100005,2,35,95,39,2005,8),(1061,100001,3,32,70,58,2005,8),(1062,100002,3,43,48,65,2005,8),(1063,100003,3,81,38,90,2005,8),(1064,100004,3,88,90,92,2005,8),(1065,100005,3,34,95,76,2005,8),(1066,100001,4,64,69,87,2005,8),(1067,100002,4,62,38,95,2005,8),(1068,100003,4,79,49,86,2005,8),(1069,100004,4,68,33,33,2005,8),(1070,100005,4,72,39,84,2005,8),(1071,100001,5,65,77,100,2005,8),(1072,100002,5,82,90,33,2005,8),(1073,100003,5,76,44,55,2005,8),(1074,100004,5,96,76,46,2005,8),(1075,100005,5,50,75,49,2005,8),(1076,100001,1,67,84,51,2006,9),(1077,100002,1,63,68,46,2006,9),(1078,100003,1,89,96,31,2006,9),(1079,100004,1,86,74,82,2006,9),(1080,100005,1,91,49,70,2006,9),(1081,100001,2,65,90,67,2006,9),(1082,100002,2,77,38,75,2006,9),(1083,100003,2,100,99,95,2006,9),(1084,100004,2,100,37,40,2006,9),(1085,100005,2,85,69,37,2006,9),(1086,100001,3,NULL,NULL,32,2006,9),(1087,100002,3,98,34,31,2006,9),(1088,100003,3,65,83,36,2006,9),(1089,100004,3,82,75,67,2006,9),(1090,100005,3,93,78,39,2006,9),(1091,100001,4,83,75,59,2006,9),(1092,100002,4,81,56,30,2006,9),(1093,100003,4,94,60,68,2006,9),(1094,100004,4,59,92,47,2006,9),(1095,100005,4,76,82,83,2006,9),(1096,100001,5,73,70,87,2006,9),(1097,100002,5,50,52,36,2006,9),(1098,100003,5,57,96,88,2006,9),(1099,100004,5,54,77,51,2006,9),(1100,100005,5,86,66,91,2006,9),(1101,100001,1,NULL,NULL,NULL,2007,10),(1102,100002,1,93,31,79,2007,10),(1103,100003,1,81,92,69,2007,10),(1104,100004,1,32,31,76,2007,10),(1105,100005,1,82,65,87,2007,10),(1106,100001,2,62,80,36,2007,10),(1107,100002,2,34,49,87,2007,10),(1108,100003,2,95,89,89,2007,10),(1109,100004,2,50,46,76,2007,10),(1110,100005,2,86,87,84,2007,10),(1111,100001,3,91,64,80,2007,10),(1112,100002,3,52,60,94,2007,10),(1113,100003,3,50,81,58,2007,10),(1114,100004,3,65,39,46,2007,10),(1115,100005,3,44,79,91,2007,10),(1116,100001,4,55,96,55,2007,10),(1117,100002,4,82,67,94,2007,10),(1118,100003,4,85,76,47,2007,10),(1119,100004,4,79,89,89,2007,10),(1120,100005,4,72,56,57,2007,10),(1121,100001,5,93,52,41,2007,10),(1122,100002,5,42,63,75,2007,10),(1123,100003,5,88,31,43,2007,10),(1124,100004,5,57,36,67,2007,10),(1125,100005,5,87,99,93,2007,10);
UNLOCK TABLES;


CREATE TABLE IF NOT EXISTS `medals` (
    `id` BIGINT(19) NOT NULL AUTO_INCREMENT,
    `student_id` BIGINT(19) NOT NULL,
    `game_id` BIGINT(19) NOT NULL,
    `medal_won` VARCHAR(10) DEFAULT NULL,
    `year` INT(11) DEFAULT NULL,
    `grade` INT(11) DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `fk_medals_student_id` (`student_id`),
    CONSTRAINT `fk_medals_student_id` FOREIGN KEY (`student_id`)
        REFERENCES `students` (`id`)
        ON DELETE CASCADE
)  ENGINE=INNODB AUTO_INCREMENT=114 DEFAULT CHARSET=LATIN1;

LOCK TABLES `medals` WRITE;
INSERT INTO `medals` VALUES (101,100003,5,'gold',2003,6),(102,100001,5,'silver',2003,6),(103,100002,4,'silver',2003,6),(104,100003,1,'gold',2003,6),(105,100003,3,'bronze',2004,7),(106,100003,4,'silver',2004,7),(107,100002,2,'silver',2004,7),(108,100002,4,'bronze',2004,7),(109,100002,5,'gold',2004,7),(110,100003,3,'bronze',2005,8),(111,100001,2,'gold',2005,8),(112,100001,3,'bronze',2005,8),(113,100001,4,'bronze',2005,8);
UNLOCK TABLES;

DROP TABLE IF EXISTS `medals`;
DROP TABLE IF EXISTS `marks`;
DROP TABLE IF EXISTS `students`;


-- Select all the medals
SELECT 
    *
FROM
    MEDALS;

-- Select all the students
SELECT 
    *
FROM
    STUDENTS;

-- Select all the marks
SELECT 
    *
FROM
    MARKS;


-- Select all the students whose names starts with “H”
 SELECT 
    *
FROM
    STUDENTS
WHERE
    NAME LIKE 'H%';
    
 -- Select all the students whose name has the alphabet “a”
SELECT 
    *
FROM
    STUDENTS
WHERE
    NAME LIKE '%a%';
    
-- Select all the students and list the results sorted in alphabetical order(a-z) and limit to 2.
SELECT 
    *
FROM
    STUDENTS
ORDER BY NAME
LIMIT 2;


-- List the next “2” students(3rd and 4th) when they are sorted in the alphabetical order.
SELECT 
    *
FROM
    STUDENTS
WHERE
    ID > 100002
ORDER BY NAME
LIMIT 2;

-- Select the students who has not appeared in the annual exams.
-- Format: All columns of the “marks” table.
SELECT 
    student_id,
    subject_id,
    quarterly,
    half_yearly,
    annual,
    year,
    grade
FROM
    STUDENTS AS S
        INNER JOIN
    MARKS AS M ON S.ID = M.STUDENT_ID
WHERE
    M.ANNUAL IS NULL;

-- Select the students who has not appeared in the annual exams during the year “2005”.
-- Format: student_id, subject_id, year
SELECT 
    student_id, subject_id, year
FROM
    STUDENTS AS S
        INNER JOIN
    MARKS AS M ON S.ID = M.STUDENT_ID
WHERE
    M.ANNUAL IS NULL AND M.YEAR = 2005;

-- Select the students who has appeared in one of the exams - quarterly, half_yearly or annual.
-- Format: student_id, subject_id, year
SELECT 
    student_id, subject_id, year
FROM
    STUDENTS AS S
        INNER JOIN
    MARKS AS M ON S.ID = M.STUDENT_ID
WHERE
    (M.ANNUAL IS NOT NULL)
        OR (M.HALF_YEARLY IS NOT NULL)
        OR (M.QUARTERLY IS NOT NULL);

-- Select the students who has scored more than 90 in all the exams - quarterly, half_yearly and annual.
-- Format: student_id, subject_id, year, quarterly, half_yearly, annual 
SELECT 
    student_id, subject_id, year, quarterly, half_yearly, annual
FROM
    STUDENTS AS S
        INNER JOIN
    MARKS AS M ON S.ID = M.STUDENT_ID
WHERE
    (M.ANNUAL > 90) AND (M.HALF_YEARLY > 90)
        AND (M.QUARTERLY > 90);

-- List the average marks(in quarterly, half_yearly & annual) for each subject scored for the year.
-- Format: student_id, subject_id, average, year
SELECT 
    student_id,
    subject_id,
    quarterly,
    half_yearly,
    annual,
    ((IFNULL(quarterly, 0) + IFNULL(half_yearly, 0) + IFNULL(annual, 0))) / 3 AS average,
    year
FROM
    STUDENTS AS S
        INNER JOIN
    MARKS AS M ON S.ID = M.STUDENT_ID;

-- List the average marks(in quarterly, half_yearly & annual) for each subject scored for the years 2003 & 2004
-- Format: student_id, subject_id, average, year
SELECT 
    student_id,
    subject_id,
    quarterly,
    half_yearly,
    annual,
    ((IFNULL(quarterly, 0) + IFNULL(half_yearly, 0) + IFNULL(annual, 0))) / 3 AS average,
    year
FROM
    STUDENTS AS S
        INNER JOIN
    MARKS AS M ON S.ID = M.STUDENT_ID
WHERE
    M.YEAR BETWEEN 2003 AND 2004;

    -- List the students who didn’t appear for any exams.
-- Format: name
SELECT 
    name
FROM
    STUDENTS AS S
        INNER JOIN
    MARKS AS M ON S.ID = M.STUDENT_ID
WHERE
    M.QUARTERLY IS NULL
        AND M.HALF_YEARLY IS NULL
        AND ANNUAL IS NULL;

-- Find the total marks scored by each students in the annual exams. If the student hasn’t appeared for any annual exam, he should still be listed with total marks scored as “0”.
-- Format: name, marks, year
SELECT 
    name, year, SUM(annual) AS total_marks
FROM
    STUDENTS AS S
        INNER JOIN
    MARKS AS M ON S.ID = M.STUDENT_ID
GROUP BY M.STUDENT_ID , S.NAME , M.YEAR;

-- List the students with the total marks scored in quarterly from all the subjects they had appeared during the year 2003.
-- Format: name, total, grade
SELECT 
    name, year, SUM(quarterly) AS total_marks
FROM
    STUDENTS AS S
        INNER JOIN
    MARKS AS M ON S.ID = M.STUDENT_ID
GROUP BY M.STUDENT_ID , S.NAME , M.YEAR
HAVING M.YEAR >= 2003;


-- List the 9th and 10th grade students who received more than 3 medals.
-- Format: name, grade, no_of_medals
SELECT 
    name, grade, COUNT(medal_won) AS medal_count
FROM
    STUDENTS AS S
        INNER JOIN
    MEDALS AS M ON S.ID = M.STUDENT_ID
WHERE
    M.GRADE BETWEEN 9 AND 10
GROUP BY S.NAME , M.GRADE
HAVING medal_count > 3;

-- List the students who got less than 2 medals. This should also include the students who has not won any medals.
-- Format: name, grade, no_of_medals
SELECT 
    name, grade, COUNT(medal_won) AS medal_count
FROM
    STUDENTS AS S
        INNER JOIN
    MEDALS AS M ON S.ID = M.STUDENT_ID
GROUP BY S.NAME , M.GRADE
HAVING medal_count < 2;

-- List the students who has not yet received any medals but scored more than 90 marks in all the subjects in the annual exam for that year.
-- Format: name, year
SELECT 
    name,
    M.grade,
    COUNT(medal_won) AS medal_count,
    M.year,
    SUM(annual) AS total_marks
FROM
    STUDENTS AS S
        INNER JOIN
    MEDALS AS M ON S.ID = M.STUDENT_ID
        INNER JOIN
    MARKS AS MA ON S.ID = MA.STUDENT_ID
GROUP BY S.NAME , M.GRADE , M.year
HAVING medal_count = 1 AND total_marks >= 90;

-- List the records from the medals table for the students who had won more than 3 medals.
-- Format: name, game_id, medal_won, year, grade
SELECT 
    name, game_id, grade, COUNT(medal_won) AS medal_count, year
FROM
    STUDENTS AS S
        INNER JOIN
    MEDALS AS M ON S.ID = M.STUDENT_ID
GROUP BY S.NAME , M.GRADE , M.GAME_ID , M.YEAR
HAVING medal_count > 3;

-- List the number of medals and percentage of marks(based on total for the 5 subjects) scored in each year.
-- Format: name, medals, quarterly_per, half_yearly_per, annual_per, year, grade
SELECT 
    name,
    COUNT(medal_won) AS medal_count,
    IFNULL(quarterly / 100, 0) AS quarterly_perc,
    IFNULL(half_yearly / 100, 0) AS half_yearly_perc,
    IFNULL(annual / 100, 0) AS annual_perc,
    M.year,
    M.grade
FROM
    STUDENTS AS S
        INNER JOIN
    MEDALS AS M ON S.ID = M.STUDENT_ID
        INNER JOIN
    MARKS AS MA ON S.ID = MA.STUDENT_ID
GROUP BY S.NAME , MA.QUARTERLY , MA.HALF_YEARLY , MA.ANNUAL , M.YEAR , M.GRADE;


SELECT 
    *
FROM
    STUDENTS AS S
        INNER JOIN
    MEDALS AS M ON S.ID = M.STUDENT_ID
        INNER JOIN
    MARKS AS MA ON S.ID = MA.STUDENT_ID;


-- Add columns 'created_at' and 'updated_at' to the tables marks, students and medals.
-- Replace the null values in quarterly, half_yearly and annual columns with 0 and make those columns as not nullable.

ALTER TABLE MARKS MODIFY quarterly INT(11) NOT NULL;
ALTER TABLE MARKS MODIFY half_yearly INT(11) NOT NULL;
ALTER TABLE MARKS MODIFY annual INT(11) NOT NULL;

DROP TABLE IF EXISTS STUDENTS_SUMMARY;

-- Using the table training_sample, do the following
-- create a table students_summary with the below columns
-- student_id
-- student_name
-- year
-- percentage (got in annual exams)
-- no_of_medals_received
CREATE TABLE IF NOT EXISTS STUDENTS_SUMMARY (
    student_id BIGINT(19),
    student_name VARCHAR(100),
    year INT(11),
    percentage INT(11),
    no_of_medals_recieved INT(3),
    PRIMARY KEY (student_id , year)
);

-- Derive the values from the tables(students, marks and medals) and insert into the above table
-- Use insert with select statement
INSERT INTO STUDENTS_SUMMARY(student_id,student_name,year,percentage,no_of_medals_recieved) 
SELECT 
    S.id, name, MA.year, SUM(annual)/5 as percentage, COUNT(medal_won) as medal_won
FROM
    STUDENTS AS S
        INNER JOIN
    MARKS AS MA ON S.ID = MA.STUDENT_ID
        INNER JOIN
    MEDALS AS ME ON ME.STUDENT_ID = MA.STUDENT_ID
GROUP BY MA.STUDENT_ID, MA.YEAR;


SELECT 
    *
FROM
    STUDENTS_SUMMARY;


      

delimiter |
CREATE TRIGGER testref BEFORE INSERT ON MARKS
  FOR EACH ROW
  BEGIN
      SET NEW.average = ((IFNULL(NEW.quarterly, 0) + IFNULL(NEW.half_yearly, 0) + IFNULL(NEW.annual, 0))) / 3;
  END;
|
delimiter ;
DROP TRIGGER testref;

delimiter |
CREATE TRIGGER testrefonupdate BEFORE UPDATE ON MARKS
  FOR EACH ROW
  BEGIN
      SET NEW.average = ((IFNULL(NEW.quarterly, 0) + IFNULL(NEW.half_yearly, 0) + IFNULL(NEW.annual, 0))) / 3;
  END;
|
delimiter ;

INSERT INTO MARKS (id,student_id,subject_id,quarterly,half_yearly,annual,year,grade,created_at,updated_at) VALUES (1127,100006,1,0,79,91,2003,6,now(),now());

UPDATE MARKS 
SET 
    quarterly = 100
WHERE
    id = 1127;

