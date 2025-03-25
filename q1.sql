CREATE DATABASE mydb;
USE mydb;

CREATE TABLE hospital_info(
hospital_id int,
hospital_name varchar(20),
hospital_location varchar(20) ,
room_number varchar(20),
bed_number varchar(20),
doctor_name varchar(20)
);


INSERT  INTO  hospital_info VALUES(1,'Manipal','Mysuru','A101',13,'Dr.Sharma');
INSERT INTO hospital_info VALUES(2,'Ashwini','Madikeri','P102',5,'Dr.Priya');
INSERT INTO hospital_info VALUES(3,'Neelgiri','Manglore','RR1','81','Dr.Sharma');
INSERT INTO hospital_info VALUES(4,'KMC','Manglore','1011','6','Dr.Rohith');
INSERT INTO hospital_info VALUES(5,'RV','Banglore',901,'7','Dr.Roshan');
INSERT INTO hospital_info VALUES(6,'MMC','Madikeri',201,'8','Dr.Reshma');
INSERT INTO hospital_info VALUES(7,'JD','Banglore',901,'A21','Dr.neelkantha');
INSERT INTO hospital_info VALUES(8,'govt','Banglore',501,'B23','DR.Praksha');
INSERT INTO hospital_info VALUES(9,'OMEGA','Banglore',824,'OPN','Dr.Smitha');
INSERT INTO hospital_info VALUES(10,'PRIYA','Manglore',51,'PSP','Dr.Prabhakar');
INSERT INTO hospital_info VALUES(11,'IKEA','Manipal',45,'JB1','Dr.Omika');
INSERT INTO hospital_info VALUES(12,'MSI','Jogpur',85,'P31','Dr.Dimple');
INSERT INTO hospital_info VALUES(13,'PRIYADARSHINI','Kerala',95,'P90','Dr.Sharma');
INSERT INTO hospital_info VALUES(14,'Ragava','TN',115,'K25','Dr.Sharma');
INSERT INTO hospital_info VALUES(15,'USHA','Banglore',45,'H85','Dr.Smitha');

SELECT * FROM hospital_info;

SELECT hospital_name FROM hospital_info Where hospital_location='Mysuru' ;


SELECT doctor_name from hospital_info where hospital_location in(Madikeri,Mysuru);



CREATE TABLE country_info(
country_code INT, country_name VARCHAR(20),capital VARCHAR(20),currency VARCHAR(20),president VARCHAR(20), continent VARCHAR(20)
);


INSERT INTO country_info VALUES(91,'INDIA','DELHI','RUPEE','Smt. Droupadi Murmu','Southern asia');
INSERT INTO country_info VALUES (1, 'UNITED STATES', 'WASHINGTON D.C.', 'US DOLLAR', 'Joe Biden', 'North America');
INSERT INTO country_info VALUES (49, 'GERMANY', 'BERLIN', 'EURO', 'Frank-Walter ', 'Europe');
INSERT INTO country_info VALUES (81, 'JAPAN', 'TOKYO', 'YEN', 'Fumio Kishida', 'East Asia');
INSERT INTO country_info VALUES (86, 'CHINA', 'BEIJING', 'YUAN', 'Xi Jinping', 'East Asia');
INSERT INTO country_info VALUES (7, 'RUSSIA', 'MOSCOW', 'RUBLE', 'Vladimir Putin', 'Europe/Asia');
INSERT INTO country_info VALUES (33, 'FRANCE', 'PARIS', 'EURO', 'Emmanuel Macron', 'Europe');
INSERT INTO country_info VALUES (39, 'ITALY', 'ROME', 'EURO', 'Sergio Mattarella', 'Europe');
INSERT INTO country_info VALUES (44, 'UNITED KINGDOM', 'LONDON', 'POUND STERLING', 'King Charles III', 'Europe');
INSERT INTO country_info VALUES (61, 'AUSTRALIA', 'CANBERRA', 'AUSTRALIAN DOLLAR', 'David Hurley', 'Australia');
INSERT INTO country_info VALUES (55, 'BRAZIL', 'BRASILIA', 'REAL', 'Luiz Inácio ', 'South America');
INSERT INTO country_info VALUES (27, 'SOUTH AFRICA', 'PRETORIA', 'RAND', 'Cyril Ramaphosa', 'Africa');
INSERT INTO country_info VALUES (34, 'SPAIN', 'MADRID', 'EURO', 'Pedro Sánchez', 'Europe');
INSERT INTO country_info VALUES (82, 'SOUTH KOREA', 'SEOUL', 'WON', 'Yoon Suk-yeol', 'East Asia');
INSERT INTO country_info VALUES (62, 'INDONESIA', 'JAKARTA', 'RUPIAH', 'Joko Widodo', 'Southeast Asia');


