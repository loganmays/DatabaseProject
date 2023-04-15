Create database BaseballStats

Create Table Teams(
	Team_Id	INT PRIMARY KEY,
	Team_Name VARCHAR(50),
	Team_Abr VARCHAR(50),
	Team_Address VARCHAR(100),
	Win INT,
	Loss INT
)

Create Table Players(
	Player_Id INT PRIMARY KEY,
	Player_Name VARCHAR(50),
	Player_Num INT,
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

Use BaseballStats

