SHOW DATABASES;

CREATE DATABASE Housing;

USE Housing;

#DROP TABLE RealtorListing;

CREATE TABLE PropertyInfo (
  MLSNum INT PRIMARY KEY,
  HouseStatus VARCHAR(255),
  StatusChangeTimestamp DATE,
  PropType VARCHAR(255),
  ListPrice INT,
  ClosePrice INT,
  Address VARCHAR(255),
  City VARCHAR(255),
  Acres FLOAT,
  SqFtTotal INT,
  SqFtEstHeatedAboveGrade INT,
  StyleOrRentType VARCHAR(255),
  RoomsTotal INT,
  BedsTotal INT,
  Bathrooms FLOAT,
  GaragePark VARCHAR(255),
  YearBuilt INT,
  DaysOnMarket INT
);


CREATE TABLE Realtor (
  AgentID INT PRIMARY KEY,
  ListingAgent VARCHAR(255),
  PhoneNumber VARCHAR(255),
  Email VARCHAR(255)
);

CREATE TABLE RealtorListing (
  MLSNum INT,
  AgentID INT,
  PRIMARY KEY (MLSNum, AgentID),
  FOREIGN KEY (MLSNum) REFERENCES PropertyInfo(MLSNum),
  FOREIGN KEY (AgentID) REFERENCES Realtor(AgentID)
);


SHOW TABLES;

DESCRIBE PropertyInfo;

SELECT MLSNum, ListPrice, YearBuilt
FROM PropertyInfo
Where YearBuilt >2010;


SELECT COUNT(MLSNum) AS NumberOfListings FROM PropertyInfo;


DESCRIBE Realtor;

SELECT ListingAgent
FROM Realtor
WHERE ListingAgent LIKE 'Ale%';

SELECT COUNT(AgentID) AS NumberOfAgents FROM Realtor;

Describe RealtorListing;

SELECT R.ListingAgent, R.PhoneNumber, P.SqFtTotal, P.StyleOrRentType
FROM Realtor as R, PropertyInfo as P, RealtorListing AS RL
OUTER JOIN Realtor ON RL.AgentID = R.AgentID;

SELECT DISTINCT StyleOrRentType FROM PropertyInfo;


Show Tables;

SELECT r.ListingAgent, r.PhoneNumber, p.Address, p.City, p.SqFtTotal, p.StyleorRentType, p.ListPrice
FROM PropertyInfo p
INNER JOIN RealtorListing rl ON p.MLSNum = rl.MLSNum
INNER JOIN Realtor r ON rl.AgentID = r.AgentID
WHERE p.YearBuilt > 1995 AND p.StyleorRentType = 'Colonial'
ORDER BY p.ListPrice ASC;


SHOW Tables;
Describe PropertyInfo;
