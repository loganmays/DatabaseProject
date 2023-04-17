Create database BaseballStats
Use BaseballStats

Create Table Teams(
	Team_Id	INT PRIMARY KEY,
	Team_Name VARCHAR(50),
	Team_Abr VARCHAR(50),
	Team_City VARCHAR(100),
	Win INT,
	Loss INT
)

INSERT INTO Teams (Team_Id, Team_Name, Team_Abr, Team_City, Win, Loss) VALUES 
	(1, 'Angels', 'LAA', 'Los Angeles', 7, 7),  
	(2, 'Astros', 'HOU', 'Houston', 6, 8 ),
	(3, 'Athletics', 'OAK', 'Oakland', 3, 12 ),
	(4, 'Blue Jays', 'TOR', 'Toronto', 10, 5 ),
	(5, 'Guardians', 'CLE', 'Cleveland', 8, 6 ),
	(6, 'Mariners', 'SEA', 'Seattle', 6, 8 ),
	(7, 'Orioles', 'BAL', 'Baltimore', 8, 7 ),
	(8, 'Rangers', 'TEX', 'Arlington', 8, 5 ),
	(9, 'Rays', 'TB', 'Tampa Bays', 13, 2 ),
	(10, 'Red Sox', 'BOS', 'Boston', 7, 8 ),
	(11, 'Royals', 'KC', 'Kansas City', 4, 10 ),
	(12, 'Tigers', 'DET', 'Detroits', 5, 9 ),
	(13, 'Twins', 'MIN', 'Minnesota', 10, 5 ),
	(14, 'White Sox', 'CWS', 'Chicago', 6, 9 ),
	(15, 'Yankees', 'NYY', 'New York', 9, 6 );

Create Table Players(
	Player_Id INT PRIMARY KEY,
	Player_Name VARCHAR(50),
	Player_Num INT,
	Player_Pos VARCHAR(50),
	Team_Id INT FOREIGN KEY REFERENCES Teams(team_id)
)

Create Table Hitter_Stats(
	Player_Id INT FOREIGN KEY REFERENCES Players(player_id),
	Team_Id INT FOREIGN KEY REFERENCES Teams(team_id),
	Num_Of_RBI INT,
	Num_Of_Doubles INT,
	Num_Of_Triples INT,
	Num_Of_Homeruns INT,
	Player_Hitter_Strikeout INT,
	Player_Avg DECIMAL (4,3),
	Player_Hit_Walks INT,
	Player_OBP DECIMAL (4,3),
	Player_Slugging DECIMAL (4,3)
);

