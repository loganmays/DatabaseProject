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


Create Table RBI(
	Player_Id INT FOREIGN KEY REFERENCES Players(player_id),
	Team_Id INT FOREIGN KEY REFERENCES Teams(team_id),
	Num_Of_RBI INT
)

insert into RBI (player_id,team_id,Num_Of_RBI) Values
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


Create Table Doubles(
	Player_Id INT FOREIGN KEY REFERENCES Players(player_id),
	Team_Id INT FOREIGN KEY REFERENCES Teams(team_id),
	Num_Of_Doubles INT
)

Insert into Doubles (player_id,team_id,Num_Of_Doubles) Values
(

)

Create Table Triples(
	Player_Id INT FOREIGN KEY REFERENCES Players(player_id),
	Team_Id INT FOREIGN KEY REFERENCES Teams(team_id),
	Num_Of_Triples INT
)

Insert into Triples (player_id,team_id,Num_Of_Triples) values
(

)

Create Table Homeruns(
	Player_Id INT FOREIGN KEY REFERENCES Players(player_id),
	Team_Id INT FOREIGN KEY REFERENCES Teams(team_id),
	Num_Of_Homeruns INT
)

Insert into Homeruns (player_id,team_id,Num_Of_Homeruns) values
(

)

Create Table Hitter_Strikeouts(
	Player_Id INT FOREIGN KEY REFERENCES Players(player_id),
	Team_Id INT FOREIGN KEY REFERENCES Teams(team_id),
	Player_Hitter_Strikeout INT
)

Insert into Hitter_Strikeouts (player_id,team_id,Player_Hitter_Strikeout) values
(

)

Create Table Pitch_Strikeouts(
	Player_Id INT FOREIGN KEY REFERENCES Players(player_id),
	Team_Id INT FOREIGN KEY REFERENCES Teams(team_id),
	Player_Pitch_Strikeout INT
)

Insert into Pitch_Strikeouts(player_id,team_id,Player_Pitch_Strikeout) values
(

)

Create Table Average(
	Player_Id INT FOREIGN KEY REFERENCES Players(player_id),
	Team_Id INT FOREIGN KEY REFERENCES Teams(team_id),
	Player_Avg DECIMAL (4,3)
)

Insert into Average (player_id,team_id,Player_Avg) values
(

)

Create Table Hitter_Walks(
	Player_Id INT FOREIGN KEY REFERENCES Players(player_id),
	Team_Id INT FOREIGN KEY REFERENCES Teams(team_id),
	Player_Hit_Walks INT
)

Insert into Hitter_Walks (player_id,team_id,Player_Hit_Walks) values
(

)

Create Table Pitch_Walks(
	Player_Id INT FOREIGN KEY REFERENCES Players(player_id),
	Team_Id INT FOREIGN KEY REFERENCES Teams(team_id),
	Player_Pitch_Walks INT
)
Insert into Pitch_Walks (player_id,team_id,Player_Pitch_Walks) values
(

)

Create Table OnBasePercentage(
	Player_Id INT FOREIGN KEY REFERENCES Players(player_id),
	Team_Id INT FOREIGN KEY REFERENCES Teams(team_id),
	Player_OBP DECIMAL (4,3)
)

Insert into OnBasePercentage(player_id,team_id,Player_OBP) values
(

)

Create Table Slugging(
	Player_Id INT FOREIGN KEY REFERENCES Players(player_id),
	Team_Id INT FOREIGN KEY REFERENCES Teams(team_id),
	Player_Slugging DECIMAL (4,3)
)

Insert into Slugging (player_id,team_id,Player_Slugging) values
(

)

Create Table Pitch_ERA(
	Player_Id INT FOREIGN KEY REFERENCES Players(player_id),
	Team_Id INT FOREIGN KEY REFERENCES Teams(team_id),
	Player_ERA DECIMAL (5,3)
)

Insert into Pitch_ERA (player_id,team_id,Player_ERA) values
(

)

Create Table Pitch_IP(
	Player_Id INT FOREIGN KEY REFERENCES Players(player_id),
	Team_Id INT FOREIGN KEY REFERENCES Teams(team_id),
	Player_IP DECIMAL (6,3)
)

Insert into Pitch_IP (player_id,team_id,Player_IP) values
(

)
