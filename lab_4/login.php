<?php
  include("config.php");
  include("header.php");

   # Open the database
          @ $db = new mysqli($dbserver, $dbuser, $dbpass, $dbname);

          if ($db->connect_error) {
              echo "could not connect: " . $db->connect_error;
              printf("<br><a href=index.php>Return to home page </a>");
              exit();
          }
          $username = $password = "";
          $username_err = $password_err = "";

          if ($_SERVER["REQUEST_METHOD"] == "POST") {
              // Check if username is empty
              if(empty(trim($_POST["username"]))){
                  $username_err = 'Please enter username.';
              } else{
                  $username = trim($_POST["username"]);
              }
              
              // Check if password is empty
              if(empty(trim($_POST['password']))){
                  $password_err = 'Please enter your password.';
              } else{
                  $password = trim($_POST['password']);
              }


          }
?>
<form id="login_form" action="/action_page.php">
    <div class="container">
      <label><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="uname" required>

      <label><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required>
      
      <input type="checkbox" checked="checked"> Remember me
      <span class="psw" id="forgot"><a href="#">Forgot password?</a></span></br>
      
      <button type="submit">Login</button>
      <button type="button" class="cancelbtn">Cancel</button>

    </div>
  </form>