insert into Hitter_Stats (Player_Id,Team_Id,Num_Of_RBI,Num_Of_Doubles,Num_Of_Triples,Num_Of_Homeruns,Player_Hitter_Strikeout,Player_Avg,Player_Hit_Walks,Player_OBP,Player_Slugging) Values
	(2, 1, 6),
	(3, 1, 9),
	(4, 1, 9),
	(5, 1, 7),
	(6, 1, 11),
	(7, 1, 8),
	(8, 1, 3),
	(9, 1, 0),
	(10, 1, 0),
	(12, 2, 2),
	(13, 2, 6),
	(14, 2, 17),
	(15, 2, 4),
	(16, 2, 13),
	(17, 2, 7),
	(18, 2, 2),
	(19, 2, 9),
	(20, 2, 0),
	(22, 3, 5),
	(23, 3, 7),
	(24, 3, 11),
	(25, 3, 4),
	(26, 3, 3),
	(27, 3, 4),
	(28, 3, 3),
	(29, 3, 2),
	(30, 3, 7),
	(32, 4, 8),
	(33, 4, 11),
	(34, 4, 7),
	(35, 4, 4),
	(36, 4, 15),
	(37, 4, 9),
	(38, 4, 6),
	(39, 4, 4),
	(40, 4, 6),
	(42, 5, 8),
	(43, 5, 4),
	(44, 5, 9),
	(45, 5, 9),
	(46, 5, 5),
	(47, 5, 5),
	(48, 5, 6),
	(49, 5, 4),
	(50, 5, 2),
	(52, 6, 5),
	(53, 6, 11),
	(54, 6, 11),
	(55, 6, 8),
	(56, 6, 8),
	(57, 6, 7),
	(58, 6, 1),
	(59, 6, 3),
	(60, 6, 2),
	(62, 7, 11),
	(63, 7, 13),
	(64, 7, 19),
	(65, 7, 5),
	(66, 7, 6),
	(67, 7, 5),
	(68, 7, 4),
	(69, 7, 1),
	(70, 7, 11),
	(72, 8, 8),
	(73, 8, 0),
	(74, 8, 13),
	(75, 8, 14),
	(76, 8, 6),
	(77, 8, 6),
	(78, 8, 5),
	(79, 8, 4),
	(80, 8, 0),
	(82, 9, 9),
	(83, 9, 12),
	(84, 9, 10),
	(85, 9, 17),
	(86, 9, 7),
	(87, 9, 3),
	(88, 9, 4),
	(89, 9, 3),
	(90, 9, 2),
	(92, 10, 6),
	(93, 10, 4),
	(94, 10, 6),
	(95, 10, 15),
	(96, 10, 7),
	(97, 10, 3),
	(98, 10, 7),
	(99, 10, 2),
	(100, 10, 4),
	(102, 11, 6),
	(103, 11, 6),
	(104, 11, 4),
	(105, 11, 7),
	(106, 11, 2),
	(107, 11, 4),
	(108, 11, 2),
	(109, 11, 4),
	(110, 11, 0),
	(112, 12, 9),
	(113, 12, 4),
	(114, 12, 5),
	(115, 12, 3),
	(116, 12, 8),
	(117, 12, 0),
	(118, 12, 2),
	(119, 12, 3),
	(120, 12, 4),
	(122, 13, 1),
	(123, 13, 6),
	(124, 13, 5),
	(125, 13, 9),
	(126, 13, 6),
	(127, 13, 3),
	(128, 13, 1),
	(129, 13, 3),
	(130, 13, 7),
	(132, 14, 4),
	(133, 14, 11),
	(134, 14, 10),
	(135, 14, 4),
	(136, 14, 6),
	(137, 14, 6),
	(138, 14, 5),
	(139, 14, 1),
	(140, 14, 4),
	(142, 15, 4),
	(143, 15, 8),
	(144, 15, 9),
	(145, 15, 11),
	(146, 15, 6),
	(147, 15, 11),
	(148, 15, 5),
	(149, 15, 4),
	(150, 15, 1);
	Player_Slugging DECIMAL (4,3);
)

