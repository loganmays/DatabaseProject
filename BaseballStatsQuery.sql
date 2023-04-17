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
INSERT INTO Players( Player_id, Player_name, Player_Num,Player_Pos, Team_Id ) values 
	(1, 'Tyler Anderson', 31, 'Pitcher', 1), 
	(2, 'Taylor Ward', 3, 'Left Field', 1), 
	(3, 'Mike Trout', 27, 'Center Field', 1), 
	(4, 'Shohei Ohtani', 17, 'Designated Hitter', 1), 
	(5, 'Anthony Rendon', 6, 'Third Base', 1), 
	(6, 'Hunter Renfroe', 12, 'Right Field', 1), 
	(7, 'Gio Urshela', 10, 'First Base',1), 
	(8, 'Brandon Drury', 23, 'Second Base', 1), 
	(9, 'Zach Neto', 9, 'Shortstop',1), 
	(10, 'Matt Thaiss', 21, 'Catcher', 1),
	(11, 'Hunter Brown', 58, 'Pitcher', 2),
	(12, 'Mauricio Dubon', 14, 'Second Base', 2), 
	(13, 'Alex Bregman', 2, 'Third Base', 2), 
	(14, 'Yordan Alvarez', 44, 'Designated Hitter', 2),
	(15, 'Jose Abreu', 79, 'First Base', 2),
	(16, 'Kyle Tucker', 30, 'Right Field',2), 
	(17, 'Jeremy Pena', 3, 'Shortstop', 2),
	(18, 'Corey Julks', 9, 'Left Field',2),
	(19, 'Yainer Diaz', 21, 'Catcher', 2),
	(20, 'Jake Meyers', 6, 'Center Field',2),
	(21, 'Shintaro Fujinami', 11, 'Pitcher', 3), 
	(22, 'Tony Kemp', 5, 'Second Base', 3), 
	(23, 'Jace Peterson', 6, 'Third Base', 3), 
	(24, 'Brent Rooker', 25, 'Right Field', 3),
	(25, 'Ramon Laureano', 22, 'Right Field', 3), 
	(26, 'Aledmys Diaz', 12 , 'Shortstop', 3), 
	(27, 'Jesus Aguilar', 99, 'First Base', 3), 
	(28, 'Conner Capel', 21, 'Right Field',3),
	(29, 'Carlos Perez', 44, 'Catcher', 3),
	(30, 'Esteury Ruiz', 1, 'Center Field', 3),
	(31, 'Yusei Kikuchi', 16, 'Pitcher', 4),
	(32, 'George Springer', 4, 'Right Field', 4),
	(33, 'Bo Bichette', 11, 'Shortstop', 4),
	(34, 'Vladimir Guerrero Jr', 27, 'First Base', 4),
	(35, 'Daulton Varsho', 25, 'Left Field', 4),
	(36, 'Matt Chapman', 26, 'Third Base', 4),
	(37, 'Alejandro Kirk', 30, 'Designated Hitter', 4),
	(38, 'Whit Merrifield', 15, 'Second Base', 4),
	(39, 'Danny Jansen', 9, 'Catcher', 4),
	(40, 'Kevin Kiermaier', 39, 'Center Field', 4),
	(41, 'Zach Plesac', 34, 'Pitcher', 5),
	(42, 'Steven Kwan', 38, 'Left Field', 5),
	(43, 'Amed Rosario', 1, 'Shortstop', 5),
	(44, 'Jose Ramirez', 11, 'Third Base', 5), 
	(45, 'Josh Naylor', 22, 'Designated Hitter', 5), 
	(46, 'Josh Bell', 55, 'First Base', 5), 
	(47, 'Andres Gimenez', 0, 'Second Base', 5),
	(48, 'Will Brennan', 17, 'Right Field', 5), 
	(49, 'Myles Straw', 7, 'Center Field', 5),
	(50, 'Cam Gallagher', 35, 'Catcher', 5),
	(51, 'George Kirby', 68, 'Pitcher', 6),
	(52, 'Julio Rodriguez' , 44, 'Center Field', 6),
	(53, 'Ty France', 23,'First Base', 6),
	(54, 'Eugenio Suarez', 28, 'Third Base', 6),
	(55, 'Cal Raleigh', 29, 'Catcher', 6),
	(56, 'Teoscar Hernandez', 35, 'Right Field', 6),
	(57, 'Jarred Kelenic', 10, 'Left Field', 6),
	(58, 'Tommy La Stella', 4, 'Designated Hitter', 6),
	(59, 'Kolten Wong', 16, 'Second Base', 6),
	(60, 'J.P. Crawford', 3, 'Shortstop', 6),
	(61, 'Kyle Gibson', 48, 'Pitcher', 7),
	(62, 'Cedric Mullins', 31, 'Center Field', 7),
	(63, 'Adley Rutschman', 35, 'Designated Hitter', 7),
	(64, 'Ryan Mountcastle', 6, 'First Base', 7),
	(65, 'Anthony Santander', 25, 'Right Field', 7), 
	(66, 'Austin Hays', 21,'Left Field', 7),
	(67, 'Adam Frazier', 12, 'Second Base', 7),
	(68, 'Ramon Urias', 29,'Third Base', 7),
	(69, 'James McCann', 27,'Catcher', 7),
	(70, 'Jorge Mateo', 3, 'Shortstop', 7),
	(71, 'Jon Gray', 22, 'Pitcher', 8),
	(72, 'Marcus Semien', 2, 'Second Base', 8),
	(73, 'Josh H. Smith', 47, 'Shortstop', 8),
	(74, 'Nathaniel Lowe', 30, 'First Base', 8), 
	(75, 'Adolis Garcia', 53, 'Right Field', 8),
	(76, 'Josh Jung', 6, 'Third Base', 8), 
	(77, 'Jonah Heim', 28, 'Catcher', 8),
	(78, 'Robbie Grossman', 4, 'Designated Hitter', 8),
	(79, 'Travis Jankowski', 16, 'Left Field', 8),
	(80, 'Leody Taveras', 3, 'Center Field', 8),
	(81, 'Calvin Faucher', 58,' Pitcher', 9),
	(82, 'Yandy Diaz', 2, 'First Base', 9),
	(83, 'Wander Franco', 5, 'Shortstop', 9),
	(84, 'Isaac Paredes', 17, 'Third Base', 9),
	(85, 'Randy Arozarena', 56, 'Left Field', 9),
	(86, 'Harold Ramirez', 43, 'Left Field', 9),
	(87, 'Taylor Walls', 6, 'Second Base', 9),
	(88, 'Manuel Margot', 13, 'Center Field', 9), 
	(89, 'Francisco Mejia', 21, 'Catcher', 9),
	(90, 'Vidal Brujan', 7, 'Right Field', 9),
	(91, 'Nick Pivetta', 37, 'Pitcher', 10),
	(92, 'Alex Verdugo', 99, 'Right Field', 10),
	(93, 'Justin Turner', 2, 'Designated Hitter', 10),
	(94, 'Rob Refsnyder', 30, 'Left Field', 10), 
	(95, 'Rafael Devers', 11, 'Third Base', 10),
	(96, 'Enrique Hernandez', 5,'Center Field', 10),
	(97, 'Christian Arroyo', 39, 'Second Base', 10),
	(98, 'Triston Casas', 36, 'First Base', 10),
	(99, 'Connor Wong', 12, 'Catcher', 10),
	(100, 'Yu Chang', 20, 'Shortstop', 10),
	(101, 'Kris Bubic', 50, 'Pitcher', 11),
	(102, 'Bobby Witt Jr', 7, 'Shortstop', 11),
	(103, 'MJ Melendez', 1, 'Right Field', 11),
	(104, 'Vinnie Pasquantino', 9, 'Designated Hitter', 11),
	(105, 'Salvador Perez', 13, 'Catcher', 11),
	(106, 'Kyle Isbel', 28, 'Center Field', 11),
	(107, 'Michael Massey', 19, 'Second Base', 11),
	(108, 'Hunter Dozier', 17, 'First Base', 11),
	(109, 'Nicky Lopez', 8, 'Third Base', 11),
	(110, 'Jackie Bradley Jr', 41, 'Left Field', 11),
	(111, 'Michael Lorenzen', 21, 'Pitcher', 12),
	(112, 'Nick Maton', 9, 'Second Base', 12),
	(113, 'Riley Greene', 31, 'Center Field', 12),
	(114, 'Javier Baez', 28, 'Shortstop', 12),
	(115, 'Kerry Carpenter', 30, 'Designated Hitter', 12),
	(116, 'Spencer Torkelson', 20, 'First Base', 12),
	(117, 'Akil Baddoo', 60, 'Left Field', 12),
	(118, 'Zach McKinstry', 39, 'Third Base', 12),
	(119, 'Eric Haase', 13, 'Catcher', 12),
	(120, 'Matt Vierling', 8, 'Right Field', 12),
	(121, 'Tyler Mahle', 51, 'Pitcher', 13),
	(122, 'Edouard Julien', 47, 'Second Base', 13),
	(123, 'Carlos Correa', 4, 'Shortstop', 13),
	(124, 'Byron Buxton', 25, 'Designated Hitter', 13),
	(125, 'Trevor Larnach', 9, 'Left Field', 13),
	(126, 'Jose Miranda', 64, 'Third Base', 13),
	(127, 'Donovan Solano', 39, 'First Base', 13),
	(128, 'Max Kepler', 26, 'Right Field', 13),
	(129, 'Christian Vazquez', 8, 'Catcher', 13),
	(130, 'Michael A. Taylor', 2, 'Center Field', 13),
	(131, 'Michael Kopech', 34, 'Pitcher', 14),
	(132, 'Andrew Benintendi', 23, 'Left Field', 14),
	(133, 'Luis Robert Jr.', 88, 'Center Field', 14),
	(134, 'Andrew Vaughn', 25, 'First Base', 14),
	(135, 'Eloy Jimenez', 74, 'Designater Hitter', 14),
	(136, 'Yasmani Grandal', 24, 'Catcher', 14),
	(137, 'Jake Burger', 30, 'Third Base', 14),
	(138, 'Oscar Colas', 22, 'Right Field', 14),
	(139, 'Lenyn Sosa', 50, 'Second Base', 14),
	(140, 'Elvis Andrus', 1, 'Shortstop', 14),
	(141, 'Domingo German', 0, 'Pitcher', 15),
	(142, 'DJ LeMahieu', 26, 'Third Base', 15),
	(143, 'Aaron Judge', 99, 'Center Field', 15),
	(144, 'Anthony Rizzo', 48, 'First Base', 15),
	(145, 'Giancarlo Stanton', 27, 'Designated Hitter', 15),
	(146, 'Gleyber Torres', 25, 'Second Base', 15),
	(147, 'Franchy Cordero', 33, 'Right Field', 15),
	(148, 'Oswaldo Cabrera', 95, 'Left Field', 15),
	(149, 'Kyle Higashioka', 66, 'Catcher', 15),
	(150, 'Anthony Volpe', 11, 'Shortstop', 15)

  
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