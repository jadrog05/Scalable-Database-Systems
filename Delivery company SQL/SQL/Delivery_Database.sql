CREATE TABLE `Driver` (
	`Driver_ID` INT NOT NULL AUTO_INCREMENT,
	`Name` varchar(255) NOT NULL,
	PRIMARY KEY (`Driver_ID`)
);

CREATE TABLE `Vehicle` (
	`Vehicle_ID` INT NOT NULL AUTO_INCREMENT,
	`Numberplate` varchar(8) NOT NULL,
	PRIMARY KEY (`Vehicle_ID`)
);

CREATE TABLE `Shift` (
`Driver_ID` INT NOT NULL,
`Vehicle_ID` INT NOT NULL,
`Shift_ID` INT NOT NULL AUTO_INCREMENT,
`Shift_time` varchar(10) NOT NULL,
`Parcels_to_Deliver` INT NOT NULL,
PRIMARY KEY (`Shift_ID`)
);

CREATE TABLE `GPS` (
`Shift_ID` INT NOT NULL,
`GPS_ID` INT NOT NULL,
`Date` DATE NOT NULL,
`Time` TIME NOT NULL,
`Location` varchar(255) NOT NULL,
PRIMARY KEY (`Shift_ID`,`GPS_ID`)
);

ALTER TABLE `Shift` ADD CONSTRAINT `Shift_fk0` FOREIGN KEY (`Driver_ID`) REFERENCES `Driver`(`Driver_ID`);

ALTER TABLE `Shift` ADD CONSTRAINT `Shift_fk1` FOREIGN KEY (`Vehicle_ID`) REFERENCES `Vehicle`(`Vehicle_ID`);

ALTER TABLE `Shift` ADD CONSTRAINT `Shift_fk2` FOREIGN KEY (`Shift_ID`) REFERENCES `GPS`(`Shift_ID`);



INSERT INTO Driver (Name)
VALUES
	('Pete'),('John'),('Steve'),('Perry'),('Malcolm'),('Phineas'),('Ferb'),('Candice'),('Junior'),('Julio');


INSERT INTO Vehicle (Numberplate)
VALUES
	('N975 CS'),('I500 IE'),('R412 4TH'),('W399 T16'),('F312 CS');


