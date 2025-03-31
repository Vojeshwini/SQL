
USE mydb;
CREATE TABLE bmtc_details(
bus_number int,
bus_color VARCHAR(20),
bus_number_plate BIGINT,
is_ac BOOLEAN,
phone_pay_available BOOLEAN,
Total_number_of_passenger_travelled INT,
Route_id BIGINT,
Source_name VARCHAR(20),
Destination_name VARCHAR(20),
ticket_cost int);

INSERT INTO bmtc_details VALUES (1, 'Red and white', 2345, TRUE, FALSE, 550, 4, 'Majestic', 'Electronic City', 86);
INSERT INTO bmtc_details VALUES (2, 'Blue and white', 7658, FALSE, TRUE, 620, 3, 'Silk Board', 'Whitefield', 45);
INSERT INTO bmtc_details VALUES (3, 'ink and white', 0989, TRUE, FALSE, 700, 3, 'Majestic', 'Marathahalli', 60);
INSERT INTO bmtc_details VALUES (4, 'Green', 9876, FALSE, TRUE, 750, 1, 'Majestic', 'Electronic City', 50);
INSERT INTO bmtc_details VALUES (5, 'Blue', 7895, TRUE, FALSE, 480, 3, 'Silk Board', 'Whitefield', 70);
INSERT INTO bmtc_details VALUES (6, 'Green', 5687, FALSE, TRUE, 610, 3, 'Majestic', 'KR Puram', 40);
INSERT INTO bmtc_details VALUES (7, 'Red', 1234, TRUE, FALSE, 690, 1, 'Silk Board', 'Marathahalli', 50);
INSERT INTO bmtc_details VALUES (8, 'Blue', 5687, FALSE, TRUE, 820, 4, 'Majestic', 'Whitefield', 80);
INSERT INTO bmtc_details VALUES (9, 'Green', 7685, TRUE, FALSE, 510, 3, 'Silk Board', 'Electronic City', 70);
INSERT INTO bmtc_details VALUES (10, 'Red', 8554, FALSE, TRUE, 630, 1, 'Majestic', 'Marathahalli', 40);
INSERT INTO bmtc_details VALUES (11, 'White', 9875, FALSE, TRUE, 750,4, 'Majestic', 'Electronic City', 50);
INSERT INTO bmtc_details VALUES (12, 'Blue', 6524, TRUE, FALSE, 480, 2, 'Silk Board', 'Whitefield', 70);
INSERT INTO bmtc_details VALUES (13, 'Green', 5643, FALSE, TRUE, 610, 3, 'Majestic', 'KR Puram', 40);
INSERT INTO bmtc_details VALUES (14, 'Red', 9875, TRUE, FALSE, 690, 5, 'Silk Board', 'Marathahalli', 60);
INSERT INTO bmtc_details VALUES (15, 'Green and white', 5687, FALSE, TRUE, 820, 2, 'Majestic', 'Whitefield', 50);
INSERT INTO bmtc_details VALUES (16, 'Green', 8462, TRUE, FALSE, 510, 3, 'Silk Board', 'Electronic City', 70);
INSERT INTO bmtc_details VALUES (17, 'Red', 5687, FALSE, TRUE, 630, 1, 'Majestic', 'Marathahalli', 90);
INSERT INTO bmtc_details VALUES (18, 'orange', 9875, TRUE, FALSE, 700, 1, 'Silk Board', 'Marathahalli', 60);
INSERT INTO bmtc_details VALUES (19, 'Blue', 7685, FALSE, TRUE, 800, 2, 'Majestic', 'Whitefield', 50);
INSERT INTO bmtc_details VALUES (20, 'Green', 5617, TRUE, FALSE, 500, 3, 'Silk Board', 'Electronic City', 70);

Select *from bmtc_details;


Select count(bus_number) as number_of_bus from bmtc_details ;
Select sum(is_ac) as ac_bus from bmtc_details where is_ac=true;
Select avg(Total_number_of_passenger_travelled)  as total_passenger from bmtc_details;
select min(ticket_cost) as ticket_amt from bmtc_details;
select max(ticket_cost) as ticket from bmtc_details;