SELECT * FROM country_info;

SELECT country_name FROM country_info where country_id=1 AND capital='North America';


CREATE TABLE state_info(
state_id INT, 
state_name VARCHAR(20),
state_capital VARCHAR(20),
chief_minister VARCHAR(20),
governor VARCHAR(20),
Area_sq_km INT);


INSERT INTO state_info VALUES(1, 'Karnataka', 'Bengaluru', 'Siddaramaiah', 'Thawar Chand Gehlot', 191791);
INSERT INTO state_info VALUES(2, 'Assam', 'Dispur', 'Himanta Biswa Sarma', 'Gulab Chand Kataria', 78438);
INSERT INTO state_info VALUES(3, 'Kerala', 'Thiruvananthapuram', 'Pinarayi Vijayan', 'Arif Mohammed Khan', 38863);
INSERT INTO state_info VALUES(4, 'Goa', 'Panaji', 'Pramod Sawant', 'Sreedharan Pillai', 3702);
INSERT INTO state_info VALUES(5, 'Himachal Pradesh', 'Shimla', 'Sukhvinder', 'Shiv Pratap Shukla', 55673);
INSERT INTO state_info VALUES(6, 'Jharkhand', 'Ranchi', 'Hemant Soren', 'Radhakrishnan', 79714);
INSERT INTO state_info VALUES(7, 'Manipur', 'Imphal', 'N. Biren Singh', 'Anusuiya Uikey', 22327);
INSERT INTO state_info VALUES(8, 'Meghalaya', 'Shillong', 'Conrad Sangma', 'Phagu Chauhan', 22429);
INSERT INTO state_info VALUES(9, 'Mizoram', 'Aizawl', 'Lalduhoma', 'Hari Babu', 21081);
INSERT INTO state_info VALUES(10, 'Nagaland', 'Kohima', 'Neiphiu Rio', 'La. Ganesan', 16579);
INSERT INTO state_info VALUES(11, 'Sikkim', 'Gangtok', 'Prem Singh Tamang', 'Lakshman', 7096);
INSERT INTO state_info VALUES(12, 'Tripura', 'Agartala', 'Manik Saha', 'Indrasena', 10486);
INSERT INTO state_info VALUES(14, 'Ladakh', 'Leh', 'N/A', 'B. D. Mishra', 59146);
INSERT INTO state_info VALUES(15, 'Jammu & Kashmir', 'Srinagar/Jammu', 'N/A', 'Manoj Sinha', 222236);


SELECT * FROM state_info;


SELECT state_name FROM state_info Where state_id=3;
Select * from hospital_info;

select hospital_name, room_number,bed_number from hospital_info where doctor_name ='Dr.Sharma';
SELECT hospital_name from hospital_info where room_number='P102' AND bed_number=5;
SELECT hospital_name from hospital_info where room_number='P102' AND bed_number=7;
SELECT hospital_name from hospital_info where room_number='P102' or bed_number=7;
UPDATE hospital_info SET room_number='P995' where hospital_id=1;

ALTER TABLE hospital_info ADD COLUMN nurse_name varchar(20);

UPDATE hospital_info set nurse_name='sudha' where hospital_name='Manipal';

ALTER TABLE hospital_info ADD COLUMN junior_doctor Varchar(20) default 'Dr.Neethu' ;


Select * from hospital_info where hospital_id in(1,2);
Select * from hospital_info where hospital_id not in(1,2);
Select * from hospital_info where hospital_id between 3 and 5;
Select * from hospital_info where hospital_id not between 3 and 5;
alter table hospital_info drop column junior_doctor;



/*like*/


SELECT * FROM hospital_info where hospital_name like 'M%';
SELECT * FROM hospital_info where hospital_name like '%l';
select * from hospital_info where hospital_name like 'a%i';
select * from hospital_info where hospital_name like 'a%i%';

/*delete*/
delete from hospital_info where hospital_id=1;

ROLLBACK;














