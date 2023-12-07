--Designing a db model for GUVI ZEN class:

-- identifying the entities, relationships, and attributes

-- Entities:
-- Users:

Attributes: user_id (Primary Key), username, email, password, user_type (student/mentor/admin), etc.

Courses:

Attributes: course_id (Primary Key), course_name, description, price, etc.

Enrollments:

Attributes: enrollment_id (Primary Key), user_id (Foreign Key), course_id (Foreign Key), enrollment_date, etc.

Lessons:

Attributes: lesson_id (Primary Key), course_id (Foreign Key), lesson_name, content, video_url, lesson_order, etc.

Assignments:

Attributes: assignment_id (Primary Key), lesson_id (Foreign Key), assignment_name, description, deadline, etc.

Submissions:

Attributes: submission_id (Primary Key), assignment_id (Foreign Key), user_id (Foreign Key), submission_date, submitted_content, grade, etc.

Mentors:

Attributes: mentor_id (Primary Key), user_id (Foreign Key), mentor_name, specialization, etc.


-- Relationships:

-- *  Users can enroll in multiple courses, and each course can have multiple enrolled users (Many-to-Many relationship). This is represented by the Enrollments table.

--  * Each course has multiple lessons, and each lesson belongs to a specific course (One-to-Many relationship).

-- *  Lessons can have multiple assignments, and each assignment belongs to a specific lesson (One-to-Many relationship).

--  * Users can submit multiple assignments, and each assignment can have multiple submissions (One-to-Many relationship).

--  * Mentors are associated with users, and each mentor can mentor multiple users (One-to-Many relationship).



--  Entity-Relationship (ER) diagram:

+-----------------+        +--------------+        +------------+
|      Users      |        |   Courses    |        | Enrollments|
+-----------------+        +--------------+        +------------+
| user_id         |<-------o course_id    |<-------o user_id    |
| username        |        | course_name  |        | course_id   |
| email           |        | description  |        | enrollment_date
| password        |        | price        |        +------------+
| user_type       |        +--------------+
+-----------------+

+-----------------+        +-------------+         +---------+
|     Lessons     |        |Assignments       |         | Mentors |
+-----------------+        +-------------+         +---------+
| lesson_id       |<-------o lesson_id    |<--------o mentor_id|
| course_id       |        | assignment_name|      | user_id  |
| lesson_name     |        | description    |      | mentor_name|
| content         |        | deadline       |      | specialization|
| video_url       |        +-------------+           +---------+
| lesson_order    |
+-----------------+

+-----------------+
| Submissions    |
+-----------------+
| submission_id  |
| assignment_id  |
| user_id        |
| submission_date|
| submitted_content|
| grade          |
+-----------------+