INSERT INTO GPS (Shift_ID, GPS_ID, Date, Time, Location)
		VALUES
					    (1,1,'2021-01-20','08:00:00','Huntingdon'),
					    (2,1,'2021-01-20','08:00:00','Ramsey'),
					    (3,1,'2021-01-20','08:00:00','Stives'),
					    (4,1,'2021-01-20','08:00:00','Swavesy'),
					    (5,1,'2021-01-20','08:00:00','Longstanton'),
					    (6,1,'2021-01-20','12:00:00','Somersham'),
					    (7,1,'2021-01-20','12:00:00','Brampton'),
					    (8,1,'2021-01-20','12:00:00','Huntingdon'),
					    (9,1,'2021-01-20','12:00:00','Ramsey'),
					    (10,1,'2021-01-20','12:00:00','Stives'),
					    (11,1,'2021-01-21','08:00:00','Swavesy'),
					    (12,1,'2021-01-21','08:00:00','Longstanton'),
					    (13,1,'2021-01-21','08:00:00','Somersham'),
					    (14,1,'2021-01-21','08:00:00','Brampton'),
					    (15,1,'2021-01-21','08:00:00','Huntingdon'),
					    (16,1,'2021-01-21','12:00:00','Swavesy'),
					    (17,1,'2021-01-21','12:00:00','Longstanton'),
					    (18,1,'2021-01-21','12:00:00','Somersham'),
					    (19,1,'2021-01-21','12:00:00','Brampton'),
					    (20,1,'2021-01-21','12:00:00','Ramsey'),
					    (21,1,'2021-01-22','08:00:00','Stives'),
					    (22,1,'2021-01-22','08:00:00','Cherry Hinton'),
					    (23,1,'2021-01-22','08:00:00','Cambridge'),
					    (24,1,'2021-01-22','08:00:00','Haverhill'),
					    (25,1,'2021-01-22','08:00:00','Huntingdon'),
					    (26,1,'2021-01-22','12:00:00','Swavesy'),
					    (27,1,'2021-01-22','12:00:00','Longstanton'),
					    (28,1,'2021-01-22','12:00:00','Somersham'),
					    (29,1,'2021-01-22','12:00:00','Brampton'),
					    (30,1,'2021-01-22','12:00:00','Ramsey'),
					    (31,1,'2021-01-23','08:00:00','Stives'),
					    (32,1,'2021-01-23','08:00:00','Cherry Hinton'),
					    (33,1,'2021-01-23','08:00:00','Cambridge'),
					    (34,1,'2021-01-23','08:00:00','Haverhill'),
					    (35,1,'2021-01-23','08:00:00','Huntingdon'),
					    (36,1,'2021-01-23','12:00:00','Swavesy'),
					    (37,1,'2021-01-23','12:00:00','Longstanton'),
					    (38,1,'2021-01-23','12:00:00','Somersham'),
					    (39,1,'2021-01-23','12:00:00','Brampton'),
					    (40,1,'2021-01-23','12:00:00','Ramsey'),
					    (41,1,'2021-01-24','08:00:00','Stives'),
					    (42,1,'2021-01-24','08:00:00','Haverhill'),
					    (43,1,'2021-01-24','08:00:00','Cherry Hinton'),
					    (44,1,'2021-01-24','08:00:00','Cambridge'),
					    (45,1,'2021-01-24','08:00:00','Haverhill'),
					    (46,1,'2021-01-24','12:00:00','Huntingdon'),
					    (47,1,'2021-01-24','12:00:00','Ramsey'),
					    (48,1,'2021-01-24','12:00:00','Stives'),
					    (49,1,'2021-01-24','12:00:00','Swavesy'),
					    (50,1,'2021-01-24','12:00:00','Longstanton'),
					    (1,2,'2021-01-20','09:00:00','Somersham'),
					    (2,2,'2021-01-20','09:00:00','Brampton'),
					    (3,2,'2021-01-20','09:00:00','Cherry Hinton'),
					    (4,2,'2021-01-20','09:00:00','Cambridge'),
					    (5,2,'2021-01-20','09:00:00','Haverhill'),
					    (6,2,'2021-01-20','13:00:00','Cherry Hinton'),
					    (7,2,'2021-01-20','13:00:00','Cambridge'),
					    (8,2,'2021-01-20','13:00:00','Haverhill'),
					    (9,2,'2021-01-20','13:00:00','Huntingdon'),
					    (10,2,'2021-01-20','13:00:00','Swavesy'),
					    (11,2,'2021-01-21','09:00:00','Longstanton'),
					    (12,2,'2021-01-21','09:00:00','Somersham'),
					    (13,2,'2021-01-21','09:00:00','Brampton'),
					    (14,2,'2021-01-21','09:00:00','Ramsey'),
					    (15,2,'2021-01-21','09:00:00','Stives'),
					    (16,2,'2021-01-21','13:00:00','Swavesy'),
					    (17,2,'2021-01-21','13:00:00','Longstanton'),
					    (18,2,'2021-01-21','13:00:00','Somersham'),
					    (19,2,'2021-01-21','13:00:00','Brampton'),
					    (20,2,'2021-01-21','13:00:00','Huntingdon'),
					    (21,2,'2021-01-22','09:00:00','Ramsey'),
					    (22,2,'2021-01-22','09:00:00','Stives'),
					    (23,2,'2021-01-22','09:00:00','Swavesy'),
					    (24,2,'2021-01-22','09:00:00','Longstanton'),
					    (25,2,'2021-01-22','09:00:00','Somersham'),
					    (26,2,'2021-01-22','13:00:00','Cherry Hinton'),
					    (27,2,'2021-01-22','13:00:00','Cambridge'),
					    (28,2,'2021-01-22','13:00:00','Haverhill'),
					    (29,2,'2021-01-22','13:00:00','Huntingdon'),
					    (30,2,'2021-01-22','13:00:00','Swavesy'),
					    (31,2,'2021-01-23','09:00:00','Longstanton'),
					    (32,2,'2021-01-23','09:00:00','Somersham'),
					    (33,2,'2021-01-23','09:00:00','Huntingdon'),
					    (34,2,'2021-01-23','09:00:00','Swavesy'),
					    (35,2,'2021-01-23','09:00:00','Longstanton'),
					    (36,2,'2021-01-23','13:00:00','Somersham'),
					    (37,2,'2021-01-23','13:00:00','Brampton'),
					    (38,2,'2021-01-23','13:00:00','Ramsey'),
					    (39,2,'2021-01-23','13:00:00','Stives'),
					    (40,2,'2021-01-23','13:00:00','Cambridge'),
					    (41,2,'2021-01-24','09:00:00','Haverhill'),
					    (42,2,'2021-01-24','09:00:00','Huntingdon'),
					    (43,2,'2021-01-24','09:00:00','Swavesy'),
					    (44,2,'2021-01-24','09:00:00','Longstanton'),
					    (45,2,'2021-01-24','09:00:00','Somersham'),
					    (46,2,'2021-01-24','13:00:00','Brampton'),
					    (47,2,'2021-01-24','13:00:00','Ramsey'),
					    (48,2,'2021-01-24','13:00:00','Stives'),
					    (49,2,'2021-01-24','13:00:00','Brampton'),
					    (50,2,'2021-01-24','13:00:00','Ramsey'),
					    (1,3,'2021-01-20','10:00:00','Stives'),
					    (2,3,'2021-01-20','10:00:00','Huntingdon'),
					    (3,3,'2021-01-20','10:00:00','Swavesy'),
					    (4,3,'2021-01-20','10:00:00','Longstanton'),
					    (5,3,'2021-01-20','10:00:00','Somersham'),
					    (6,3,'2021-01-20','14:00:00','Brampton'),
					    (7,3,'2021-01-20','14:00:00','Ramsey'),
					    (8,3,'2021-01-20','14:00:00','Stives'),
					    (9,3,'2021-01-20','14:00:00','Swavesy'),
					    (10,3,'2021-01-20','14:00:00','Longstanton'),
					    (11,3,'2021-01-21','10:00:00','Somersham'),
					    (12,3,'2021-01-21','10:00:00','Huntingdon'),
					    (13,3,'2021-01-21','10:00:00','Swavesy'),
					    (14,3,'2021-01-21','10:00:00','Longstanton'),
					    (15,3,'2021-01-21','10:00:00','Somersham'),
					    (16,3,'2021-01-21','14:00:00','Brampton'),
					    (17,3,'2021-01-21','14:00:00','Ramsey'),
					    (18,3,'2021-01-21','14:00:00','Cherry Hinton'),
					    (19,3,'2021-01-21','14:00:00','Cambridge'),
					    (20,3,'2021-01-21','14:00:00','Haverhill'),
					    (21,3,'2021-01-22','10:00:00','Swavesy'),
					    (22,3,'2021-01-22','10:00:00','Longstanton'),
					    (23,3,'2021-01-22','10:00:00','Somersham'),
					    (24,3,'2021-01-22','10:00:00','Brampton'),
					    (25,3,'2021-01-22','10:00:00','Ramsey'),
					    (26,3,'2021-01-22','14:00:00','Cherry Hinton'),
					    (27,3,'2021-01-22','14:00:00','Cambridge'),
					    (28,3,'2021-01-22','14:00:00','Haverhill'),
					    (29,3,'2021-01-22','14:00:00','Cherry Hinton'),
					    (30,3,'2021-01-22','14:00:00','Cambridge'),
					    (31,3,'2021-01-23','10:00:00','Haverhill'),
					    (32,3,'2021-01-23','10:00:00','Huntingdon'),
					    (33,3,'2021-01-23','10:00:00','Swavesy'),
					    (34,3,'2021-01-23','10:00:00','Longstanton'),
					    (35,3,'2021-01-23','10:00:00','Somersham'),
					    (36,3,'2021-01-23','14:00:00','Huntingdon'),
					    (37,3,'2021-01-23','14:00:00','Swavesy'),
					    (38,3,'2021-01-23','14:00:00','Longstanton'),
					    (39,3,'2021-01-23','14:00:00','Somersham'),
					    (40,3,'2021-01-23','14:00:00','Brampton'),
					    (41,3,'2021-01-24','10:00:00','Cherry Hinton'),
					    (42,3,'2021-01-24','10:00:00','Cambridge'),
					    (43,3,'2021-01-24','10:00:00','Haverhill'),
					    (44,3,'2021-01-24','10:00:00','Huntingdon'),
					    (45,3,'2021-01-24','10:00:00','Swavesy'),
					    (46,3,'2021-01-24','14:00:00','Longstanton'),
					    (47,3,'2021-01-24','14:00:00','Somersham'),
					    (48,3,'2021-01-24','14:00:00','Brampton'),
					    (49,3,'2021-01-24','14:00:00','Huntingdon'),
					    (50,3,'2021-01-24','14:00:00','Swavesy'),
					    (1,4,'2021-01-20','11:00:00','Longstanton'),
					    (2,4,'2021-01-20','11:00:00','Somersham'),
					    (3,4,'2021-01-20','11:00:00','Brampton'),
					    (4,4,'2021-01-20','11:00:00','Ramsey'),
					    (5,4,'2021-01-20','11:00:00','Stives'),
					    (6,4,'2021-01-20','15:00:00','Cherry Hinton'),
					    (7,4,'2021-01-20','15:00:00','Longstanton'),
					    (8,4,'2021-01-20','15:00:00','Somersham'),
					    (9,4,'2021-01-20','15:00:00','Huntingdon'),
					    (10,4,'2021-01-20','15:00:00','Swavesy'),
					    (11,4,'2021-01-21','11:00:00','Longstanton'),
					    (12,4,'2021-01-21','11:00:00','Somersham'),
					    (13,4,'2021-01-21','11:00:00','Brampton'),
					    (14,4,'2021-01-21','11:00:00','Cherry Hinton'),
					    (15,4,'2021-01-21','11:00:00','Cambridge'),
					    (16,4,'2021-01-21','15:00:00','Haverhill'),
					    (17,4,'2021-01-21','15:00:00','Huntingdon'),
					    (18,4,'2021-01-21','15:00:00','Swavesy'),
					    (19,4,'2021-01-21','15:00:00','Longstanton'),
					    (20,4,'2021-01-21','15:00:00','Somersham'),
					    (21,4,'2021-01-22','11:00:00','Cherry Hinton'),
					    (22,4,'2021-01-22','11:00:00','Huntingdon'),
					    (23,4,'2021-01-22','11:00:00','Swavesy'),
					    (24,4,'2021-01-22','11:00:00','Longstanton'),
					    (25,4,'2021-01-22','11:00:00','Somersham'),
					    (26,4,'2021-01-22','15:00:00','Brampton'),
					    (27,4,'2021-01-22','15:00:00','Ramsey'),
					    (28,4,'2021-01-22','15:00:00','Stives'),
					    (29,4,'2021-01-22','15:00:00','Cherry Hinton'),
					    (30,4,'2021-01-22','15:00:00','Cambridge'),
					    (31,4,'2021-01-23','11:00:00','Haverhill'),
					    (32,4,'2021-01-23','11:00:00','Longstanton'),
					    (33,4,'2021-01-23','11:00:00','Huntingdon'),
					    (34,4,'2021-01-23','11:00:00','Swavesy'),
					    (35,4,'2021-01-23','11:00:00','Longstanton'),
					    (36,4,'2021-01-23','15:00:00','Somersham'),
					    (37,4,'2021-01-23','15:00:00','Brampton'),
					    (38,4,'2021-01-23','15:00:00','Ramsey'),
					    (39,4,'2021-01-23','15:00:00','Stives'),
					    (40,4,'2021-01-23','15:00:00','Haverhill'),
					    (41,4,'2021-01-24','11:00:00','Huntingdon'),
					    (42,4,'2021-01-24','11:00:00','Swavesy'),
					    (43,4,'2021-01-24','11:00:00','Longstanton'),
					    (44,4,'2021-01-24','11:00:00','Somersham'),
					    (45,4,'2021-01-24','11:00:00','Brampton'),
					    (46,4,'2021-01-24','15:00:00','Ramsey'),
					    (47,4,'2021-01-24','15:00:00','Stives'),
					    (48,4,'2021-01-24','15:00:00','Cherry Hinton'),
					    (49,4,'2021-01-24','15:00:00','Cambridge'),
					    (50,4,'2021-01-24','15:00:00','Haverhill');


