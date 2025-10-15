<?php
// Start the session before any output

session_start();
// Define constants for reuse
define('SITEURL','http://localhost:8080/fitzone/');
define('LOCALHOST', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_NAME', 'fitzone');

// Establish a connection to the database
$conn = mysqli_connect(LOCALHOST, DB_USERNAME, DB_PASSWORD, DB_NAME);

// Check if the connection was successful
if (!$conn) {
    // Redirect to an error page if connection fails
    header('Location: '.SITEURL.'error.php?message=database_connection_failed');
    exit(); // Ensure no further code is executed
}



