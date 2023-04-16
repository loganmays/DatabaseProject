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
  Player_Pos VARCHAR(50),
	Team_Id INT FOREIGN KEY REFERENCES Teams(team_id)

)
INSERT INTO Players( Player_id, Player_name, Player_Num,Player_Pos, Team_Id ) values ( 1,Tyler Anderson, 32, Pitcher, 1), (2, Taylor Ward,3, LeftField, 1), (3, Mike Trout, 27, CenterField, 1), (4, Shohei Ohtani, 17, DesignatedHitter, 1), (5, Anthony Rendon, 6, ThirdBase, 1), (6, Hunter Renfroe, 12, RightField, 1), (7, Gio Urshela, 10, FirstBase,1), (8, Brandon Drury, 23, 2B, 1), (9, Zach Neto, 9, ShortStop,1), (10, Matt Thaiss, 21, Catcher, 1),(11,Hunter Brown, 58,Pitcher, 2),(12,Mauricio Dubon, 1, SecondBase, 2), (13, Alex Bregman, 2, ThirdBase, 2), (14,Yordan Alvarez,44,DesignatedHitter, 2),(15,Jose Abreu,79,FirstBase, 2),(16,Kyle Tucker, 30,RightField,2), (17,Jeremy Pena,3,ShortStop, 2),(18,Corey Julks, 9, LeftField,2),(19,Yainer Diaz,21,Catcher),(20,Jake Meyers,6, CenterField,2),(21,Shintaro Fujinami,42, Pitcher, 3), (22,Tony Kemp, 5, SecondBase, 3), (23, Jace Peterson, 6, ThirdBase, 3), (24, Brent Rooker, 25, RightField, 3),(25 ,Ramon Laureano, 22, RightField, 3) (26, Aledmys Diaz,12 ,ShortStop, 3), (27, Jesus Aguilar, 99, FirstBase, 3), (28, Conner Capel, 21, RightField,3), (29, Carlos Perez, 44, Catcher, 3), (30, Esteury Ruiz,1,CenterField,3), (31, Yusei Kikuchi, 16, Pitcher, 4), (32, George Springer, 4, RightField, 4), (33, Bo Bichette, 11, ShortStop, 4), (34, Vladimir Guerrero Jr, 27, FirstBase, 4), (35, Daulton Varsho,25, LeftField, 4), (36, Matt Chapman, 26, ThirdBase, 4), (37, Alejandro Kirk, 30, DesignatedHitter, 4), (38, Whit Merrifield, 15, SecondBase, 4), ( 39, Danny Jansen, 9, Catcher, 4),( 40,Kevin Kiermaier, 39, CentetField, 4), (41, Zach Plesac, 34, pitcher, 5), (42, Steven Kwan, 38, LeftField, 5), (43, Amed Rosario,1, ShortStop, 5), ( 44, Jose Ramirez, 11, ThirdBase, 5), (45, Josh Naylor, 22, DesignatedHitter, 5), (46, Josh Bell, 55, FirstBase, 5), (47, Andres Gimenez, 0, SecondBase, 5), (48, Will Brennan, 17, RightField, 5), (49, Myles Straw, 7, CenterField, 5), (50, Cam Gallagher, 35, Catcher, 5), (51, George Kirby, 68, Pitcher, 6), (52,Julio Rodriguez,44, CenterField,6),(53,Ty France,23,FirstBase,6),(54,Eugenio Suarez,28, ThirdBase,6),(55,Cal Raleigh, 29, Catcher, 6),(56,Teoscar Hernandez,35, RightField, 6),(57,Jarred Kelenic,10, LeftField),(58,Tommy La Stella,4, DesignatedHitter, 6),(59,Kolten Wong, 16,SecondBase, 6),(60,J.P. Crawford,3, ShortStop, 6),(61,Kyle Gibson,48,Pitcher,7),(62,Cedric Mullins,31,CenterField,7),(63,Adley Rutschman,35,DesignatedHitter,7),(64,Ryan Mountcastle,6,FirstBase,7),(65,Anthony Santander,25, RightField, 7), (66,Austin Hays,21,LeftField, 7),(67,Adam Frazier,12,SecondBase,7),(68,Ramon Urias,29,ThirdBase,7),(69,James McCann,27,Catcher,7),(70,Jorge Mateo, 3, ShortStop,7),(71, Jon Gray, 22, Pitcher, 8), (72, Marcus Semien, 2, SecondBase, 8),( 73, Josh H. Smith, 47, ShortStop, 8), (74, Nathaniel Lowe, 30, FirstBase, 8), (75, Adolis Garcia, 53, RightField, 8), (76, Josh Jung, 6,ThirdBase, 8), (77, Jonah Heim,28, Catcher, 8), (78, Robbie Grossman, 4, DesignatedHitter, 8), (79,Travis Jankowski,16, LeftField, 8),(80,Leody Taveras, 3, CenterField,8),(81,Calvin Faucher,58,Pitcher,9), (82,Yandy Diaz,2,FirstBase, 9), (83,Wander Franco,5,ShortStop,9), (84,Isaac Paredes,17,ThirdBase,9),(85,Randy Arozarena,56,LeftField,9), (86,Harold Ramirez, 43,LeftField,9), (87,Taylor Walls,6, SecondBase, 9), (88, Manuel Margot, 13,CenterField, 9), (89,Francisco Mejia,21,Catcher,9),(90,Vidal Brujan,7,RightField,9), (91, Nick Pivetta,37,Pitcher,10),(92,Alex Verdugo, 99, RightField,10), (93,Justin Turner,2, DesignatedHitter, 10),(94,Rob Refsnyder,30,LeftField, 10), (95,Rafael Devers,11,ThirdBase,10), (96,Enrique Hernandez,5,CenterField,10),(97,Christian Arroyo,39,SecondBase,10),(98,Triston Casas,36,FirstBase,10),(99,Connor Wong,12,Catcher,10),(100,Yu Chang,20,ShoerStop,10),(101,Kris Bubic,50,Pitcher,11),(102,Bobby Witt Jr, 7,ShortStop,11),(103,MJ Melendez,1,RightField,11),(104,Vinnie Pasquantino, 9, DesignatedHitter, 11),(105,Salvador Perez,13,Catcher,11),(106,Kyle Isbel,28,CenterField,11),(107,Michael Massey,19, SecondBase,11), (108,Hunter Dozier,17,FirstBase,11),(109,Nicky Lopez,8,ThirdBase,11),(110,Jackie Bradley Jr,41,LeftField,11),(111,Michael Lorenzen,21,Pitcher,12),(112,Nick Maton,9,SecondBase,12),(113,Riley Greene,31,CenterField, 12),(114,Javier Baez,28,ShortStop,12),(115,Kerry Carpenter,30,DesignatedHitter,12),(116,Spencer Torkelson,20,FirstBase,12),(117,Akil Baddoo,60,LeftField,12),(118,Zach McKinstry,39,ThirdBase,12),(119,Eric Haase,13,Catcher,12),(120,Matt Vierling,8,RightField,12),(121,Tyler Mahle,51,Pitcher,13),(122,Edouard Julien,47,SecodndBase,13),(123,Carlos Correa,4,ShortStop, 13), (124,Byron Buxton,25,DesignatedHitter, 13), (125,Trevor Larnach,9,LeftField,13),(126,Jose Miranda,64,ThirdBase, 13),(127, Donovan Solano,39,FirstBase,13),(128,Max Kepler,26,RightField,13),(129,Christian Vazquez,8,Catcher,13),(130,Michael A. Taylor,2,CenterField,13),(131,Michael Kopech,34,Pitcher,14),(132,Andrew Benintendi,23,LeftField,14),(133,Luis Robert Jr.,88,CenterField,14),(134,Andrew Vaughn,25,FirstBase,14),(135,Eloy Jimenez,74,DesignaterHitter,14),(136,Yasmani Grandal,24,Catcher, 14),(137,Jake Burger,30,ThirdBase,14),(138,Oscar Colas,22,RightField,14),(139,Lenyn Sosa,50,SecondBase,14),(140,Elvis Andrus,1,ShortStop,14),(141,Domingo German,0, Pitcher,15),(142,DJ LeMahieu,26,ThirdBase,15),(143,Aaron Judge,99,CenterField,15),(144,Anthony Rizzo,48,FirstBase,15),(145,Giancarlo Stanton,27,DesignatedHitter,15),(146,Gleyber Torres,25,SecondBase,15),(147,Franchy Cordero,33,RightField,15),(148,Oswaldo Cabrera,95,LeftField,15),(149,Kyle Higashioka,66,Catcher,15),(150,Anthony Volpe,11,ShortStop,15)

  
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

