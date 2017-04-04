
DROP TABLE IF EXISTS LoginChart;

CREATE TABLE LoginChart(
   ID int AUTO_INCREMENT,
   username varchar(20) NOT NULL,
   password varchar(20) NOT NULL,
   PRIMARY KEY(ID)
);

DROP TABLE IF EXISTS Users;

CREATE TABLE Users(
	ID int AUTO_INCREMENT,
	name varchar(20) NOT NULL,
	surname varchar(20) NOT NULL,
	username varchar(20) references LoginChart(username),
	streetName varchar(50) NOT NULL,
	city varchar(20) NOT NULL,
	province varchar(20),
	pin varchar(6),
	country varchar(20),
	PRIMARY KEY(ID)
);

INSERT INTO LoginChart (username,password)
VALUES ('DhawalRank','rank');
INSERT INTO LoginChart (username,password)
VALUES ('DhawalRank1','rank');
INSERT INTO LoginChart (username,password)
VALUES ('DhawalRank2','rank');
INSERT INTO LoginChart (username,password)
VALUES ('DhawalRank3','rank');
INSERT INTO LoginChart (username,password)
VALUES ('DhawalRank4','rank');
INSERT INTO LoginChart (username,password)
VALUES ('DhawalRank5','rank');

INSERT INTO Users(name, surname, username, streetName, city, province, pin, country)
VALUES ('Dhawal', 'Rank', 'DhawalRank', '725 Horning Street', 'Mississauga', 'Ontario', 'L5R0B5', 'Canada');

INSERT INTO Users(name, surname, username, streetName, city, province, pin, country)
VALUES ('Dhawal', 'Rank', 'DhawalRank2', '726 Horning Street', 'Mississauga', 'Ontario', 'L5R0B6', 'Canada');
