-- Create database
CREATE DATABASE goSchool;
USE goSchool;

-- add shuttle_bufs data
CREATE TABLE shuttle_bufs ( id INT PRIMARY KEY, arrive time);
INSERT INTO shuttle_bufs
VALUES
	(0, '07:55:00'),
	(1, '08:05:00'),
	(2, '08:15:00'),
	(3, '08:17:00'),
	(4, '08:20:00'),
	(5, '08:23:00'),
	(6, '08:25:00'),
	(7, '08:28:00'),
	(8, '08:30:00'),
	(9, '08:33:00'),
	(10, '08:35:00'),
	(11, '08:40:00'),
	(12, '08:45:00'),
	(13, '08:50:00'),
	(14, '08:55:00'),
	(15, '09:00:00'),
	(16, '09:03:00'),
	(17, '09:05:00'),
	(18, '09:08:00'),
	(19, '09:10:00'),
	(20, '09:13:00'),
	(21, '09:15:00'),
	(22, '09:18:00'),
	(23, '09:20:00'),
	(24, '09:23:00'),
	(25, '09:25:00'),
	(26, '09:28:00'),
	(27, '09:30:00'),
	(28, '09:33:00'),
	(29, '09:35:00'),
	(30, '09:38:00'),
	(31, '09:40:00'),
	(32, '09:45:00'),
	(33, '09:50:00'),
	(34, '09:55:00'),
	(35, '10:00:00'),
	(36, '10:05:00'),
	(37, '10:10:00'),
	(38, '10:15:00'),
	(39, '10:18:00'),
	(40, '10:20:00'),
	(41, '10:23:00'),
	(42, '10:25:00'),
	(43, '10:28:00'),
	(44, '10:30:00'),
	(45, '10:33:00'),
	(46, '10:35:00'),
	(47, '10:40:00'),
	(48, '10:50:00'),
	(49, '11:00:00'),
	(50, '11:10:00'),
	(51, '11:20:00'),
	(52, '11:25:00'),
	(53, '11:30:00'),
	(54, '11:35:00'),
	(55, '11:40:00'),
	(56, '11:50:00'),
	(57, '12:00:00'),
	(58, '12:10:00'),
	(59, '12:20:00'),
	(60, '12:25:00'),
	(61, '12:30:00'),
	(62, '12:35:00'),
	(63, '12:40:00'),
	(64, '12:50:00'),
	(65, '13:00:00'),
	(66, '13:10:00'),
	(67, '13:20:00'),
	(68, '13:25:00'),
	(69, '13:30:00'),
	(70, '13:35:00'),
	(71, '13:40:00'),
	(72, '13:50:00'),
	(73, '14:00:00'),
	(74, '14:10:00'),
	(75, '14:20:00'),
	(76, '14:30:00'),
	(77, '14:40:00'),
	(78, '14:50:00'),
	(79, '15:00:00'),
	(80, '15:10:00'),
	(81, '15:20:00'),
	(82, '15:30:00'),
	(83, '15:40:00'),
	(84, '15:50:00'),
	(85, '16:00:00'),
	(86, '16:05:00'),
	(87, '16:10:00'),
	(88, '16:15:00'),
	(89, '16:20:00'),
	(90, '16:25:00'),
	(91, '16:30:00'),
	(92, '16:35:00'),
	(93, '16:40:00'),
	(94, '16:45:00'),
	(95, '16:50:00'),
	(96, '16:55:00'),
	(97, '17:00:00'),
	(98, '17:05:00'),
	(99, '17:10:00'),
	(100, '17:15:00'),
	(101, '17:20:00'),
	(102, '17:25:00'),
	(103, '17:30:00'),
	(104, '17:35:00'),
	(105, '17:40:00'),
	(106, '17:45:00'),
	(107, '17:50:00'),
	(108, '17:55:00'),
	(109, '18:00:00'),
	(110, '18:05:00'),
	(111, '18:10:00'),
	(112, '18:15:00'),
	(113, '18:20:00'),
	(114, '18:25:00'),
	(115, '18:30:00'),
	(116, '18:35:00'),
	(117, '18:40:00'),
	(118, '18:45:00'),
	(119, '18:50:00'),
	(120, '18:55:00'),
	(121, '19:00:00'),
	(122, '19:20:00'),
	(123, '19:40:00'),
	(124, '20:00:00'),
	(125, '20:20:00'),
	(126, '20:40:00'),
	(127, '21:00:00'),
	(128, '21:25:00'),
	(129, '21:50:00'),
	(130, '22:15:00');

