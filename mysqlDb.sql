
create table team (
	teamID varchar(50),
    team varchar(50),
    continent varchar(50),
    league varchar(50),
    population varchar(50),
    primary key(teamID)
);

create table Stadium  (
	SID varchar(50),
    SName varchar(100),
    SCity varchar(50),
    Scapacity varchar(50),
    PRIMARY KEY(SID)
);


create table player (
	team varchar(100),
    teamId varchar(50),
    Pno varchar(50),
    PPosition varchar(50),
    PName varchar(100),
    BirthDate varchar(50),
    ShirtName varchar(50),
    Club varchar(50),
    height varchar(50),
    weight varchar(50),
    PRIMARY KEY(Pno),
    foreign key(teamId) references team(teamID)
);


create table game (
    GameId varchar(50),
    ggroup varchar(50),
    matchDate varchar(100),
    SID varchar(50),
    teamID1 varchar(50),
    teamID2 varchar(50),
    team1Score varchar(50),
    team2Score varchar(50),
    PRIMARY KEY(GameId),
    foreign key(teamID1) references team(teamID),
    foreign key(teamID2) references team(teamID),
    foreign key(SID) references stadium(SID)
);

create table startingLineup (
    GameId varchar(50),
    teamID varchar(50),
    Pno varchar(50),
    PRIMARY KEY(GameId, teamID, Pno),
    foreign key(teamID) references team(teamID),
    foreign key(GameID) references game(GameID),
    foreign key(Pno) references player(Pno)
);


create table goal (
    GameId varchar(50),
    teamID varchar(50),
    Pno varchar(50),
    Gtime varchar(20),
    Penalty varchar(20),
    PRIMARY KEY(GameId, teamID, Pno, Gtime, Penalty),
    foreign key(teamID) references team(teamID),
    foreign key(GameID) references game(GameID),
    foreign key(Pno) references player(Pno)
);
