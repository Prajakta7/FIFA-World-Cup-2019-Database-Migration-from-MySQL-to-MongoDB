# FIFA-World-Cup-2019-Database-Migration-from-MySQL-to-MongoDB-

The input to your program will be several data files in flat relational format for the WORLD CUP 2018 database example (see attached approximate ER and relational schemas). The files contain data records about information regarding the 2018 soccer world cup tournament. You will need to design two document (complex object) schemas corresponding to this data:

1.	The TEAM_SCORES document will include the following data about each team: Team (that is, the team name), and a collection of the team match (GAME) scores. Each match score in the collection will include: the date of the match, the name of the city and stadium where the match was played, repeat of the team’s name, the team score in the match, the name of the opposing team, and the score of the opposing team.
2.	The PLAYER_DATA document will include the following data about each player: the player name (Pname), the player’s team name (Team), the player number (PNo) and position (Position), and a collection of games that the player has started – for each game (match) the player  has started, include the MatchDate, City, Stadium Name, and opposing team name. Also include for each player a collection of goals that the player has scored (if any) – for each goal scored, include the GoalType, Time, MatchDate, City, Stadium Name, and opposing team name.

Following data files for the world cup database:

TEAM(TeamID, Team, Continent, League, Population)
(* Team is the Team Name, which is the name of one of the participating countries *)
STADIUM(SID, SName, SCity, SCapacity)
(* SName and SCity are the name and city of each stadium *)
PLAYER(Team,TeamID,PNo,Position,PName,Birth Date,Shirt Name,Club,Height,Weight)
(* PLAYER corresponds to the data in the “rosters” data file – Pno corresponds to PlayerID,
and PName corresponds to FIFA Popular Name in the rosters file *)
GAME(GameID,MatchType,MatchDate,SID,TeamID1,TeamID2,Team1_Score,Team2_Score)
(* GAME corresponds to the data in the “matches” data file *)
STARTING_LINEUPS(GameID,TeamID,PNo)
GOALS(GameID,TeamID,PNo,Time,Penalty)
OWN_GOALS(GameID,TeamID,PNo,Time,For_TeamID)