-- Add shuttle_domitory data with VIEW
CREATE VIEW shuttle_domitory
AS
SELECT id, DATE_ADD(arrive, INTERVAL 3 MINUTE) AS "arrive"
FROM shuttle_bufs;

-- Add shuttle_beomeoa data with VIEW
CREATE VIEW shuttle_beomeosa
AS
SELECT id, DATE_ADD(arrive, INTERVAL 7 MINUTE) AS "arrive"
FROM shuttle_bufs;

-- Add shuttle_namsan data with VIEW
CREATE VIEW shuttle_namsan
AS
SELECT id, DATE_ADD(arrive, INTERVAL 9 MINUTE) AS "arrive"
FROM shuttle_bufs;

-- Add shuttle_fireStation data with VIEW
CREATE VIEW shuttle_fire
AS
SELECT id, DATE_ADD(arrive, INTERVAL 13 MINUTE) AS "arrive"
FROM shuttle_bufs;

-- add town_bufs_namsan data
CREATE TABLE town_bufs_namsan (id INT PRIMARY KEY, arrive time);
INSERT INTO town_bufs_namsan
VALUES
(0, '07:55:00'),
	(1, '14:13:00'),
	(2, '18:13:00'),
	(3, '23:13:00');

-- add town_namsan_bufs data
CREATE TABLE town_namsan_bufs (id INT PRIMARY KEY, arrive time);
INSERT INTO town_namsan_bufs
VALUES
(0, '09:55:00'),
	(1, '13:55:00'),
	(2, '20:55:00'),
	(3, '23:20:00');

-- add town_bufs_guseo data
CREATE TABLE town_bufs_guseo (id INT PRIMARY KEY, arrive time);
INSERT INTO town_bufs_guseo
VALUES
(0, '10:10:00'),
	(1, '14:10:00'),
	(2, '19:10:00'),
	(3, '23:10:00');

-- add town_guseo_bufs data
CREATE TABLE town_guseo_bufs (id INT PRIMARY KEY, arrive time);
INSERT INTO town_guseo_bufs
VALUES
(0, '10:10:00'),
	(1, '14:10:00'),
	(2, '19:10:00'),
	(3, '23:10:00');

-- add town_bufs_namsan_holiday data
CREATE TABLE town_bufs_namsan_holiday (id INT PRIMARY KEY, arrive time);
INSERT INTO town_bufs_namsan_holiday
VALUES
(0, '07:55:00'),
	(1, '14:13:00'),
	(2, '18:13:00'),
	(3, '23:13:00');

-- add town_namsan_bufs_holiday data
CREATE TABLE town_namsan_bufs_holiday  (id INT PRIMARY KEY, arrive time);
INSERT INTO town_namsan_bufs_holiday
VALUES
(0, '09:55:00'),
	(1, '13:55:00'),
	(2, '20:55:00'),
	(3, '23:20:00');

-- add town_bufs_guseo_holiday data
CREATE TABLE town_bufs_guseo_holiday (id INT PRIMARY KEY, arrive time);
INSERT INTO town_bufs_guseo_holiday
VALUES
(0, '10:10:00'),
	(1, '14:10:00'),
	(2, '19:10:00'),
	(3, '23:10:00');

-- add town_guseo_bufs_holiday data
CREATE TABLE town_guseo_bufs_holiday (id INT PRIMARY KEY, arrive time);
INSERT INTO town_guseo_bufs_holiday
VALUES
(0, '10:10:00'),
	(1, '14:10:00'),
	(2, '19:10:00'),
	(3, '23:10:00');


-- city_301 table. Don't Touch This! 10=guseo, 62=nopo
CREATE TABLE city_301(idx INT PRIMARY KEY, min1 INT, min2 INT);
INSERT INTO city_301
VALUES
(10, NULL, NULL),
(62, NULL, NULL);

-- IP_LOG TABLE. Don't Touch This!
CREATE TABLE log (ip CHAR(20), date date, time time);

-- holiday TABLE
CREATE TABLE holiday (dateName char(50), locdate date PRIMARY KEY);

-- Create user and Add permission
CREATE USER 'readOnly'@'%' identified by '1234';
GRANT SELECT ON goSchool.* TO 'readOnly'@'%';
flush privileges;

CREATE USER 'apiUpdate'@'%' identified by '1234';
GRANT ALL PRIVILEGES ON goSchool.* TO 'apiUpdate'@'%';
flush privileges;

CREATE USER 'logWrite'@'%' identified by '1234';
GRANT ALL PRIVILEGES ON goSchool.log TO 'logWrite'@'%';
flush privileges;
