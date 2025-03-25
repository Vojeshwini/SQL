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
select * from hospital_info where hospital_name not like 'a%i%';

/*delete*/
delete from hospital_info where hospital_id=1;

ROLLBACK;

CREATE TABLE cricket_information(
match_id INT,
match_date DATE,
match_place VARCHAR(20),
match_type VARCHAR(20),
team_1 VARCHAR(20),
team_1_Captain VARCHAR(20),
team_2 VARCHAR(20),
team_2_Captain VARCHAR(20),
toss_winner VARCHAR(20),
batting VARCHAR(20)



);


INSERT INTO cricket_information VALUES(1,'2024-04-25','Delhi','IPL','CSK','MS Dhoni','MI','Hardik Pandya','CSK','CSK');
INSERT INTO cricket_information VALUES(2, '2024-04-12', 'Bangalore', 'One-Day', 'RCB', 'Faf du Plessis', 'MI', 'Rohit Sharma', 'RCB', 'RCB');
INSERT INTO cricket_information VALUES(3, '2022-11-10', 'Melbourne', 'T20', 'India', 'Rohit Sharma', 'England', 'Jos Buttler', 'England', 'England');
INSERT INTO cricket_information VALUES(4, '2019-07-14', 'London', 'ODI', 'England', 'Eoin Morgan', 'New Zealand', 'Kane Williamson', 'England', 'England');
INSERT INTO cricket_information VALUES(5, '2015-03-29', 'Melbourne', 'ODI', 'Australia', 'Michael Clarke', 'New Zealand', 'Brendon McCullum', 'Australia', 'Australia');
INSERT INTO cricket_information VALUES(6, '2024-05-10', 'Jaipur', 'Test', 'RR', 'Sanju Samson', 'GT', 'Shubman Gill', 'GT', 'GT');
INSERT INTO cricket_information VALUES(7, '2024-04-28', 'Mumbai', 'Test', 'MI', 'Hardik Pandya', 'RCB', 'Faf du Plessis', 'MI', 'RCB');
INSERT INTO cricket_information VALUES(8, '2024-05-01', 'Bangalore', 'Test', 'RCB', 'Faf du Plessis', 'CSK', 'MS Dhoni', 'RCB', 'CSK');
INSERT INTO cricket_information VALUES(9, '2024-05-04', 'Hyderabad', 'Test', 'SRH', 'Pat Cummins', 'KKR', 'Shreyas Iyer', 'SRH', 'SRH');
INSERT INTO cricket_information VALUES(10, '2024-05-07', 'Kolkata', 'Test', 'KKR', 'Shreyas Iyer', 'RR', 'Sanju Samson', 'RR', 'RR');
INSERT INTO cricket_information VALUES(11, '2023-06-07', 'London', 'Test', 'India', 'MS Dhoni', 'Australia', 'Pat Cummins', 'India', 'India');
INSERT INTO cricket_information VALUES(12, '2021-06-18', 'Southampton', 'Test', 'India', 'MS Dhoni', 'New Zealand', 'Kane Williamson', 'New Zealand', 'New Zealand');
INSERT INTO cricket_information VALUES(13, '2015-03-29', 'Melbourne', 'ODI', 'Australia', 'Michael Clarke', 'New Zealand', 'Brendon McCullum', 'Australia', 'Australia');
INSERT INTO cricket_information VALUES(14, '2011-04-02', 'Mumbai', 'ODI', 'India', 'MS Dhoni', 'Sri Lanka', 'Kumar Sangakkara', 'Sri Lanka', 'Sri Lanka');
INSERT INTO cricket_information VALUES(15, '2024-05-07', 'Kolkata', 'Test', 'KKR', 'Shreyas Iyer', 'RR', 'Sanju Samson', 'RR', 'RR');

ALTER TABLE cricket_information ADD COLUMN bowling VARCHAR(20);
ALTER TABLE cricket_information ADD COLUMN winner VARCHAR(20);

select * from cricket_information;





UPDATE cricket_information SET bowling='MI', winner='CSK' WHERE match_id=1;
UPDATE cricket_information SET bowling='MI', winner='RCB' WHERE match_id=2;
UPDATE cricket_information SET bowling='India', winner='India' WHERE match_id=3;
UPDATE cricket_information SET bowling='New Zealand', winner='England' WHERE match_id=4;
UPDATE cricket_information SET bowling='New Zealand', winner='New Zealand' WHERE match_id=5;
UPDATE cricket_information SET bowling='RR', winner='GT' WHERE match_id=6;
UPDATE cricket_information SET bowling='MI', winner='RCB' WHERE match_id=7;
UPDATE cricket_information SET bowling='RCB', winner='CSK' WHERE match_id=8;
UPDATE cricket_information SET bowling='KKR', winner='KKR' WHERE match_id=9;
UPDATE cricket_information SET bowling='KKR', winner='RR' WHERE match_id=10;
UPDATE cricket_information SET bowling='Australia', winner='India' WHERE match_id=11;
UPDATE cricket_information SET bowling='India', winner='India' WHERE match_id=12;
UPDATE cricket_information SET bowling='New Zealand', winner='Australia' WHERE match_id=13;
UPDATE cricket_information SET bowling='India', winner='India' WHERE match_id=14;
UPDATE cricket_information SET bowling='KKR', winner='RR' WHERE match_id=15;