insert into Hitter_Stats (Player_Id,Team_Id,Num_Of_RBI,Num_Of_Doubles,Num_Of_Triples,Num_Of_Homeruns,Player_Hitter_Strikeout,Player_Avg,Player_Hit_Walks,Player_OBP,Player_Slugging) Values
	(2, 1, 6, 1, 0, 2, 13, .254, 7, .343, .373),
	(3, 1, 9, 5, 0, 3, 16, .278, 13, .435, .537),
	(4, 1, 9, 2, 0, 3, 16, .288, 8, .383, .500),
	(5, 1, 7, 1, 0, 0, 2, .286, 7, .421, .321),
	(6, 1, 11, 4, 0, 3, 10, .268, 9, .369, .500),
	(7, 1, 8, 2, 0, 1, 11, .346, 2, .370, .442),
	(8, 1, 3, 3, 0, 1, 16, .196, 2, .240, .326),
	(9, 1, 0, 0, 0, 0, 2, .000, 0, .000, .000),
	(10, 1, 0, 0, 0, 0, 6, .000, 0, .154, .000),

	(12, 2, 2, 3, 0, 0, 1, .356, 2, .383, .422),
	(13, 2, 6, 1, 0, 2, 10, .203, 11, .338, .322),
	(14, 2, 17, 3, 0, 4, 14, .292, 8, .407, .604),
	(15, 2, 4, 2, 0, 0, 18, .254, 3, .299, .286),
	(16, 2, 13, 2, 0, 4, 9, .314, 12, .438, .588),
	(17, 2, 7, 5, 0, 2, 18, .222, 4, .290, .397),
	(18, 2, 2, 2, 0, 1, 11, .289, 0, .282, .421),
	(19, 2, 9, 1, 0, 0, 5, .222, 1, .273, .278),
	(20, 2, 0, 0, 0, 0, 9, .174, 2, .240, .174),

	(22, 3, 5, 2, 0, 0, 9, .179, 7, .266, .214),
	(23, 3, 7, 2, 0, 1, 15, .208, 5, .278, .313),
	(24, 3, 11, 1, 0, 4, 7, .313, 4, .378, .719),
	(25, 3, 4, 4, 1, 2, 15, .222, 5, .300, .444),
	(26, 3, 3, 2, 0, 1, 13, .192, 5, .276, .288),
	(27, 3, 4, 2, 0, 1, 12, .256, 3, .298, .372),
	(28, 3, 3, 1, 0, 0, 13, .250, 3, .323, .286),
	(29, 3, 2, 0, 0, 1, 2, .600, 1, .647, .800),
	(30, 3, 7, 4, 0, 0, 9, .314, 3, .407, .392),

	(32, 4, 8, 0, 0, 3, 13, .242, 7, .315, .379),
	(33, 4, 11, 4, 0, 4, 7, .375, 2, .400, .597),
	(34, 4, 7, 1, 0, 2, 6, .387, 9, .473, .500),
	(35, 4, 4, 3, 0, 1, 15, .264, 8, .365, .377),
	(36, 4, 15, 8, 0, 3, 12, .421, 7, .484, .719),
	(37, 4, 9, 0, 0, 1, 8, .243, 8, .383, .324),
	(38, 4, 6, 3, 0, 0, 8, .273, 3, .320, .341),
	(39, 4, 4, 0, 0, 0, 9, .107, 3, .194, .107),
	(40, 4, 6, 3, 1, 1, 12, .327, 0, .327, .490),

	(42, 5, 8, 2, 1, 0, 8, .258, 11, .354, .318),
	(43, 5, 4, 2, 1, 1, 17, .222, 5, .275, .333),
	(44, 5, 9, 6, 1, 1, 5, .290, 12, .400, .468),
	(45, 5, 9, 0, 0, 2, 9, .173, 6, .250, .288),
	(46, 5, 5, 5, 0, 1, 15, .190, 10, .304, .328),
	(47, 5, 5, 5, 0, 1, 14, .286, 5, .357, 413),
	(48, 5, 6, 4, 0, 0, 4, .286, 3, .350, .400),
	(49, 5, 4, 3, 0, 0, 12, .333, 9, .443, .392),
	(50, 5, 2, 1, 0, 0, 4, .143, 1, .250, .214),

	(52, 6, 5, 5, 1, 2, 20, .239, 5, .299, .423),
	(53, 6, 11, 7, 0, 1, 8, .328, 8, .427, .484),
	(54, 6, 11, 3, 0, 2, 21, .292, 4, .338, .431),
	(55, 6, 8, 4, 0, 1, 14, .220, 7, .316, .360),
	(56, 6, 8, 2, 0, 3, 19, .238, 1, .284, .413),
	(57, 6, 7, 5, 0, 4, 15, .362, 5, .423, .723),
	(58, 6, 1, 1, 0, 0, 4, .071, 1, .133, .143),
	(59, 6, 3, 0, 0, 0, 11, .114, 5, .216, .114),
	(60, 6, 2, 2, 0, 0, 12, .260, 11, .393, .360),

	(62, 7, 11, 2, 1, 2, 12, .237, 12, .366, .407),
	(63, 7, 13, 2, 0, 4, 9, .350, 16, .487, .583),
	(64, 7, 19, 4, 0, 6, 20, .217, 3, .243, .536),
	(65, 7, 5, 4, 0, 1, 22, .193, 6, .266, .316),
	(66, 7, 6, 6, 1, 3, 16, .350, 4, .391, .633),
	(67, 7, 5, 3, 0, 1, 5, .250, 6, .333, .375),
	(68, 7, 4, 3, 0, 1, 14, .250, 5, .388, .400),
	(69, 7, 1, 1, 0, 0, 2, .091, 0, .091, .182),
	(70, 7, 11, 3, 0, 3, 9, .381, 5, .440, .667),

	(72, 8, 8, 4, 0, 1, 12, .233, 3, .266, .350),
	(73, 8, 0, 0, 0, 0, 11, .154, 4, .371, .154),
	(74, 8, 13, 6, 0, 2, 11, .271, 4, .317, .475),
	(75, 8, 14, 1, 0, 3, 14, .218, 4, .267, .400),
	(76, 8, 6, 2, 0, 2, 14, .275, 4, .327, .431),
	(77, 8, 6, 1, 0, 2, 11, .270, 2, .308, .459),
	(78, 8, 5, 1, 0, 1, 12, .134, 4, .214, .243),
	(79, 8, 4, 2, 1, 0, 2, .389, 3, .476, .611),
	(80, 8, 0, 0, 0, 0, 5, .091, 0, .091, .091),

	(82, 9, 9, 2, 0, 4, 10, .255, 9, .381, .529),
	(83, 9, 12, 8, 0, 4, 12, .318, 4, .366, .621),
	(84, 9, 10, 0, 0, 3, 12, .255, 3, .327, .447),
	(85, 9, 17, 3, 0, 3, 12, .293, 5, .364, .500),
	(86, 9, 7, 3, 0, 3, 5, .333, 3, .395, .641),
	(87, 9, 3, 3, 0, 1, 7, .281, 5, .378, .469),
	(88, 9, 4, 1, 0, 2, 9, .211, 3, .279, .395),
	(89, 9, 3, 1, 0, 0, 8, .167, 4, .276, .208),
	(90, 9, 2, 0, 0, 0, 6, .333, 0, .333, .333),

	(92, 10, 6, 2, 1, 1, 7, .317, 7, .386, .429),
	(93, 10, 4, 4, 0, 1, 8, .271, 9, .389, .390),
	(94, 10, 6, 1, 0, 1, 10, .212, 7, .366, .333),
	(95, 10, 15, 3, 0, 7, 15, .262, 3, .308, .656),
	(96, 10, 7, 3, 0, 2, 15, .167, 7, .274, .333),
	(97, 10, 3, 2, 0, 0, 13, .170, 2, .204, .213),
	(98, 10, 7, 2, 0, 2, 16, .133, 4, .200, .311),
	(99, 10, 2, 3, 0, 0, 9, .156, 3, .250, .250),
	(100, 10, 4, 0, 0, 1, 9, .087, 1, .160, .217),

	(102, 11, 6, 2, 1, 2, 12, .274, 4, .318, .435),
	(103, 11, 6, 4, 0, 1, 23, .170, 9, .290, .302),
	(104, 11, 4, 5, 0, 3, 8, .269, 10, .387, .538),
	(105, 11, 7, 3, 0, 2, 12, .233, 1, .258, .383),
	(106, 11, 2, 4, 0, 0, 8, .233, 2, .283, .326),
	(107, 11, 4, 1, 0, 0, 18, .116, 0, .111, .140),
	(108, 11, 2, 0, 0, 1, 13, .167, 1, .189, .250),
	(109, 11, 4, 3, 1, 0, 8, .219, 6, .359, .375),
	(110, 11, 0, 1, 0, 0, 6, .115, 3, .233, .154),

	(112, 12, 9, 2, 0, 3, 14, .195, 7, .313, .463),
	(113, 12, 4, 0, 2, 1, 21, .232, 5, .295, .357),
	(114, 12, 5, 3, 0, 0, 10, .184, 5, .259, .245),
	(115, 12, 3, 3, 0, 2, 9, .212, 4, .316, .485),
	(116, 12, 8, 3, 0, 1, 14, .214, 1, .220, .321),
	(117, 12, 0, 1, 0, 0, 4, .250, 4, .375, .300),
	(118, 12, 2, 2, 0, 0, 8, .185, 2, .241, .259),
	(119, 12, 3, 2, 0, 0, 11, .194, 2, .237, .250),
	(120, 12, 4, 2, 0, 1, 13, .234, 3, .280, .340),

	(122, 13, 1, 0, 0, 1, 5, .111, 1, .159, .278),
	(123, 13, 6, 3, 0, 2, 14, .208, 4, .269, .396),
	(124, 13, 5, 1, 1, 2, 24, .236, 5, .300, .400),
	(125, 13, 9, 1, 1, 1, 23, .246, 9, .343, .351),
	(126, 13, 6, 2, 0, 0, 10, .226, 5, .284, .258),
	(127, 13, 3, 4, 0, 0, 9, .340, 2, .380, .426),
	(128, 13, 1, 0, 0, 1, 4, .091, 1, .130, .227),
	(129, 13, 3, 3, 0, 0, 8, .333, 5, .415, .417),
	(130, 13, 7, 2, 0, 3, 21, .268, 0, .281, .464),

	(132, 14, 4, 3, 0, 0, 8, .276, 4, .323, .328),
	(133, 14, 11, 4, 0, 5, 15, .277, 1, .288, .569),
	(134, 14, 10, 7, 0, 0, 13, .273, 9, .394, .400),
	(135, 14, 4, 2, 0, 0, 12, .161, 4, .257, .226),
	(136, 14, 6, 5, 0, 1, 14, .298, 4, .365, .468),
	(137, 14, 6, 2, 0, 4, 7, .350, 2, .391, 1.050),
	(138, 14, 5, 1, 0, 1, 12, .235, 4, .304, .314),
	(139, 14, 1, 1, 0, 1, 5, .188, 0, .188, .438),
	(140, 14, 4, 3, 0, 0, 11, .193, 3, .242, .246),

	(142, 15, 4, 4, 1, 2, 15, .283, 4, .353, .543),
	(143, 15, 8, 2, 0, 5, 22, .286, 10, .388, .589),
	(144, 15, 9, 2, 0, 4, 11, .315, 6, .406, .574),
	(145, 15, 11, 3, 0, 4, 11, .269, 2, .296, .558),
	(146, 15, 6, 2, 1, 2, 10, .286, 13, .435, .490),
	(147, 15, 11, 1, 0, 4, 12, .222, 2, .263, .583),
	(148, 15, 5, 2, 0, 0, 16, .245, 2, .255, .286),
	(149, 15, 4, 0, 0, 2, 8, .150, 1, .190, .450),
	(150, 15, 1, 1, 1, 1, 16, .191, 8, .309, .319);



