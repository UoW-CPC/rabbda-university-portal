CREATE TABLE students(
   STUDENT_ID INT PRIMARY KEY   NOT NULL,
   NAME           TEXT,
   CAMPUS         TEXT,
   STUDY_FIELD    TEXT,
   REGISTRATION_YEAR   INT,
   AGE            INT,
   SEX            TEXT,
   NATIONALITY    TEXT,
   HOME_ADDRESS        CHAR(50),
   HIGH_SCHOOL     CHAR(50),
   HIGH_SCHOOL_ADDRESS        CHAR(50)
);



CREATE TABLE grades_high_school(
   ID SERIAL PRIMARY KEY,
   STUDENT_ID INT     NOT NULL,
   MODULE           TEXT    NOT NULL,
   GRADE            INT
);



CREATE TABLE grades_university(
   ID SERIAL PRIMARY KEY,
   STUDENT_ID INT     NOT NULL,
   MODULE_ID   INT    NOT NULL,
   GRADE            INT
);