Select sum(Route_id) as route,ticket_cost from bmtc_details group by ticket_cost having route <10;



CREATE TABLE tourist_info(
tourist_id INT,
tourist_name VARCHAR(20),
DOB DATE,
native VARCHAR(20),
Gender CHAR,
travelling_vehicle_name VARCHAR(20),
Vehicle_number VARCHAR(20),
own_vehicle_or_not BOOLEAN,
visiting_place VARCHAR(20),
Phone_number VARCHAR(20));


INSERT INTO tourist_info VALUES (1, 'Divya', '2001-05-28', 'Kodagu', 'F', 'Car', '3456', TRUE, 'RK Beach', '8760028765');
INSERT INTO tourist_info VALUES (2, 'Harish', '2002-10-15', 'Kochi', 'M', 'Bus', '2456', FALSE, 'Fort Kochi', '7650037654');
INSERT INTO tourist_info VALUES (3, 'Avilya', '2003-04-05', 'Mysore', 'F', 'Bike', '8907', TRUE, 'Chamundi Hills', '6540046543');
INSERT INTO tourist_info VALUES (4, 'Gopal', '1988-06-18', 'Kodagu', 'M', 'Train', '6785', FALSE, 'Meenakshi Temple', '5430055432');
INSERT INTO tourist_info VALUES (5, 'jia', '2008-07-21', 'Karnataka', 'F', 'Car', '8734', TRUE, 'Ooty', '4320064321');
INSERT INTO tourist_info VALUES (6, 'Suresh', '2000-08-30', 'Chhattisgarh', 'M', 'Bus', '5647', FALSE, 'Chitrakote Falls', '3210073210');
INSERT INTO tourist_info VALUES (7, 'Suraksha', '2002-01-12', 'Bhubaneswar', 'F', 'Bike', '9023', TRUE, 'Konark Temple', '2100082109');
INSERT INTO tourist_info VALUES (8, 'Dinesh', '1999-12-10', 'Kerala', 'M', 'Train', '2345', FALSE, 'Kovalam Beach', '9870019876');
INSERT INTO tourist_info VALUES (9, 'Bipin', '2000-05-10', 'Delhi', 'M', 'Car', '5123', TRUE, 'Taj Mahal', '9876543210');
INSERT INTO tourist_info VALUES (10, 'Geetha', '2000-07-11', 'Mumbai', 'F', 'Bus', '9561', FALSE, 'Gateway of India', '8765432109');
INSERT INTO tourist_info VALUES (11, 'Suresh', '1988-09-20', 'Kolkata', 'M', 'Bike', '5420', TRUE, 'Sundarbans', '7654321098');
INSERT INTO tourist_info VALUES (12, 'Lakshmi', '1992-11-25', 'Chennai', 'F', 'Train', '6245', FALSE, 'Marina Beach', '6543210987');
INSERT INTO tourist_info VALUES (13, 'Deepak', '2002-03-30', 'Bangalore', 'M', 'Car', '20.4', TRUE, 'Mysore Palace', '5432109876');
INSERT INTO tourist_info VALUES (14, 'Namrutha', '2008-06-18', 'Hyderabad', 'F', 'Bus', '2110', FALSE, 'Charminar', '4321098765');
INSERT INTO tourist_info VALUES (15, 'Rajesh', '1993-08-05', 'Pune', 'M', 'Bike', '8846', TRUE, 'Sinhagad Fort', '3210987654');
INSERT INTO tourist_info VALUES (16, 'Meena', '2000-12-12', 'Jaipur', 'F', 'Car', '9554', TRUE, 'Hawa Mahal', '2109876543');
INSERT INTO tourist_info VALUES (17, 'Virat', '1987-04-08', 'Ahmedabad', 'M', 'Train', '2365', FALSE, 'Sabarmati Ashram', '1098765432');
INSERT INTO tourist_info VALUES (18, 'Preethi', '1996-01-22', 'Lucknow', 'F', 'Bus', '8459', FALSE, 'Bara Imambara', '1987654321');
INSERT INTO tourist_info VALUES (19, 'Keerthan', '1991-09-14', 'Goa', 'M', 'Car', '6700', TRUE, 'Calangute Beach', '9876501234');
INSERT INTO tourist_info VALUES (20, 'Lishika', '1997-07-29', 'Shimla', 'F', 'Bike', '8455', TRUE, 'Mall Road', '8765409876');


