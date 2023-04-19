USE Housing;

LOAD DATA INFILE '/Users/juanvillegas/Downloads/PropertyInfo.csv'
INTO TABLE PropertyInfo
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;