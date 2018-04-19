<?php
//https://stackoverflow.com/questions/8538995/how-to-import-multiple-csv-files-into-a-mysql-database

try
{
  $pdo = new PDO('mysql:host=localhost;dbname=Baseball', 'username', 'password');
  $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  $pdo->exec('SET NAMES "utf8"');
}
catch (PDOException $e)
{
  $error = 'Unable to connect to the database server.';
  print($error);
  exit();
}

try {
  $sql = 'Select * from L_as_L';
  $result = $pdo -> query($sql);
  print("you also found the table");
}
catch (PDOException $e)
{
  $error = 'Cant find the thing';
  print($error);
  exit();
}

$files = glob("/opt/lampp/htdocs/fangraph_sql_updater/hello_friend/*L_as_L.csv");
foreach($files as $file)
{
  $sql= "LOAD DATA INFILE '".$file." 'INTO TABLE L_as_L FIELDS TERMINATED BY ','
  ENCLOSED BY  '\"'
  LINES TERMINATED BY '\r\n'
  IGNORE 1 LINES;";
  $result = $pdo -> query($sql);
}

$files = glob("/opt/lampp/htdocs/fangraph_sql_updater/hello_friend/*L_as_R.csv");
foreach($files as $file)
{
  $sql= "LOAD DATA INFILE '".$file." 'INTO TABLE L_as_R FIELDS TERMINATED BY ','
  ENCLOSED BY  '\"'
  LINES TERMINATED BY '\r\n'
  IGNORE 1 LINES;";
  $result = $pdo -> query($sql);
}

$files = glob("/opt/lampp/htdocs/fangraph_sql_updater/hello_friend/*R_as_L.csv");
foreach($files as $file)
{
  $sql= "LOAD DATA INFILE '".$file." 'INTO TABLE R_as_L FIELDS TERMINATED BY ','
  ENCLOSED BY  '\"'
  LINES TERMINATED BY '\r\n'
  IGNORE 1 LINES;";
  $result = $pdo -> query($sql);
}

$files = glob("/opt/lampp/htdocs/fangraph_sql_updater/hello_friend/*vs_R.csv");
foreach($files as $file)
{
  $sql= "LOAD DATA INFILE '".$file." 'INTO TABLE vs_R FIELDS TERMINATED BY ','
  ENCLOSED BY  '\"'
  LINES TERMINATED BY '\r\n'
  IGNORE 1 LINES;";
  $result = $pdo -> query($sql);
}

$files = glob("/opt/lampp/htdocs/fangraph_sql_updater/hello_friend/*vs_L.csv");
foreach($files as $file)
{
  $sql= "LOAD DATA INFILE '".$file." 'INTO TABLE vs_L FIELDS TERMINATED BY ','
  ENCLOSED BY  '\"'
  LINES TERMINATED BY '\r\n'
  IGNORE 1 LINES;";
  $result = $pdo -> query($sql);
}
/*
LOAD DATA INFILE '/home/piotr/Desktop/hello_friend/Angels_vs_L_as_L.csv'
into TABLE L_as_L
FIELDS TERMINATED BY ','
ENCLOSED BY  '\"'
LINES TERMINATED BY "\r\n"
IGNORE 1 LINES;
*/


 ?>
