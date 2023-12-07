--  SQL statements for creating tables, inserting data:


CREATE TABLE users (
    username VARCHAR(20),
    email VARCHAR(20),
    password VARCHAR(20),
    batch_no VARCHAR(10),
    PRIMARY KEY (username)
);

CREATE TABLE codekata (
    section VARCHAR(20),
    totalproblems INT,
    solved INT,
    username VARCHAR(20),
    PRIMARY KEY (section),
    FOREIGN KEY (username) REFERENCES users(username)
);

CREATE TABLE attendance (
    sessionName VARCHAR(20),
    date DATE,
    username VARCHAR(20),
    PRIMARY KEY (sessionName),
    FOREIGN KEY (username) REFERENCES users(username)
);

CREATE TABLE topics (
    topicName VARCHAR(20),
    date DATE,
    PRIMARY KEY (topicName)
);

CREATE TABLE mentors (
    mentorName VARCHAR(20),
    batchno VARCHAR(10),
    PRIMARY KEY (mentorName),
    FOREIGN KEY (batchno) REFERENCES users(batch_no)
);

CREATE TABLE students_activated_courses (
    activated_course VARCHAR(20),
    username VARCHAR(20),
    PRIMARY KEY (activated_course),
    FOREIGN KEY (username) REFERENCES users(username)
);

CREATE TABLE courses (
    section VARCHAR(20),
    price FLOAT,
    PRIMARY KEY (section)
);


.Insert Data:

INSERT INTO 
	users
VALUES
	('sowmi','sowmi@gmail.com','12321qwsadasd','B52WD'),
	('naveen','naveen@hotmail.com','12321qwsadasd','B52WD'),
	('deivanai','deivanai@gmail.com','12321qwsadasd','B52WD'),
	('santhosh','san@yahoo.com','12321qwsadasd','B52WD'),
	('manimozhi','mani@gmail.com','12321qwsadasd','B52WD');
	
INSERT INTO 
	attendance
VALUES
	('HTML','2023-09-01','sowmi'),
	('CSS','2023-09-05','naveen'),
	('JS','2023-10-15','deivanai'),
	('React','2023-11-22','santhosh'),
	('Nodejs','2023-12-30','manimozhi');
	
INSERT INTO 
	codekata
VALUES
	('Arrays','100','50','sowmi'),
	('LInked List','200','120','naveen'),
	('Basic','150','50','deivanai'),
	('Graph','300','99','santhosh'),
	('Input','500','105','manimozhi');
	
	
INSERT INTO 
	topics
VALUES
	('HTML','2023-09-01'),
	('CSS','2021-09-05'),
	('JS','2021-09-15'),
	('React','2021-08-22'),
	('Nodejs','2021-09-30');
	
INSERT INTO
	mentors
VALUES
	('Thiru','B52WD'),
	('Raja','B52WD'),
	('Carol','B52WD'),
	('Derek','B52WD'),
	
INSERT INTO 
	students_activated_courses
VALUES
	('Learn Python','john'),
	('Data Structures','joseph'),
	('DataBases','Olive'),
	('GraphQL'','Aiy'),
	('GraphQL','john');
	
INSERT INTO 
	courses
VALUES
	('Learn Python',' 1200'),
	('Data Structures','1400'),
	('DataBases','2000'),
	('GraphQL'','1000'),
	('Nodejs','3000');

