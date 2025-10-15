<?php include('../config/constant.php');
include('login-check.php')?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel</title>
    <link rel="stylesheet" href="../admin-css/style.css">
   
</head>
<body>
    <!-- Header Section -->
    <div class="header">
        <div class="logo">FitZone Fitness Center</div>
        <a href="logout.php" class="logout-button">Logout</a>
    </div>

    <!-- Main Container -->
    <div class="container">
        <!-- Sidebar -->
        <div class="sidebar">
            <h2 style="color: yellowgreen;">Staff Panel</h2>
            <ul>
                <li><a href="admin-index.php">Home</a></li>
                <li><a href="manage-inquery.php">Inquery Handle</a></li>
                <li><a href="manage-bookinPackage.php">Booking/Appoinments</a></li>
                <li><a href="manage-classProgram.php">Available Programs</a></li>
                <li><a href="manage-membership.php">Available Membership</a></li>
              
                <!-- <li><a href="manage-events.php">Events</a></li> -->
            </ul>
        </div>