Select * from tourist_info;

Select count(own_vehicle_or_not) as own_vehicle from tourist_info group by own_vehicle having own_vehicle<1;


CREATE TABLE movie_info(
movie_id int NOT NULL UNIQUE,
movies_name Varchar(20) NOT NULL UNIQUE,
movie_language VARCHAR(20),
movie_director VARCHAR(20) NOT NULL UNIQUE,
movie_producer VARCHAR(20) NOT NULL UNIQUE,
hero VARCHAR(20),
heroine VARCHAR(20),
trailor_release_date  DATE NOT NULL,
movie_release_date DATE UNIQUE,
ratings INT NOT NULL );


INSERT INTO movie_info VALUES(1,'Girikanya', 'Kannada','Bhagavan','Dwarakanth','Rajkumar','Jayamala','1977-01-19','1977-03-12',5),
(2,'Love Moctail','Kannada','Darling Krishna','Milana','Darling Krishna','Milana Nagaraj','2021-02-13','2021-04-20',4),
(3,'Drishyam','Malayalam',' Jeethu Joseph','Antony Perumbavoor','Mohanlal','Meena','2003-01-16','2023-12-12',3),
(4,'Andheri','Malayalam','Anwar Rasheed​','Sophia ','Jayasurya','Isha ','2015-04-17','2022-06-12',4),
(5,'Mungaru Male','Kannada','Harish','Deepak','Ganesh','Pooja Gandhi','2003-01-16','2008-04-14',4),

(6,'Appu','Kannada','Keerthi','Prakash','Punith Rajkumar','Rakshitha','2015-04-17','2012-05-08',4),

(7,'Disney','English','Leo','Olavia','Gem','Maggie Gyllenhaal','2003-01-16','2014-07-20',4),
(8,'Bangalore Days','Malayalam','Appachan','Soubin','Mohanlal','Kalyani','2015-04-17','2003-01-16',5),
(9,'Titanic','English','Cameron','Landau','Leonardo DiCaprio','Kate Winslet','2014-03-20','2014-08-16',4),
(10,'KGF','Kannada','Lokesh','Jashwanth','Yash','Shilpa','2003-01-16','2001-06-24',4),
(11,'Vikram','Tamil','Kanagaraj','Kamal ','Kamal','Gayathrie','2015-04-17','1999-03-16',4),
(12,'Charlie','Malayalam','Prakkat','Madhu','Nivin','Isha','2014-03-20','2022-02-22',3),
(13,'Interstellar','English','Nolan','Charles Roven','Thomas','Maggie Gyllenhaal','1999-03-16','2022-02-18',4),
(14,'Kotigobba','Kannada','Manish','Barath','Sudeep','Rachitha','2003-01-16','2021-01-12',4),
(15,'Nayattu','Malayalam','Pothan','Puthren','Nivin','Isha','1999-03-16','2023-12-30',5),
(16,'Jailer','Tamil','Mani','Ratnam','Kamal','Gayathrie','2003-01-14','2022-06-18',4),
(17,'RRR','Telugu','Rajamouli','Danayya','Charan','Alia Bhatt','2015-04-17','2003-01-14',4),
(18,'Virus','Malayalam','Joseph','Anjali','Nivin','Parvathy','1999-03-16','2014-03-20',3),
(19,'Jawan','Hindi','Gauri','Atlee','','Alia Bhatt','1999-03-16','2022-02-26',4),
(20,'Gadar','Hindi','Anil','Sharma','Ranbir','Tabu','2022-02-26','2001-06-02',4);

select * from movie_info;

ALTER TABLE  movie_info ADD COLUMN movie_type VARCHAR(20);