ALTER TABLE cricket_information RENAME COLUMN match_place to match_venue;
ALTER TABLE cricket_information RENAME COLUMN winner to result;
ALTER TABLE cricket_information RENAME COLUMN match_type to type_of_matches;
ALTER TABLE cricket_information RENAME COLUMN match_id to id;

UPDATE cricket_information SET match_date='2019-07-14' where id in(1,2,3,4,5);
UPDATE cricket_information SET match_venue='Banglore' where match_venue='Melbourne' and id='3' and id='5';
UPDATE cricket_information SET match_date='2019-07-16' where id not in(1,2,3,4,5,6,7,8,9,10,11,12);
UPDATE cricket_information SET type_of_matches='IPL' where  type_of_matches='Test' or type_of_matches='T20' or match_venue='Bangalore';

delete from cricket_information where id=13;
delete from cricket_information where team_1='England' and team_2='Eoin Morgan';
delete from cricket_information where id=9;

select * from cricket_information;


select * from cricket_information where match_venue='Banglore' and type_of_matches='IPL'and team_1='India';
select match_date from cricket_information where match_venue in('Delhi','Jaipur','London');

select id,match_date,team_1,team_1_Captain,team_2,team_2_Captain from cricket_information where match_venue not in('Delhi','Jaipur','London');
select team_1,team_1_Captain,team_2,team_2_Captain from cricket_information where match_venue='jaipur' or match_venue='Banglore' or type_of_matches='IPL';

select * from cricket_information where id between 2 and 10;
select * from cricket_information where id not between 2 and 10;
select * from cricket_information where team_1_Captain like 'MS%';
select * from cricket_information where match_venue not like 'B%';
select * from cricket_information where match_venue not like '%i';
select id,batting from cricket_information where id between '6' and '9';
select id,batting from cricket_information where id not between '6' and '9';




CREATE TABLE football_info(
player_id INT,
first_name VARCHAR(20), 
last_name VARCHAR(20),
nationality VARCHAR(20),
jersey_number INT,
date_of_birth DATE,
league VARCHAR(20),
height_cm INT,
weight_kg INT,
team_name VARCHAR(20)
);


INSERT INTO football_info VALUES (1, 'Lionel', 'Messi', 'Argentina', 10, '1987-06-24', 'MLS', 170, 72, 'Inter Miami');
INSERT INTO football_info VALUES (2, 'Cristiano', 'Ronaldo', 'Portugal', 7, '1985-02-05', 'Saudi Pro League', 187, 83, 'Al Nassr');
INSERT INTO football_info VALUES (3, 'Neymar', 'Jr', 'Brazil', 10, '1992-02-05', 'Saudi Pro League', 175, 68, 'Al Hilal');
INSERT INTO football_info VALUES (4, 'Kylian', 'Mbappe', 'France', 7, '1998-12-20', 'Ligue 1', 178, 73, 'PSG');
INSERT INTO football_info VALUES (5, 'Robert', 'Lewandowski', 'Poland', 9, '1988-08-21', 'La Liga', 184, 81, 'Barcelona');
INSERT INTO football_info VALUES (6, 'Lionel', 'Messi', 'Argentina', 10, '1987-06-24', 'MLS', 170, 72, 'Inter Miami');  
INSERT INTO football_info VALUES (7, 'Mohamed', 'Salah', 'Egypt', 11, '1992-06-15', 'Premier League', 175, 71, 'Liverpool');
INSERT INTO football_info VALUES (8, 'Lionel', 'Scaloni', 'Argentina', 4, '1978-05-16', 'International', 177, 75, 'Argentina NT'); 
INSERT INTO football_info VALUES (10, 'Neymar', 'Jr', 'Brazil', 10, '1992-02-05', 'Saudi Pro League', 175, 68, 'Al Hilal'); 
INSERT INTO football_info VALUES (11, 'Luka', 'Modric', 'Croatia', 10, '1985-09-09', 'La Liga', 172, 66, 'Real Madrid');
INSERT INTO football_info VALUES (12, 'Vinicius', 'Junior', 'Brazil', 7, '2000-07-12', 'La Liga', 176, 73, 'Real Madrid');
INSERT INTO football_info VALUES (13, 'Erling', 'Haaland', 'Norway', 9, '2000-07-21', 'Premier League', 194, 88, 'Manchester City');
INSERT INTO football_info VALUES (14, 'Harry', 'Kane', 'England', 9, '1993-07-28', 'Bundesliga', 188, 85, 'Bayern Munich');
INSERT INTO football_info VALUES (15, 'Lionel', 'Anderson', 'Argentina', 7, '1990-08-15', 'MLS', 175, 70, 'Inter Miami'); 

