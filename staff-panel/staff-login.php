
<?php include('../config/constant.php'); ?>


<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <link rel="stylesheet" href="../admin-css/login.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <script src="../js/script.js"></script>
</head>
<body>
    <div class="container">
        <div class="right">
        
            <button><a href="../admin-panel/manager-login.php">Manager Login here..</a></button>
        </div>
        <div class="left">
            <h1>Staff</h1>
            <div class="social-login">
                <button><i class="fab fa-facebook-f"></i></button>
                <button><i class="fab fa-google-plus-g"></i></button>
                <button><i class="fab fa-linkedin-in"></i></button>
            </div>
            <form action="" method="POST">
         
                <input type="text" name="username" placeholder="Username" />
                <input type="password" name="password" placeholder="Password" />
                <input type="submit" name="submit" value="Login" class="btn-primary">
                <br>
            </form>
            <a href="#">Forgot your password?</a>
            <br>
            <a href="http://localhost:8080/fitzone/" style="color: yellow;">Go Back</a>
        </div>
    </div>
</body>
</html>



<?php
//check whether the submit button clicked or not
if (isset($_POST['submit'])) {

  //process for login


  //1.get the data from login form

  $username = $_POST['username'];
  $password = md5($_POST['password']);

  //2.sql to check wether the user with username and password exists or not

  $sql = "SELECT * FROM tbl_admin WHERE username = ? AND password = ? AND position = 'staff'";

  //3.execute the query
  $stmt = $conn->prepare($sql);
  $stmt->bind_param("ss", $username, $password); // "ss" specifies the variable types => 'string', 'string'
  //By using placeholders (like ?) in your SQL query and binding variables to them, the same query can be reused with different inputs.
  //also this make more secure .by avoiding harmful inputs from user.

  //4.count rows to check whether the user exists or not
  $stmt->execute();
  $result = $stmt->get_result();


  if ($result->num_rows == 1) {
    //user available and loging success
 
    $_SESSION['user'] = $username; 
    //to check whether the user is logged in or not and logout will unset it

    //redirect to home page dash board
    header('Location:' . SITEURL . '/staff-panel/admin-index.php?status=success&action=login');

  } else {
    //user not available
    //redirect to home page dash board
    header('Location:' . SITEURL . 'staff-panel/staff-login.php?status=error&action=login');
  }
}


?>


