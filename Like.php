<?php
require("connect.php");
$id=1;  // User id
if($_POST)
{
$pinsid=$_POST['sid'];
$status=$_POST['sta'];
$chkpinu=mysql_query("SELECT * FROM likes WHERE status_id='$pinsid' AND user_id='$id'");
$chknum=mysql_num_rows($chkpinu);
if($status=="like")
{
if($chknum==0)
{
$add=mysql_query("INSERT INTO likes VALUES('','$id','$pinsid')");
echo $add;
}
}
else if($status=="unlike")
{
if($chknum!=0)
{
$rem=mysql_query("DELETE FROM likes WHERE status_id='$pinsid' AND user_id='$id'");
echo $rem;
}
}
}
?>
