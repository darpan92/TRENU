<?php
$host="localhost"; // Host name 
$username="Alex"; // Mysql username 
$password="lacrosse"; // Mysql password 
$db_name="trenu"; // Database name 
$tbl_name="Alla Spina Menu"; // Table name 

// Connect to server and select database.
mysql_connect("$host", "$username", "$password")or die("cannot connect"); 
mysql_select_db("$db_name")or die("cannot select DB");

// update data in mysql database 
$sql="UPDATE $tbl_name SET Id='$id', Name='$name', Description='$description' WHERE id='$id'";
$result=mysql_query($sql);

// if successfully updated. 
if($result){
echo "Successful";
echo "<BR>";
echo "<a href='list_records.php'>View result</a>";
}

else {
echo "ERROR";
}

?>
