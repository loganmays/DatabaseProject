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

Create Table Singles(
	Player_Id INT FOREIGN KEY REFERENCES Players(player_id),
	Team_Id INT FOREIGN KEY REFERENCES Teams(team_id),
	Num_Of_Singles INT
)

Create Table Doubles(
	Player_Id INT FOREIGN KEY REFERENCES Players(player_id),
	Team_Id INT FOREIGN KEY REFERENCES Teams(team_id),
	Num_Of_Doubles INT
)

Create Table Triples(
	Player_Id INT FOREIGN KEY REFERENCES Players(player_id),
	Team_Id INT FOREIGN KEY REFERENCES Teams(team_id),
	Num_Of_Triples INT
)

Create Table Homeruns(
	Player_Id INT FOREIGN KEY REFERENCES Players(player_id),
	Team_Id INT FOREIGN KEY REFERENCES Teams(team_id),
	Num_Of_Homeruns INT
)

Create Table Hitter_Strikeouts(
	Player_Id INT FOREIGN KEY REFERENCES Players(player_id),
	Team_Id INT FOREIGN KEY REFERENCES Teams(team_id),
	Player_Hitter_Strikeout INT
)

Create Table Pitch_Strikeouts(
	Player_Id INT FOREIGN KEY REFERENCES Players(player_id),
	Team_Id INT FOREIGN KEY REFERENCES Teams(team_id),
	Player_Pitch_Strikeout INT
)

Create Table Average(
	Player_Id INT FOREIGN KEY REFERENCES Players(player_id),
	Team_Id INT FOREIGN KEY REFERENCES Teams(team_id),
	Player_Avg DECIMAL (4,3)
)

Create Table Hitter_Walks(
	Player_Id INT FOREIGN KEY REFERENCES Players(player_id),
	Team_Id INT FOREIGN KEY REFERENCES Teams(team_id),
	Player_Hit_Walks INT
)

Create Table Pitch_Walks(
	Player_Id INT FOREIGN KEY REFERENCES Players(player_id),
	Team_Id INT FOREIGN KEY REFERENCES Teams(team_id),
	Player_Pitch_Walks INT
)

Create Table OnBasePercentage(
	Player_Id INT FOREIGN KEY REFERENCES Players(player_id),
	Team_Id INT FOREIGN KEY REFERENCES Teams(team_id),
	Player_OBP DECIMAL (4,3)
)

Create Table Slugging(
	Player_Id INT FOREIGN KEY REFERENCES Players(player_id),
	Team_Id INT FOREIGN KEY REFERENCES Teams(team_id),
	Player_Slugging DECIMAL (4,3)
)

Create Table Pitch_ERA(
	Player_Id INT FOREIGN KEY REFERENCES Players(player_id),
	Team_Id INT FOREIGN KEY REFERENCES Teams(team_id),
	Player_ERA DECIMAL (5,3)
)

Create Table Pitch_IP(
	Player_Id INT FOREIGN KEY REFERENCES Players(player_id),
	Team_Id INT FOREIGN KEY REFERENCES Teams(team_id),
	Player_IP DECIMAL (6,3)
)

