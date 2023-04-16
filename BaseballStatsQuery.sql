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
<<<<<<< Updated upstream
	Player_Pos VARCHAR(50),
=======
	Player_POS varchar(50),
>>>>>>> Stashed changes
	Team_Id INT FOREIGN KEY REFERENCES Teams(team_id)
)


Create Table Singles(
	Player_Id INT FOREIGN KEY REFERENCES Players(player_id),
	Team_Id INT FOREIGN KEY REFERENCES Teams(team_id),
<<<<<<< Updated upstream
	Num_Of_Singles INT
)
=======
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
>>>>>>> Stashed changes

insert into Singles (player_id,team_id,Num_Of_Singles) Values
(

)

Create Table Doubles(
	Player_Id INT FOREIGN KEY REFERENCES Players(player_id),
	Team_Id INT FOREIGN KEY REFERENCES Teams(team_id),
	Num_Of_Doubles INT
)

Insert into Doubles (player_id,team_id,Num_Of_Doubles) values
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
<<<<<<< Updated upstream
)
=======
)

Insert into Pitch_IP (player_id,team_id,Player_IP) values
(

)


>>>>>>> Stashed changes

<<<<<<< Updated upstream
=======
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


>>>>>>> Stashed changes