UPDATE movie_info SET movie_type='Family'where movie_id=1;
UPDATE movie_info SET movie_type='Comedy'where movie_id=2;
UPDATE movie_info SET movie_type='Action'where movie_id=3;
UPDATE movie_info SET movie_type='Animation'where movie_id=4;
UPDATE movie_info SET movie_type='War'where movie_id=5;
UPDATE movie_info SET movie_type='Mystery'where movie_id=6;
UPDATE movie_info SET movie_type='Comedy'where movie_id=7;
UPDATE movie_info SET movie_type='Action'where movie_id=8;
UPDATE movie_info SET movie_type='Action'where movie_id=9;
UPDATE movie_info SET movie_type='Horror'where movie_id=10;
UPDATE movie_info SET movie_type='Comedy'where movie_id=11;
UPDATE movie_info SET movie_type='Faamily'where movie_id=12;
UPDATE movie_info SET movie_type='Family'where movie_id=13;
UPDATE movie_info SET movie_type='Western'where movie_id=14;
UPDATE movie_info SET movie_type='Action'where movie_id=15;
UPDATE movie_info SET movie_type='Action'where movie_id=16;
UPDATE movie_info SET movie_type='Action'where movie_id=17;
UPDATE movie_info SET movie_type='Family'where movie_id=18;
UPDATE movie_info SET movie_type='Western'where movie_id=19;
UPDATE movie_info SET movie_type='Horror'where movie_id=20;
UPDATE movie_info SET movie_type='Horror'where movie_id=1;

select * from movie_info;

SELECT count(ratings) as no_of_ratings from movie_info where ratings=4;
SELECT count(hero) as no_of_ratings from movie_info where movie_id between 2 and 5;
SELECT count(movies_name) as name from movie_info where movie_id in(2,3,4,5,6);
SELECT count(movie_type) as no_of_ratings from movie_info where movie_id in(2,3,4,5,6);

SELECT sum(ratings) as ratings from movie_info;
SELECT sum(ratings) as ratings from movie_info where movie_id between 2 and 8; 

SELECT AVG(ratings) as avg_rate FROM movie_info WHERE hero= 'Nivin';
SELECT AVG(ratings) as avg_rate FROM movie_info WHERE heroine='Isha' and hero='Nivin';

Select min(ratings) as min_ratings From movie_info WHERE movie_language='Kannada';
Select min(ratings) as max_ratings From movie_info WHERE hero='Nivin' ;
Select max(ratings) as max_ratings From movie_info WHERE movie_language='Kannada';
Select max(ratings) as max_ratings From movie_info WHERE movie_language='English' ;
Select max(ratings) as max_ratings From movie_info WHERE hero='Nivin' ;




select * from movie_info;
Select movies_name,movies_name,movie_language,movie_director from movie_info group by movies_name;

Select sum(ratings) as rate from movie_info group by movie_id Having rate<5;



CREATE TABLE pkl_info(
kabaddi_no INT NOT NULL UNIQUE,
tournament_Name VARCHAR(50),
team1_name Varchar(20),
t1_captain VARCHAR(20) ,
t1_captain_Jersey_Number INT NOT NULL UNIQUE,
t1_jersey_color VARCHAR(20) NOT NULL UNIQUE,
team2_name Varchar(20),
t2_captain VARCHAR(20),
t2_captain_Jersey_Number INT NOT NULL UNIQUE,
t2_jersey_color VARCHAR(20)NOT NULL UNIQUE,
t1_score BIGINT,
t2_score BIGINT);