Create Table Pitcher_Stats(
	Player_Id INT FOREIGN KEY REFERENCES Players(player_id),
	Team_Id INT FOREIGN KEY REFERENCES Teams(team_id),
	Player_Pitch_Strikeout INT,
	Player_Pitch_Walks INT,
	Player_ERA DECIMAL (5,3),
	Player_IP DECIMAL (6,3)
)

insert into Pitcher_Stats (Player_Id,Team_Id,Player_Pitch_Strikeout,Player_Pitch_Walks,Player_ERA,Player_IP) Values
	(1, 1, 10,8,6.75,14.2),
	(11, 2, 17,6,1.93,18.2),
	(21, 3, 10,9,11.37,12.2),
	(31, 4, 17,3,4.7,15.1),
	(41, 5, 8,2,6.92,13.0),
	(51, 6, 12,1,3.78,16.2),
	(61, 7, 13,6,4.18,23.2),
	(71, 8, 13,6,3.21,14.0),
	(81, 9, 6,2,4.15,8.2),
	(91, 10, 16,8,4.5,14.0),
	(101, 11, 16,2,3.94,16.0),
	(111, 12, 6,2,13.5,4.0),
	(121, 13, 18,5,4.11,15.1),
	(131, 14, 14,10,6.32,15.2),
	(141, 15, 19,5,3.86,14.0);


create table USER_Table
(
	username varchar(50),
	real_name varchar(50),
	favorite_team varchar(50),
);

create table notify
(
	user_message varchar(100)
);

insert into USER_Table(username,real_name,favorite_team) values
('bso','Braden Sonoda', 'Rangers'),
('3cpo','Colton Purvines','Orioles'),
('BigBuffetBoy85','Harrison Gallina','Mariners'),
('shay916','Shay Chowdhury','Guardians'),
('AshWinsCash','Ashleigh George','Yankees'),
('ILoveOreos89','Logan Mays','Angels');