ALTER TABLE football_info ADD COLUMN goals_scored_in_last_match INT DEFAULT 0;
ALTER TABLE football_info  ADD COLUMN matches_played INT DEFAULT 0;


select * from football_info;

UPDATE football_info  
SET goals_scored_in_last_match = 2, matches_played = 1020  
WHERE first_name = 'Lionel' AND last_name = 'Messi' AND team_name = 'Inter Miami';

UPDATE football_info  
SET goals_scored_in_last_match = 1, matches_played = 1150  
WHERE first_name = 'Cristiano' AND last_name = 'Ronaldo';

UPDATE football_info  
SET goals_scored_in_last_match = 3, matches_played = 600  
WHERE first_name = 'Neymar' AND last_name = 'Jr';

UPDATE football_info  
SET goals_scored_in_last_match = 1, matches_played = 300  
WHERE first_name = 'Kylian' AND last_name = 'Mbappe';

UPDATE football_info  
SET goals_scored_in_last_match = 0, matches_played = 850  
WHERE first_name = 'Robert' AND last_name = 'Lewandowski';

UPDATE football_info  
SET goals_scored_in_last_match = 2, matches_played = 500  
WHERE first_name = 'Mohamed' AND last_name = 'Salah';

UPDATE football_info  
SET goals_scored_in_last_match = 1, matches_played = 400  
WHERE first_name = 'Vinicius' AND last_name = 'Junior';

UPDATE football_info  
SET goals_scored_in_last_match = 0, matches_played = 700  
WHERE first_name = 'Luka' AND last_name = 'Modric';

UPDATE football_info  
SET goals_scored_in_last_match = 4, matches_played = 550  
WHERE first_name = 'Erling' AND last_name = 'Haaland';

UPDATE football_info  
SET goals_scored_in_last_match = 2, matches_played = 700  
WHERE first_name = 'Harry' AND last_name = 'Kane';

UPDATE football_info  
SET goals_scored_in_last_match = 1, matches_played = 250  
WHERE first_name = 'Lionel' AND last_name = 'Scaloni';

UPDATE football_info  
SET goals_scored_in_last_match = 2, matches_played = 600  
WHERE first_name = 'Neymar' AND last_name = 'Jr' AND team_name = 'Al Hilal';

UPDATE football_info  
SET goals_scored_in_last_match = 1, matches_played = 350  
WHERE first_name = 'Lionel' AND last_name = 'Anderson';

UPDATE football_info  
SET goals_scored_in_last_match = 3, matches_played = 400  
WHERE first_name = 'Karim' AND last_name = 'Benzema';

UPDATE football_info  
SET goals_scored_in_last_match = 0, matches_played = 800  
WHERE first_name = 'Sergio' AND last_name = 'Ramos';



ALTER TABLE football_info  
CHANGE COLUMN first_name player_first_name VARCHAR(20);

ALTER TABLE football_info  
CHANGE COLUMN last_name player_last_name VARCHAR(20);

ALTER TABLE football_info  
CHANGE COLUMN team_name club_name VARCHAR(20);

ALTER TABLE football_info  
CHANGE COLUMN league competition VARCHAR(20);

UPDATE football_info  
SET goals_scored_in_last_match = 3, matches_played = 1100  
WHERE club_name = 'Inter Miami' AND competition = 'MLS';

UPDATE football_info  
SET goals_scored_in_last_match = 2, matches_played = 900  
WHERE club_name = 'Real Madrid' OR club_name = 'Barcelona';

UPDATE football_info  
SET matches_played = 600  
WHERE competition NOT IN ('Saudi Pro League', 'La Liga');

UPDATE football_info  
SET goals_scored_in_last_match = 4  
WHERE club_name IN ('Al Hilal', 'Al Nassr', 'PSG');

DELETE FROM football_info where player_id=1;
rollback;


select * from football_info;
delete from football_info where player_id=4 and jersey_number=7;


SELECT * FROM football_info WHERE nationality = 'Argentina';

SELECT * FROM football_info WHERE nationality = 'Argentina' AND competition = 'MLS';
SELECT * FROM football_info WHERE nationality = 'Brazil' OR nationality = 'France';
SELECT * FROM football_info WHERE club_name IN ('Barcelona', 'Real Madrid', 'PSG');
SELECT * FROM football_info WHERE competition NOT IN ('Premier League', 'La Liga');
SELECT * FROM football_info WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31';
SELECT * FROM football_info WHERE date_of_birth NOT BETWEEN '1990-01-01' AND '2000-12-31';
SELECT * FROM football_info WHERE player_first_name LIKE 'L%';
SELECT * FROM football_info WHERE player_first_name NOT LIKE 'L%';





