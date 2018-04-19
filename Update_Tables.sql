LOAD DATA INFILE '/home/piotr/Desktop/hello_friend/Angels_vs_L_as_L.csv'
into TABLE L_as_L
FIELDS TERMINATED BY ','
ENCLOSED BY  '\"'
LINES TERMINATED BY "\r\n"
IGNORE 1 LINES;