INSERT INTO pkl_info VALUES(1, 'Pro Kabaddi League 2025', 'Jaipur Pink Panthers', 'Deepak Kumar', 5, 'Pink', 'Dabang Delhi', 'Keerthan', 10, 'Sky Blue', 50, 45); 
INSERT INTO pkl_info VALUES(2, 'Asian Games 2023', 'India', 'Pardeep Narwal', 9, 'Blue', 'Pakistan', 'Sajjad', 17, 'Green', 55, 30);
INSERT INTO pkl_info VALUES(3, 'Kabaddi World Cup 2024', 'Pakistan', 'Naveen', 17, 'Green', 'Bangladesh', 'Martin', 11, 'Maroon', 35, 40);
INSERT INTO pkl_info VALUES(4, 'Pro Kabaddi League 2025', 'Bengaluru Bulls', 'Pawan Sehrawat', 7, 'Rose', 'Patna Pirates', 'Neeraj Kumar', 16, 'Cyon', 42, 38);
INSERT INTO pkl_info VALUES(5, 'Village Kabaddi Championship 2025', 'Kheda Warriors', 'Pratheek', 36, 'White', 'Surat Strikers', 'Jignesh', 37, 'Purple', 32, 30);
INSERT INTO pkl_info VALUES(6, 'Corporate Kabaddi Tournament 2025', 'Infosys Panthers', 'Abhisek', 40, 'Saffron', 'TCS Titans', 'Loneal', 41, 'Red', 38, 36);
INSERT INTO pkl_info VALUES(7, 'Village Kabaddi Championship 2025', 'Ludhiana Lions', 'Harmeet Singh', 38, 'Violet', 'Amritsar Bulls', 'Jaspreet Singh', 39, 'Mint', 44, 41);
INSERT INTO pkl_info VALUES(8, 'Pro Kabaddi League 2025', 'UP Yoddhas', 'Nitesh Kumar', 8, 'Cyon', 'Tamil Thalaivas', 'Ajinkya Pawar', 12, 'Yellow', 35, 40);
INSERT INTO pkl_info VALUES(9, 'All India Inter-University Championship 2025', 'Bangalore University', 'Karthik Shetty', 24, 'Red', 'Pune University', 'Sachin Kale', 25, 'Orange', 40, 38); 
INSERT INTO pkl_info VALUES(10, 'National Kabaddi Championship 2025', 'Rajasthan', 'Deepak Hooda', 20, 'Purple', 'Delhi', 'Anand Sharma', 21, 'White', 40, 36); 
INSERT INTO pkl_info VALUES(11, 'Asian Games 2023', 'India', 'Pardeep Narwal', 56, 'Royal Blue', 'Sri Lanka', 'Roshan Wijesinghe', 18, 'Lavender', 60, 20); 
INSERT INTO pkl_info VALUES(12, 'Kabaddi World Cup 2024', 'Iran', 'Mohammad Esmaeil', 72, 'Brown', 'Pakistan', 'Wasim Sajjad', 86, 'Indigo', 48, 36);
INSERT INTO pkl_info VALUES(13, 'State Kabaddi League 2025', 'MP Tigers', 'Akash Verma', 34, 'Yellow', 'Chhattisgarh', 'Arjun Pandey', 35, 'Violet', 40, 39); 
INSERT INTO pkl_info VALUES(14, 'Asian Games 2023', 'Iran', 'Mohammad Esmaeil', 22, 'Megenta', 'Thailand', 'Chaiwat Rattanakorn', 95, 'Orchid', 42, 28);
INSERT INTO pkl_info VALUES(15, 'National Kabaddi Championship 2025', 'Bihar', 'Amit Kumar', 18, 'Indigo', 'West Bengal', 'Ankit Das', 19, 'Navy Blue', 45, 42);
INSERT INTO pkl_info VALUES(16, 'National Women’s Kabaddi Championship 2025', 'India Women', 'Priyanka Patel', 44, 'Navy Blue', 'Bangladesh Women', 'Farhana Sultana', 45, 'Neon', 46, 32);
INSERT INTO pkl_info VALUES(17, 'Corporate Kabaddi Tournament 2025', 'Google Warriors', 'Amit Srivastava', 42, 'Black', 'Microsoft Raiders', 'Rahul Sharma', 43, 'Grey', 37, 39);
INSERT INTO pkl_info VALUES(18, 'All India Inter-University Championship 2025', 'Kolkata University', 'Anirban Das', 28, 'Orange', 'Lucknow University', 'Saurabh Singh', 29, 'Pink', 34, 31);
INSERT INTO pkl_info VALUES(19, 'Kabaddi World Cup 2024', 'India', 'Pawan Sehrawat', 23, 'Neon', 'South Korea', 'Lee Jang-kun', 6, 'Peach', 50, 32);
INSERT INTO pkl_info VALUES(20, 'All India Inter-University Championship 2025', 'Mumbai University', 'Rohit Patil', 26, 'Mint', 'Delhi University', 'Aryan Sharma', 27, 'Black', 35, 32);
INSERT INTO pkl_info VALUES(21, 'All India Inter-University Championship 2025', 'Patna University', 'Vikram Thakur', 30, 'Grey', 'Ahmedabad University', 'Harsh Patel', 31, 'Blue', 42, 41);
INSERT INTO pkl_info VALUES(22, 'Village Kabaddi Championship 2025', 'Punjab Panthers', 'Rajinder Singh', 46, 'Lavender', 'Haryana Warriors', 'Deepak Malik', 47, 'Lime', 44, 41);

