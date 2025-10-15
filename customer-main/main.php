<?php include('config/constant.php');
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="cus_css/style1.css">
    <title>FitZone Fitness Center</title>
    <link rel="icon" type="image/x-icon" href="/images/icon_7.png">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha384-k6RqeWeci5ZR/Lv4MR0sA0FfDOMkt8Kz0Cbr5lz0OMqIcX8w2DMEjklZjPpITUMw" crossorigin="anonymous">
    <script src="js/script.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
</head>
<body>
    <header>
        <nav class="navbar">
            <div class="logo" style="color: orangered;">FitZone Fitness</div>
            <div class="hamburger-menu" id="hamburger-menu">
                <i class="fas fa-bars"></i>
            </div>
            <ul class="nav-links" id="nav-links">
                <li><a href="index.php">Home</a></li>
                <li><a href="programs.php">Programs</a></li>
                <li><a href="promotion.php">Promotions</a></li>
                <li><a href="membership.php">Memberships</a></li>
                <li><a href="#contact">Contact Us</a></li>
                <li><a href="blog.php">Blogs</a></li>
                <li><a href="quetions.php">FAQ</a></li>
                <li><a href="http://localhost:8080/fitzone/admin-panel/manager-login.php" style="color: red;">Admin/ Staff</a></li>
            </ul>

            <!-- PHP to display login/signup or logout button -->
            <div class="cta-buttons">
                <?php
    
                if (isset($_SESSION['customer_id'])) {
                    // If logged in, show logout button
                    echo '<a href="logout.php" class="btn logout">Logout</a>';
                } else {
                    // If not logged in, show login and sign-up buttons
                    echo '<a href="customer-login.php" class="btn logout">Login</a>';
                    echo '<a href="customer-signup.php" class="btn signup">Sign Up</a>';
                }
                ?>
            </div>
        </nav>
    </header>