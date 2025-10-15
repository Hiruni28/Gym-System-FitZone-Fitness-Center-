
<?php



include('customer-main/main.php');?>
<div class="parent-container">
    <div class="container_signup">
        <form action="" method="POST">
            <h1>Register</h1>

            <div class="input-boxes">
                <input type="text" name="full_name" placeholder="Full Name">
                <i class='bx bx-user'></i>
            </div>

            <div class="input-boxes">
                <input type="text" name="username" placeholder="User Name">
                <i class='bx bx-user'></i>
            </div>

            <div class="input-boxes">
                <input type="tel" name="tel_no" placeholder="Mobile">
                <i class='bx bx-phone-call'></i>
            </div>

            <div class="input-boxes">
                <input type="email" name="email" placeholder="Email">
                <i class='bx bx-envelope'></i>
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

            <input type="submit" name="submit" value="Sign Up" class="btn-login">

            <div class="register">
                <p>I have an account <a href="customer-login.php">Login</a></p>
                <p>Back to<a href="index.php"> Home Page</a></p>
            </div>
        </form>
    </div>

    </div>



<?php 


if(isset($_POST['submit']))
{
  
 $full_name = $_POST['full_name'];
 $username = $_POST['username'];
 $tel_no = $_POST['tel_no'];
 $email = $_POST['email'];
 $password = md5($_POST['password']); 



 $sql = "INSERT INTO tbl_customer SET 
 full_name='$full_name',
 username='$username',
 tel_no='$tel_no',
 email='$email',
 password='$password'
 ";


$res = mysqli_query($conn, $sql) or die(mysqli_error($conn));

  if($res) {
 
    header("Location: " . SITEURL . 'customer-login.php?status=success&action=customer');
  } else {

       header("Location: " . SITEURL . 'customet-signup.php?status=error&action=customer');
  }
  exit();
}


?>
