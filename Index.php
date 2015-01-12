<?php
require("connect.php");
$id=1;   // session user id
$status_id=1;  // status message id
$qnumlikes=mysql_query("SELECT * FROM likes WHERE user_id='$id' AND status_id='$status_id'"); //Checks current login user liked this status or not
$numlikes=mysql_num_rows($qnumlikes);
$qtotallikes=mysql_query("SELECT * FROM likes WHERE status_id='$status_id'");  // Total number of likes for the status message
$totallikes=mysql_num_rows($qtotallikes);
?>
<!DOCTYPE html>
<html>
<head>
<title>Facebook Like Button Script in PHP Tutorial by OSblogger</title>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script> 
<script type="text/javascript" src="script.js"></script>
<style>

</style>
</head>
<body>
<div class="sparkdiv" id="<?php echo $status_id; ?>" style="border: ridge rgb(0, 0, 0); border-image: none; width: 400px; margin-bottom: 3px;">
<img alt="Prabha" src="upload/prabha.jpg">
<span><a href="profile.php?username=prabha"><b>Pork Belly Sliders</b></a>
</span><br>
<span>Delightfully sliced pork belly served on potatoe buns with lettuce and </span>
<br>
<a class="view" href="#" >2 months ago</a>
<span class="numlike" id="lik<?php echo $status_id; ?>"><?php echo $totallikes; ?></span>&nbsp;<a class="likes" id="<?php echo $totallikes; ?>" href="#"><?php 
if($numlikes==0)
{
echo "Like";
}
else if($numlikes==1)
{
echo "Unlike";
}
 ?></a>

</div>
</body>


</html>
