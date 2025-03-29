
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

Select sum(Route_id) as route group by ticket_cost having route >50;



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






