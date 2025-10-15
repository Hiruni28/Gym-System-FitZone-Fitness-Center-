<?php include('customer-main/main.php'); ?>

<section class="membershipBook">

<div class="booking">
    <form action="" method="POST" enctype="multipart/form-data">
        <h1 class="main">Booking</h1>

        <div class="input-box">
            <input type="text" name="full_name" placeholder="Full Name" required>
            <i class='bx bx-user'></i>
        </div>

        <div class="input-box">
            <input type="email" name="email" placeholder="Email" required>
            <i class='bx bx-envelope'></i>
        </div>

        <div class="input-box">
            <input type="tel" name="tel_no" placeholder="Mobile" required>
            <i class='bx bx-phone-call'></i>
        </div>

        <!-- Retrieve package from URL query string -->
        <div class="input-box">
            <input type="text" name="package" value="<?php echo isset($_GET['package']) ? htmlspecialchars($_GET['package']) : ''; ?>" readonly>
            <i class='bx bx-user'></i>
        </div>

        <div class="input-box">
            <textarea name="message" placeholder="Additional Details"></textarea>
        </div>

        <input type="submit" name="submit" value="Booking" class="btn-member">

    </form>
    <p class="booking-note">(After your booking, one of our staff members will contact you soon. If there's any delay, please send a message to our mobile number: 0773274601)</p>

</div>

</section>

<?php

// Handle form submission
if (isset($_POST['submit'])) {
    // 1. Get form data
    $full_name = $_POST['full_name'];
    $email = $_POST['email'];
    $tel_no = $_POST['tel_no'];
    $package = $_POST['package']; 
    $message = $_POST['message'];

    $sql = "INSERT INTO tbl_membershipBookings (full_name, email, tel_no, package, message) VALUES (?, ?, ?, ?, ?)";

    $stmt = $conn->prepare($sql);
    $stmt->bind_param('sssss', $full_name, $email, $tel_no, $package, $message);

    // 4. Execute the query
    if ($stmt->execute()) {
        // Set success message and redirect or show confirmation
        header("Location: " . SITEURL . 'index.php?status=success&action=Membershipbooking');
        exit();
    } else {
        // Handle the error
        header('Location:'.SITEURL.'membershipBoking.php?status=error&action=Membershipbooking');
        exit();
    }
}
?>

<?php include('customer-main/footer.php'); ?>