INSERT INTO Shift (Driver_ID, Vehicle_ID, Shift_time, Parcels_to_Deliver)
VALUES
    (1,1,'Morning',60),
    (2,2,'Morning',57),
    (3,3,'Morning',46),
    (4,4,'Morning',32),
    (5,5,'Morning',48),
    (6,1,'Afternoon',62),
    (7,2,'Afternoon',39),
    (8,3,'Afternoon',60),
    (9,4,'Afternoon',57),
    (10,5,'Afternoon',46),
    (1,1,'Morning',32),
    (2,2,'Morning',48),
    (3,3,'Morning',62),
    (4,4,'Morning',39),
    (5,5,'Morning',60),
    (6,1,'Afternoon',57),
    (7,2,'Afternoon',46),
    (8,3,'Afternoon',32),
    (9,4,'Afternoon',48),
    (10,5,'Afternoon',62),
    (1,1,'Morning',39),
    (2,2,'Morning',60),
    (3,3,'Morning',57),
    (4,4,'Morning',46),
    (5,5,'Morning',32),
    (6,1,'Afternoon',48),
    (7,2,'Afternoon',62),
    (8,3,'Afternoon',39),
    (9,4,'Afternoon',60),
    (10,5,'Afternoon',57),
    (1,1,'Morning',46),
    (2,2,'Morning',32),
    (3,3,'Morning',48),
    (4,4,'Morning',62),
    (5,5,'Morning',39),
    (6,1,'Afternoon',60),
    (7,2,'Afternoon',57),
    (8,3,'Afternoon',46),
    (9,4,'Afternoon',32),
    (10,5,'Afternoon',48),
    (1,1,'Morning',62),
    (2,2,'Morning',39),
    (3,3,'Morning',60),
    (4,4,'Morning',57),
    (5,5,'Morning',46),
    (6,1,'Afternoon',32),
    (7,2,'Afternoon',48),
    (8,3,'Afternoon',62),
    (9,4,'Afternoon',39),
    (10,5,'Afternoon',12);

