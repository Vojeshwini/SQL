CREATE TABLE Library_info(
costomer_id BIGINT  NOT NULL unique,
costomer_name bigint,
book_id INT NOT NULL UNIQUE,
book_name VARCHAR(30) NOT NULL UNIQUE,
publisher_name VARCHAR(30) NOT NULL,
library_location VARCHAR(30) NOT NULL unique,
staff_id int unique,
staff_name VARCHAR(30) NOT NULL UNIQUE,
book_cost BIGINT ,check(book_cost >= 100));

DESC library_info;
ALTER TABLE library_info MODIFY COLUMN library_location VARCHAR(30);

INSERT INTO Library_info VALUES(1,'gana',500,'balamangala','neetha','madikeri',1000,'roopa',112);
INSERT INTO Library_info VALUES(2,'Nayana',501,'morning days','lakshya','banglore',1001,'priya',305),
(3,'Nishal',503,'monday morning','nithya','MANGALURU',1002,'Srujanya',199),
(4,'anu',504,'people','nithya','PEENYA',1003,'moksha',103),
(5,'keerthi',505,'titan','jothi','mysuru',1004,'siri',104),
(6,'isha',506,'euphoria','gayana','SULLYA',1005,'tashma',105);
INSERT INTO library_info VALUES(7,'Deena',507,'quotes','shree','hassan',1006,'riya',1044),
(8,'chetha',508,'dristi','ramya','udupi',1007,'anaina',107);

ALTER TABLE library_info MODIFY COLUMN STAFF_NAME VARCHAR(30);
ALTER TABLE library_info MODIFY COLUMN staff_name VARCHAR(30) NOT NULL;
RENAME TABLE library_details to library_info;
ALTER TABLE library_info MODIFY COLUMN book_id int;
ALTER TABLE library_info MODIFY COLUMN book_id int NOT NULL;

