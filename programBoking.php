<?php
include('customer-main/main.php'); // Include the header

// Get category and program from the URL if available
$selected_category = isset($_GET['category']) ? $_GET['category'] : '';
$selected_program = isset($_GET['program']) ? $_GET['program'] : '';

// Booking form submission logic
if (isset($_POST['submit'])) {
    $full_name = $_POST['full_name'];
    $email = $_POST['email'];
    $tel_no = $_POST['tel_no'];
    $weight = $_POST['weight'];
    $category = $_POST['category']; // This will come from the hidden input field
    $program = $_POST['Program']; // This will come from the hidden input field
    $message = $_POST['message'];
    $customer_id = isset($_SESSION['customer_id']) ? $_SESSION['customer_id'] : null;

    // Insert booking into the programBooking table
    $sql = "INSERT INTO tbl_programBooking (customer_id, full_name, email, tel_no, category_id, program_id, weight, message) 
    VALUES (?, ?, ?, ?, 
            (SELECT id FROM tbl_programCategories WHERE title = ?), 
            (SELECT id FROM tbl_programs WHERE title = ?), ?, ?)";

    $stmt = $conn->prepare($sql);
    $stmt->bind_param('isssssss', $customer_id, $full_name, $email, $tel_no, $category, $program, $weight, $message);

    if ($stmt->execute()) {
        header('Location: ' . SITEURL . 'index.php?status=success&action=programBooking');
        exit();
    } else {
        echo "<div class='error'>Failed to book the program. Please try again.</div>";
    }
}
?>

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

            <div class="input-box">
                <input type="text" name="weight" placeholder="55kg">
                <i class='bx bx-phone-call'></i>
            </div>

            <!-- Hidden category and program fields that are pre-filled based on the query parameters -->
            <input type="hidden" name="category" value="<?php echo htmlspecialchars($selected_category); ?>">
            <input type="hidden" name="Program" value="<?php echo htmlspecialchars($selected_program); ?>">

            <div class="input-box">
                <input type="text" value="<?php echo htmlspecialchars($selected_category); ?>" placeholder="Category" readonly>
            </div>

            <div class="input-box">
                <input type="text" value="<?php echo htmlspecialchars($selected_program); ?>" placeholder="Program" readonly>
            </div>

            <div class="input-box">
                <textarea name="message" placeholder="Additional Details"></textarea>
            </div>

            <input type="submit" name="submit" value="Book" class="btn-member">
        </form>
        <p class="booking-note">(After your booking, one of our staff members will contact you soon. If there's any delay, please send a message to our mobile number: 0773274601)</p>
    </div>
</section>

<?php include('customer-main/footer.php'); ?>