Alter TABLE pkl_info ADD COLUMN WINNER VARCHAR(20);
UPDATE pkl_info set WINNER ='Jaipur Pink Panthers' WHERE kabaddi_no= 1;
UPDATE pkl_info set WINNER ='India' WHERE kabaddi_no= 2;
UPDATE pkl_info set WINNER ='Bangladesh' WHERE kabaddi_no= 3;
UPDATE pkl_info set WINNER ='Bengaluru Bulls' WHERE kabaddi_no=4 ;
UPDATE pkl_info set WINNER ='Kheda Warriors' WHERE kabaddi_no=5 ;
UPDATE pkl_info set WINNER ='Infosys Panthers' WHERE kabaddi_no= 6;
UPDATE pkl_info set WINNER ='Ludhiana Lions' WHERE kabaddi_no=7 ;
UPDATE pkl_info set WINNER ='Tamil Thalaivas' WHERE kabaddi_no= 8;
UPDATE pkl_info set WINNER ='Bangalore University' WHERE kabaddi_no= 9;
UPDATE pkl_info set WINNER ='Rajasthan' WHERE kabaddi_no= 10;
UPDATE pkl_info set WINNER ='India' WHERE kabaddi_no= 11;
UPDATE pkl_info set WINNER ='Iran' WHERE kabaddi_no=12 ;
UPDATE pkl_info set WINNER ='MP Tigers' WHERE kabaddi_no= 13;
UPDATE pkl_info set WINNER ='Iran' WHERE kabaddi_no= 14;
UPDATE pkl_info set WINNER ='Bihar' WHERE kabaddi_no=15 ;
UPDATE pkl_info set WINNER ='India Women' WHERE kabaddi_no=16 ;
UPDATE pkl_info set WINNER ='Microsoft Raiders' WHERE kabaddi_no= 17;
UPDATE pkl_info set WINNER ='Kolkata University' WHERE kabaddi_no=18 ;
UPDATE pkl_info set WINNER ='India' WHERE kabaddi_no= 19;
UPDATE pkl_info set WINNER ='Mumbai University' WHERE kabaddi_no=20 ;
UPDATE pkl_info set WINNER ='Patna University' WHERE kabaddi_no= 21;
UPDATE pkl_info set WINNER ='Punjab Panthers' WHERE kabaddi_no= 22;

SELECT * FROM pkl_info ;


SELECT COUNT(kabaddi_no) AS players from pkl_info ;
SELECT COUNT(kabaddi_no) AS players from pkl_info where t1_captain='Pardeep Narwal';
SELECT MIN(t1_score) From pkl_info where tournament_Name='All India Inter-University Championship 2025';
SELECT Max(t1_score) From pkl_info where tournament_Name='All India Inter-University Championship 2025';
SELECT AVG(t2_score) from pkl_info;
SELECT AVG(t2_score) from pkl_info where t1_captain='Pardeep Narwal';

SELECT tournament_Name,t1_captain from pkl_info group by t1_captain;
SELECT t1_score,kabaddi_no  from pkl_info Group by t1_score having t1_score > 20;

Select winner , kabaddi_no, tournament_Name from pkl_info group by kabaddi_no ;


CREATE TABLE cosmetics_info (
product_id INT NOT NULL UNIQUE,
web_site VARCHAR(20),
brand_name VARCHAR(20),
product_name VARCHAR(20) NOT NULL UNIQUE,
manufacturing_date DATE,
expiry_date DATE,
is_available BOOlEAN NOT NULL,
waterproof BOOLEAN NOT NULL,
skin_type VARCHAR(20),
price BIGINT,
rating INT
 
);

