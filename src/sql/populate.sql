
INSERT INTO credentials(username,password,enabled, authority) VALUES ('admin','admin', TRUE, 'ROLE_ADMIN');
INSERT INTO credentials(username,password,enabled, authority) VALUES ('user','user', TRUE, 'ROLE_USER');
INSERT INTO credentials(username,password,enabled, authority) VALUES ('gene','gene', TRUE, 'ROLE_USER');

INSERT INTO user (firstName, lastName, email, credentials_userName, pic) VALUES ('Eugne', 'Rohozhnikov', 'yevRoh@gmail.com','gene','null')
INSERT INTO user (firstName, lastName, email, credentials_userName, pic) VALUES ('Admin', 'Admin', 'Admin@gmail.com','admin','null')
INSERT INTO user ( firstName, lastName, email, credentials_userName, pic) VALUES ('User', 'User', 'user@gmail.com','user','null')

INSERT INTO course (about, field, beginDate, endDate, name, price) VALUE ('About the Course
In this course you will learn how to program in R and how to use R for effective data analysis. You will learn how to install and configure software necessary for a statistical programming environment and describe generic programming language concepts as they are implemented in a high-level statistical language. The course covers practical issues in statistical computing which includes programming in R, reading data into R, accessing R packages, writing R functions, debugging, profiling R code, and organizing and commenting R code. Topics in statistical data analysis will provide working examples.','computer science','2016-11-20','2016-12-20','R Programming', 0)
INSERT INTO course (about, field, beginDate, endDate, name, price) VALUE ('This course aims to teach everyone the basics of programming computers using Python. We cover the basics of how one constructs a program from a series of simple instructions in Python.  The course has no pre-requisites and avoids all but the simplest mathematics. Anyone with moderate computer experience should be able to master the materials in this course. This course will cover Chapters 1-5 of the textbook “Python for Informatics”.   This course is equivalent to the first half of the 11-week "Programming for Everybody (Python)" course.  Once a student completes this course, they will be ready to take more advanced programming courses.','computer science','2015-11-20','2016-01-20','Learn to Program and Analyze',10)
INSERT INTO course (about, field, beginDate, endDate, name, price) VALUE ('This course aims to teach everyone the basics of programming computers using Python. We cover the basics of how one constructs a program from a series of simple instructions in Python.  The course has no pre-requisites and avoids all but the simplest mathematics. Anyone with moderate computer experience should be able to master the materials in this course. This course will cover Chapters 1-5 of the textbook “Python for Informatics”.   This course is equivalent to the first half of the 11-week "Programming for Everybody (Python)" course.  Once a student completes this course, they will be ready to take more advanced programming courses.','computer science','2015-11-20','2015-12-20','Programming for Everybody ', 100)
INSERT INTO course (about, field, beginDate, endDate, name, price) VALUE ('If you have been interested in the media explosion discussing "sports analytics" this course is for you. You will learn lots about sports, Excel, analytics, and how they interface. Cool topics include setting point spreads, choosing daily fantasy sports lineups, evaluating football play selection and NBA lineups. 
The course is self-contained with no real requirements beyond high school algebra and knowledge of the Excel Copy Command.','math','2015-11-20','2015-12-20','Math behind Moneyball', 0)
INSERT INTO course (about, field, beginDate, endDate, name, price) VALUE ('Data science is a team sport. As a data science executive it is your job to recruit, organize, and manage the team to success. In this one-week course, we will cover how you can find the right people to fill out your data science team, how to organize them to give them the best chance to feel empowered and successful, and how to manage your team as it grows.','science','2015-11-20','2015-12-20','Building a Data Science', 49.99)
INSERT INTO course (about, field, beginDate, endDate, name, price) VALUE ('ABOUT COURSE science','science','2015-11-20','2015-12-20','Introduction toscience 2', 2.3)
INSERT INTO course (about, field, beginDate, endDate, name, price) VALUE ('ABOUT COURSE science','science','2015-11-20','2015-12-20','Data science 3', 2.3)
INSERT INTO course (about, field, beginDate, endDate, name, price) VALUE ('ABOUT COURSE biology','biology','2015-11-20','2015-12-20','Introduction to Systems Biology', 2.3)
INSERT INTO course (about, field, beginDate, endDate, name, price) VALUE ('ABOUT COURSE biology','biology','2015-11-20','2015-12-20','Integrated Analysis in Biology', 2.3)
INSERT INTO course (about, field, beginDate, endDate, name, price) VALUE ('ABOUT COURSE biology','biology','2015-11-20','2015-12-20','School of Medicine at Mount ', 2.3)

INSERT INTO lecture (number, text, course_id) VALUE ('1','LECtures text', '1')
INSERT INTO lecture (number, text, course_id) VALUE ('2','LECtures text', '1')
INSERT INTO lecture (number, text, course_id) VALUE ('1','LECtures text', '1')

INSERT INTO questionItem (description) VALUE ('Magnetic disk')
INSERT INTO questionItem (description) VALUE ('Main memory')
INSERT INTO questionItem (description) VALUE ('Optical CDs and DVDs')
INSERT INTO questionItem (description) VALUE ('110.101')
INSERT INTO questionItem (description) VALUE ('100.101')
INSERT INTO questionItem (description) VALUE ('100.011')
INSERT INTO questionItem (description) VALUE ('10.011')
INSERT INTO questionItem (description) VALUE ('100.11')
INSERT INTO questionItem (description) VALUE ('Was born in 1995')
INSERT INTO questionItem (description) VALUE ('Was born in 1998')
INSERT INTO questionItem (description) VALUE ('Was born in 1998')

INSERT INTO question_questionitem (Question_id,questionItems_id) VALUE (5,1)
INSERT INTO question_questionitem (Question_id,questionItems_id) VALUE (5,2)
INSERT INTO question_questionitem (Question_id,questionItems_id) VALUE (5,3)
INSERT INTO question_questionitem (Question_id,questionItems_id) VALUE (6,4)
INSERT INTO question_questionitem (Question_id,questionItems_id) VALUE (6,5)
INSERT INTO question_questionitem (Question_id,questionItems_id) VALUE (6,6)
INSERT INTO question_questionitem (Question_id,questionItems_id) VALUE (6,7)

INSERT INTO question (text, correctAnswer) VALUE ('Which of the following storage systems is best suited for storing and retrieving long strings of data that are processed in their sequential order??',1)
INSERT INTO question (text, correctAnswer) VALUE ('Which of the following is the binary representation of 4 5/8',2)
INSERT INTO question (text, correctAnswer) VALUE ('What year is now?','1998')
INSERT INTO question (text, correctAnswer) VALUE ('sleep?','1998')

INSERT INTO quiz (description) VALUE ('Chaking Memory')

INSERT INTO quiz_question (Quiz_id,questions_id) VALUE (1,1)
INSERT INTO quiz_question (Quiz_id,questions_id) VALUE (2,1)
INSERT INTO quiz_question (Quiz_id,questions_id) VALUE (2,2)

INSERT INTO lecture (number,text) VALUE (1,"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
INSERT INTO lecture (number,text) VALUE (2,"Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.

The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.")
INSERT INTO lecture (number,text) VALUE (3,"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."")