<?php
//https://stackoverflow.com/questions/8538995/how-to-import-multiple-csv-files-into-a-mysql-database
$table_names = array("L_as_L","L_as_R","R_as_L","R_as_R","vs_R","vs_L");
try{
  $pdo = new PDO('mysql:host=localhost;dbname=Baseball', 'username', 'password');
  $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  $pdo->exec('SET NAMES "utf8"');
}
catch (PDOException $e){
  $error = 'Unable to connect to the database server.';
  print($error);
  exit();
}
try{
foreach($table_names as $name){
$files = glob("/opt/lampp/htdocs/fangraph_sql_updater/hello_friend/*".$name.".csv");
foreach($files as $file){
  $sql= "LOAD DATA INFILE '".$file." 'INTO TABLE ".$name." FIELDS TERMINATED BY ','
  ENCLOSED BY  '\"'
  LINES TERMINATED BY '\r\n'
  IGNORE 1 LINES;";
  $result = $pdo -> query($sql);
  }
}
print("You have succesfully loaded the database");
}
catch (PDOException $e){
  $error = 'Something went horribly wrong';
  print($error);
  exit();
}
 ?>
