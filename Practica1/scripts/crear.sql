USE prac1;

CREATE TABLE Temporal(
    year varchar(15),
    month varchar(15),
    day varchar(15),
    hour varchar(15),
    minute varchar(15),
    second varchar(15),
    tsunami_event varchar(15),
    tsunami_cause varchar(15),
    earthquake_magnitude varchar(15),
    deposits varchar(15),
    latitude varchar(15),
    longitude varchar(15),
    max_water_height varchar(50),
    runups varchar(50),
    magnitud varchar(50),
    intensity varchar(50),
    total_deaths varchar(50),
    total_missing varchar(50),
    total_missing_description varchar(50),
    total_injuries varchar(50),
    total_damage varchar(50),
    total_damage_description varchar(50),
    total_houses_destroyed varchar(50),
    total_houses_damage varchar(50),
    country varchar(50) 
);

CREATE TABLE Time(
    idTime INT IDENTITY(1,1) PRIMARY KEY,
    year INT
);

CREATE TABLE Location(
    idLocation INT IDENTITY(1,1) PRIMARY KEY,
    country varchar(50)
);

CREATE TABLE Tsunami(
    idTsunami INT IDENTITY(1,1) PRIMARY KEY,
    idTime INT,
    idLocation INT,
    total_damage decimal(10, 2),
    total_deaths INT,
    total_houses_destroyed INT,
    total_houses_damage INT,
    max_water_height decimal(10, 2),
    FOREIGN KEY (idTime) REFERENCES Time(idTime),
    FOREIGN KEY (idLocation) REFERENCES Location(idLocation)
);