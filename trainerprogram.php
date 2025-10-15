<?php 
include('customer-main/main.php'); 

// Check if the program ID is provided in the URL
if (isset($_GET['id'])) {
    $program_id = intval($_GET['id']); // Get the program ID from the URL

    // Fetch the program and trainer details, and the category ID from the database using the program ID
    $sql_program = "SELECT p.title AS program_title, p.price_local, p.price_foreign, p.schedule, p.description, p.features, p.image_name, 
                           t.name AS trainer_name, t.qualifications, t.about_trainer, c.id AS category_id, c.title AS category_title
                    FROM tbl_programs p
                    LEFT JOIN tbl_trainer t ON p.trainer_id = t.id
                    JOIN tbl_programCategories c ON p.category_id = c.id
                    WHERE p.id = ? AND p.active = 'Yes'";
    
    $stmt_program = $conn->prepare($sql_program);
    $stmt_program->bind_param('i', $program_id);
    $stmt_program->execute();
    $res_program = $stmt_program->get_result();

    // Check if the program exists
    if ($res_program->num_rows == 1) {
        // Fetch the program and trainer details
        $program = $res_program->fetch_assoc();
        $program_title = $program['program_title'];
        $price_local = $program['price_local'];
        $price_foreign = $program['price_foreign'];
        $schedule = json_decode($program['schedule'], true); // Assuming it's stored as JSON
        $description = $program['description'];
        $features = json_decode($program['features'], true); // Assuming it's stored as JSON
        $image_name = $program['image_name'];
        $trainer_name = $program['trainer_name'];
        $trainer_qualifications = $program['qualifications'];
        $about_trainer = $program['about_trainer'];
        $category_id = $program['category_id']; // Fetch category ID
        $category_title = $program['category_title']; // Fetch category title

        // Set the program image or use a default if none is provided
        $image_path = ($image_name != "") ? "images/programs/" . $image_name : "images/default-program.jpg";
    } else {
        // Redirect to programs page if no valid program is found
        header('Location: programs.php');
        exit();
    }
} else {
    // Redirect if no ID is provided
    header('Location: programs.php');
    exit();
}
?>

<section class="details-container">
    <div class="details-header">
        <img src="<?php echo $image_path; ?>" alt="<?php echo htmlspecialchars($program_title); ?>">
        <div class="details-info">
            <h2><?php echo htmlspecialchars($program_title); ?></h2>
            <p><strong>Price for Local:</strong> Rs. <?php echo htmlspecialchars($price_local); ?></p>
            <p><strong>Price for Foreigners:</strong> $<?php echo htmlspecialchars($price_foreign); ?></p>
            <?php
              if (isset($_SESSION['customer_id'])) {
                  // If the customer is logged in, allow them to book
                  echo '<a href="programBoking.php?category=' . urlencode($category_title) . '&program=' . urlencode($program_title) . '" class="book-btn">Book</a>';
              } else {
                  // If the customer is not logged in, redirect to login page
                  echo '<a href="customer-login.php" class="book-btn">Login to Book</a>';
              }
              ?>
        </div>
    </div>
    
    <div class="details-content">
        <h3 style="color: orangered;">About the Program</h3>
        <p><?php echo htmlspecialchars($description); ?></p>

        <h3>Features</h3>
        <ul>
            <?php if (!empty($features)) {
                foreach ($features as $feature) { ?>
                    <li><?php echo htmlspecialchars($feature); ?></li>
                <?php }
            } else { ?>
                <li>No features available for this program</li>
            <?php } ?>
        </ul>

        <h3>Trainer: <?php echo htmlspecialchars($trainer_name); ?></h3>
        <p>Qualifications: <?php echo htmlspecialchars($trainer_qualifications); ?></p>
        <p>About Trainer: <?php echo htmlspecialchars($about_trainer); ?></p>

        <h3>Available Schedule</h3>
        <ul>
            <?php if (!empty($schedule)) {
                foreach ($schedule as $time) { ?>
                    <li><?php echo htmlspecialchars($time); ?></li>
                <?php }
            } else { ?>
                <li>No schedule available at the moment</li>
            <?php } ?>
        </ul>

        <a href="programs.php" class="back-button">Back to Programs</a>
    </div>
</section>

<?php include('customer-main/footer.php'); ?>