INSERT INTO cosmetics_info VALUES(1,'lakme.com','Lakme','Sun Screen','2024-03-15','2026-03-15',TRUE,TRUE,'Dry',216,8),
(2,'ysl.com', 'YSL', 'Highlighter', '2024-03-17', '2025-03-25', TRUE, FALSE, 'All',75,10),
(3,'ponds.com', 'Ponds', 'Set Primer', '2023-11-12', '2025-11-12', TRUE, FALSE, 'Oily',75, 7),
(4,'smashbox.com', 'Smashbox', 'Finish Primer', '2024-01-08', '2026-01-08', TRUE, FALSE, 'Oily',100, 7),
(5,'dotandkey.com', 'Dot and key', 'Double Foundation', '2023-12-28', '2025-12-28', TRUE, FALSE, 'All',99, 8),
(6,'nyx.com', 'NYX', 'Matte Lip Cream', '2024-02-03', '2026-02-03', TRUE, TRUE, 'All',99, 9),
(7,'nykaa.com', 'Nykaa', 'eyeliner', '2023-09-18', '2025-09-18', TRUE, FALSE, 'Sensitive',105, 9),
(8,'ponds.com', 'Ponds', 'Vitamin C cream', '2024-01-25', '2026-01-25', TRUE, TRUE, 'All',250, 10),
(9,'nykaa.com', 'Nykaa', 'Maskara', '2023-10-20', '2025-10-20', FALSE, FALSE, 'Dry',175, 10),
(10,'ponds.com', 'Ponds', 'Radiant Concealer', '2024-03-05', '2026-03-05', TRUE, FALSE, 'All',175, 8),
(11,'ponds.com', 'Ponds', 'Magic Cream', '2023-09-15', '2025-09-15', TRUE, FALSE, 'Sensitive',99, 7),
(12,'huda.com','Huda Beauty', 'Nude lipstick', '2024-02-28', '2026-02-28', TRUE, FALSE, 'All',72,9),
(13,'huda.com','Huda Beauty', 'Hypercurl Mascara', '2023-12-05', '2025-12-05', TRUE, TRUE, 'All',85, 10),
(14,'garnier.com', 'Garnier', 'Compact Powder', '2023-11-05', '2025-11-05', FALSE, FALSE, 'Normal',65, 3),
(15,'garnier.com', 'Garnier', 'Colorstay Eyeliner', '2024-03-12', '2026-03-12', TRUE, TRUE, 'All',85, 9),
(16,'dr.sheths.com', 'DR.sheth', 'Matte Blush', '2023-09-25', '2025-09-25', TRUE, FALSE, 'Dry',65, 8),
(17,'huda.com', 'Huda Beauty', 'Liquid Lipstick', '2024-01-30', '2026-01-30', TRUE, TRUE, 'All',99, 9),
(18,'ysl.com', 'YSL', 'BB Cream', '2023-10-15', '2025-10-15', FALSE, FALSE, 'Sensitive',250, 10),
(19,'garnier.com', 'Garnier', 'Wallnut Scrubber', '2024-02-05', '2026-02-05', TRUE, FALSE, 'Dry',100, 8),
(20,'dr.sheths.com', 'DR.sheth', 'Kajal', '2024-03-01', '2026-03-01', TRUE, TRUE, 'All',220, 10);

delete from cosmetics_info where product_id=1;
select * from cosmetics_info;
drop table cosmetics_info;
DESC cosmetics_info;

select count(product_id) from cosmetics_info where is_available=1;
Select price,product_id,product_name,brand_name  from cosmetics_info group by product_id having price>100;
select avg(price),product_id from cosmetics_info where product_id  between 5 and 11; 
select min(rating) as min_rate from cosmetics_info where product_id in(2,4,6,5,7,8,9,15,16);
select max(price)  from cosmetics_info where brand_name='Nykaa';
select product_id,product_name,brand_name,rating from cosmetics_info group by rating ;
select sum(price) ,product_name from cosmetics_info group by product_name;
select sum(price) from cosmetics_info;