SELECT Driver.Name, Shift.Vehicle_ID, GPS.Location, GPS.Date, GPS.Time
FROM  Driver
INNER JOIN Shift ON Driver.Driver_ID=Shift.Driver_ID
INNER JOIN GPS ON Shift.Shift_ID=GPS.Shift_ID
WHERE Shift.Vehicle_ID = 3 AND GPS.Time = '11:00:00' AND GPS.Date = '2021-01-21';

SELECT DISTINCT Driver.Name, Shift.Parcels_to_Deliver, GPS.Date
FROM  Shift
INNER JOIN Driver ON Shift.Driver_ID=Driver.Driver_ID
INNER JOIN GPS ON Shift.Shift_ID=GPS.Shift_ID
WHERE Driver.Name = 'Candice' AND GPS.Date = '2021-01-23';

SELECT Name FROM Driver;

SELECT DISTINCT Driver.Name
FROM  Driver
INNER JOIN Shift ON Driver.Driver_ID=Shift.Driver_ID
WHERE Shift.Shift_time = 'Morning'
EXCEPT
SELECT DISTINCT Driver.Name
FROM  Driver
INNER JOIN Shift ON Driver.Driver_ID=Shift.Driver_ID
WHERE Shift.Shift_time = 'Afternoon';


DELIMITER //
	CREATE OR REPLACE PROCEDURE Driver_Parcels (Driver_Name varchar(10),Day DATE)
	BEGIN
    SELECT DISTINCT Driver.Name, Shift.Parcels_to_Deliver, GPS.Date
		FROM  Shift
		INNER JOIN Driver ON Shift.Driver_ID=Driver.Driver_ID
		INNER JOIN GPS ON Shift.Shift_ID=GPS.Shift_ID
		WHERE Driver.Name = Driver_Name AND GPS.Date = Day;
END;
//

DELIMITER //
	CREATE OR REPLACE PROCEDURE Driver_Hourly_Location (Car_Num INT, Hour Time, Day DATE)
	BEGIN
		SELECT Driver.Name, Shift.Vehicle_ID, GPS.Location, GPS.Date, GPS.Time
		FROM  Driver
		INNER JOIN Shift ON Driver.Driver_ID=Shift.Driver_ID
		INNER JOIN GPS ON Shift.Shift_ID=GPS.Shift_ID
		WHERE Shift.Vehicle_ID = Car_Num AND  GPS.Time = Hour AND GPS.Date = Day;
END;
//

DELIMITER ;
