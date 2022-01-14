<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['alogin'])==0)
    {   
header('location:index.php');
}
else{ 

if(isset($_POST['issue']))
    {
    $studentid=strtoupper($_POST['studentid']);
    $bookid=$_POST['bookdetails'];
    $sql="INSERT INTO  tblissuedbookdetails(StudentID,BookId) VALUES(:studentid,:bookid)";
    $query = $dbh->prepare($sql);
    $query->bindParam(':studentid',$studentid,PDO::PARAM_STR);
    $query->bindParam(':bookid',$bookid,PDO::PARAM_STR);
    $query->execute();
    $lastInsertId = $dbh->lastInsertId();
if($lastInsertId)
{
    $_SESSION['msg']="Book issued successfully";
    header('location:manage-issued-books.php');
    }
    else 
    {
    $_SESSION['error']="Something went wrong. Please try again";
    header('location:manage-issued-books.php');
    }

}
?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Library & Book Shop Management System</title>
    <!-- BOOTSTRAP CORE STYLE  -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONT AWESOME STYLE  -->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- CUSTOM STYLE  -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <!-- GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
<script>
// function for get student name
function getstudent() {
$("#loaderIcon").show();
jQuery.ajax({
url: "get_student.php",
data:'studentid='+$("#studentid").val(),
type: "POST",
success:function(data){
$("#get_student_name").html(data);
$("#loaderIcon").hide();
},
error:function (){}
});
}

//function for book details
function getbook() {
$("#loaderIcon").show();
jQuery.ajax({
url: "get_book.php",
data:'bookid='+$("#bookid").val(),
type: "POST",
success:function(data){
$("#get_book_name").html(data);
$("#loaderIcon").hide();
},
error:function (){}
});
}

</script> 
<style type="text/css">
  .others{
    color:red;
}

</style>


</head>
<body>
      <!------MENU SECTION START-->
<?php include('includes/header.php');?>
<!-- MENU SECTION END-->
    <div class="content-wra
    <div class="content-wrapper">
         <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <center><b><h4 class="header-line">Issue a New Book</h4></b></center>
                
                            </div>

</div>
<div class="row">
<div class="col-md-10 col-sm-6 col-xs-12 col-md-offset-1"">
<div class="panel panel-info">
<div class="panel-heading">
<center><b>Issue a New Book</b></center>
</div>
<div class="panel-body">
<form role="form" method="post">

<div class="form-group">
<label>Srtudent ID<span style="color:red;"> *</span></label>

	<input class="form-control" name="studentid" id="studentid" onBlur="getstudent()" required autocomplete="off">
	<center><option value="">Student ID: </option></center>
	<?php 

	$sql = "SELECT * from  tblstudents ";
	$query = $dbh -> prepare($sql);
	$query->execute();
	$results=$query->fetchAll(PDO::FETCH_OBJ);
	$cnt=1;
	if($query->rowCount() > 0)
	{
	foreach($results as $result)
	{               ?>  
	<center><option value="<?php echo htmlentities($result->id);?>"><?php echo htmlentities($result->StudentId);?></option></center>
	 <?php }} ?> 
	</input>


</div>

<div class="form-group">
	<option value="">Selected Student's Name: </option>
	<span id="get_student_name" style="font-size:20px; color:red"></span>
 
</div>





<div class="form-group">
<label>ISBN Number or Book Title<span style="color:red;"> *</span></label>

	<input class="form-control" name="booikid" id="bookid" onBlur="getbook()" required autocomplete="off">
	<center><option value="">ISBN Number:</option></center>
	<?php 

	$sql = "SELECT * from  tblbooks ";
	$query = $dbh -> prepare($sql);
	$query->execute();
	$results=$query->fetchAll(PDO::FETCH_OBJ);
	$cnt=1;
	if($query->rowCount() > 0)
	{
	foreach($results as $result)
	{               ?>  
	<center><option value="<?php echo htmlentities($result->id);?>"><?php echo htmlentities($result->ISBNNumber);?></option></center>
	 <?php }} ?> 
	</input>

</div>

 <div class="form-group">

  <select  class="form-control" name="bookdetails" id="get_book_name" readonly>
   
 </select>
 </div>
<center><button type="submit" name="issue" id="submit" class="btn btn-info"><b>ISSUE BOOK</b></button></center>

                                    </form>
                            </div>
                        </div>
                            </div>

        </div>
   
    </div>
    </div>
     <!-- CONTENT-WRAPPER SECTION END-->
  <?php include('includes/footer.php');?>
      <!-- FOOTER SECTION END-->
    <!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
    <!-- CORE JQUERY  -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS  -->
    <script src="assets/js/bootstrap.js"></script>
      <!-- CUSTOM SCRIPTS  -->
    <script src="assets/js/custom.js"></script>

</body>
</html>
<?php } ?>
