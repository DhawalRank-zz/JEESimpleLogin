--<ScriptOptions statementTerminator=";"/>
DROP TABLE IF EXISTS LoginChart;

CREATE TABLE LoginChart(
   ID int AUTO_INCREMENT,
   username varchar(20) NOT NULL,
   password varchar(20) NOT NULL,
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