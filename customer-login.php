
<?php

include('customer-main/main.php');?>

<section class="logings">

    <div class="container-login">
        <form action="" method="POST">
            <h1 style="font-size: 36px;">Login</h1>
            <div class="input-boxes">
                <input type="text" name="username" placeholder="Username">
                <i class='bx bx-user'></i>
            </div>
            <div class="input-boxes">
                <input type="password" name="password" placeholder="Password">
                <i class='bx bx-lock-alt'></i>
            </div>
            <div class="rm">
                <label for="#">
                    <input type="checkbox"> Remember-me
                </label>
                <a href="#">Forgot Password?</a>
            </div>
            <input type="submit" name="submit" value="Login" class="btn-login">
            <div class="register">
                <p>Don't have an account? <a href="customer-signup.php">Register</a></p>
                <p>Back to<a href="index.php"> Home Page</a></p>
            </div>
        </form>

        </div>
        </section>  

<?php
if (isset($_POST['submit'])) {

//1.get the data from login form

$username = $_POST['username'];
$password = md5($_POST['password']);

//2.sql to check wether the user with username and password exists or not

$sql = "SELECT * FROM tbl_customer WHERE username = ? AND password = ?";

//3.execute the query
$stmt = $conn->prepare($sql);
$stmt->bind_param("ss", $username, $password); // "ss" specifies the variable types => 'string', 'string'

//4.count rows to check whether the user exists or not
$stmt->execute();
$result = $stmt->get_result();


if ($result->num_rows == 1) {
  //user available and loging success

       // Fetch user data (e.g., user ID)
        $user = $result->fetch_assoc();

        // Store user information in the session
        $_SESSION['customer_id'] = $user['id'];

  //redirect to home page dash board
  header('Location:' . SITEURL . 'index.php?status=success&action=login_cus');


} else {
  //user not available
  //redirect to home page dash board
  header('Location:' . SITEURL . 'customer-login.php?status=error&action=login_cus');

  }

  
  }


?>
