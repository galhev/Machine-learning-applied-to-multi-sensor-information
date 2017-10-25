<!DOCTYPE html>

<?php
  session_start();

  $username = "ichilov";
  $password = "6931";


   if(isset($_POST['user'])&&$_POST['pass']==true)
   {
   		if($_POST['user']==$username && $_POST['pass']== $password)
   		{
   			$_SESSION['loggedin'] = true;
   			header("Location: scatter_new_version2.php");
   		}
   }
?>

<html>
<head>
	<title></title>

    <link rel="stylesheet" type="text/css" href="style/style1.css" />
    <link rel="stylesheet" type="text/css" href="style/style2.css" />
    <link rel="stylesheet" type="text/css" href="style/style3.css" />


<style type="text/css">
	/* The Modal (background) */


body
{
	background: #eee;
}

#frm{
	border: solid gray 1px;
	width: 30%;
	border-radius: 5px;
	margin: 100px auto;
	background: black;
	padding: 50px;
	font-size: 20px;

}

#myBtn{
	color: gray;
	background: black;
	padding: 10px;
	margin-left: 10%;
	font-size: 15px;
}

.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 15% auto; /* 15% from the top and centered */
    padding: 20px;
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button */
.close {
    color: #aaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: black;
    text-decoration: none;
    cursor: pointer;
}

var modal = document.getElementById('myModal');

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on the button, open the modal 
btn.onclick = function() {
    modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</style>
</head>
<body>
 <div id="main">

        <div id="header">
            <div id="logo">
                <div id="logo_text">
                    <h1><a href="LOGIN.aspx">Ichilov Visualization Tool <span class="logo_colour">BGU</span></a></h1>

                    <h2>A data classification and visualization tool for Ichilov data designed by Gal Hever</h2>
                </div>

            </div>
            <!-- Trigger/Open The Modal -->
<button id="myBtn">About</button>

<!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span class="close">×</span>
      <h2>Ichilov Visualization Tool</h2>
    </div>
    <div class="modal-body">
      <p>For understanding the abnormal behaviors of the data and to analyze the patterns in the dataset we built an interactive data visualization tool that allows easy access to Sourasky Medical Center dataset and convenient way to analyze patients data. It provides the flexibility of selecting variables that can be visualized and present advanced visualization dimensions to detect patterns using drill down abilities on the digitally recorded signals. 
The tool presents essential descriptive statistics of the data in some visualization dimensions that are part of the medical analysis and a prerequisite for the understanding of further statistical evaluations. 
</p>
      
    </div>
    <div class="modal-footer">
      <h3>Modal Footer</h3>
    </div>
  </div>

</div>

</div>
</div>   

<div id="frm">
<form method="post"> 
   Username: <br>
   <input type="text" name="user"></br>
   Password: </br>
   <input type="Password" name="pass"></br>
   <input type="submit" value="Login"></br>
</form>

 </div>
        <div id="content_footer"></div>

        <div id="footer">
            <p>Gal Hever and Dr.Yuval Bitan</p>

        </div>
</div>
   


<script>

// Get the modal
var modal = document.getElementById('myModal');

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal
btn.onclick = function() {
    modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>


</body>
</html>