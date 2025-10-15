<?php include('customer-main/main.php'); ?>


<section id="hero">
  <div class="main-image"></div>
  <div class="heroMain-content">
    <img src="images/side2.png" alt="Left Side Image" class="side-img left-image">
    <div class="hero-search">
      <h1>Search Our Services Here</h1>
      <p>Make your life fantastic...</p>
      <form action="programsearch.php" method="get">
    <input type="text" name="search" placeholder="Search Here">
    <button type="submit">Search Here</button>
</form>
    </div>
    <img src="images/side1.png" alt="Right Side Image" class="side-img right-image">
  </div>
</section>


<section class="programs">
  <h2 class="program-title" style="color: orangered;">GROUP CLASSES</h2>
  <div class="program-container">

    <?php
    // Fetch classes from tbl_programs where category name is 'Group Classes'
    $sql = "SELECT p.title, p.image_name, p.id, c.title AS category_title
            FROM tbl_programs p 
            JOIN tbl_programCategories c ON p.category_id = c.id 
            WHERE c.title = 'Group Classes' AND p.active = 'Yes'";

    $res = $conn->query($sql);

    if ($res) {
        if ($res->num_rows > 0) {
            while ($row = $res->fetch_assoc()) {
                $program_title = $row['title'];
                $image_name = $row['image_name'];
                $program_id = $row['id'];
                $category_title = $row['category_title'];

                // Default image if no image is provided
                $image_path = !empty($image_name) ? "images/programs/" . $image_name : "images/default-program.jpg";
                ?>
                
                <div class="program-card">
                  <img src="<?php echo $image_path; ?>" alt="<?php echo htmlspecialchars($program_title); ?>" class="program-image">
                  <h3><?php echo htmlspecialchars($program_title); ?></h3>
                <?php
                  if (isset($_SESSION['customer_id'])) {
                      // If the customer is logged in, allow them to book
                      echo '<a href="programBoking.php?category=' . urlencode($category_title) . '&program=' . urlencode($program_title) . '" class="book-btn">Book</a>';
                  } else {
                      // If the customer is not logged in, redirect to login page
                      echo '<a href="customer-login.php" class="book-btn">Login to Book</a>';
                  }
                  ?>

                  <a href="groupclass-details.php?id=<?php echo $program_id; ?>" class="see-more">See more..</a>
                </div>

                <?php
            }
        } else {
            echo "<p>No classes available in this category.</p>";
        }
    } else {
        echo "Error: " . $conn->error; // Output any SQL errors
    }
    ?>
    
  </div>
</section>




<section class="programs">
  <h2 class="program-title" style="color: orangered;">PERSONALIZED TRAINING PROGRAMMES</h2>
  <div class="program-container">

    <?php
    // Fetch programs and associated trainer names for "Personalized Training Programs"
    $sql = "SELECT p.title, p.image_name, p.id, t.name AS trainer_name
            FROM tbl_programs p
            LEFT JOIN tbl_trainer t ON p.trainer_id = t.id
            JOIN tbl_programCategories c ON p.category_id = c.id
            WHERE c.title = 'Personalized Training Programs' AND p.active = 'Yes'";

    $res = $conn->query($sql);

    if ($res->num_rows > 0) {
        while ($row = $res->fetch_assoc()) {
            $program_title = $row['title'];
            $trainer_name = $row['trainer_name']; // Trainer name from tbl_trainer
            $image_name = $row['image_name'];
            $program_id = $row['id']; // Keep program ID for dynamic link
            $category_title = "Personalized Training Programs"; // Define the category title

            // Default image if no image is provided
            $image_path = ($image_name != "") ? "images/programs/" . $image_name : "images/default-program.jpg";
            ?>

            <div class="program-card">
              <img src="<?php echo $image_path; ?>" alt="<?php echo htmlspecialchars($program_title); ?>" class="program-image">
              <h3><?php echo htmlspecialchars($program_title); ?></h3>
              <h4>Trainer: <?php echo htmlspecialchars($trainer_name); ?></h4> <!-- Display trainer name -->
              
              <?php
              // Check if the customer is logged in
              if (isset($_SESSION['customer_id'])) {
                  // Allow booking and pass the category and program as URL parameters
                  echo '<a href="programBoking.php?category=' . urlencode($category_title) . '&program=' . urlencode($program_title) . '" class="book-btn">Book</a>';
              } else {
                  // Redirect to login page if not logged in
                  echo '<a href="customer-login.php" class="book-btn">Login to Book</a>';
              }
              ?>
              
              <a href="trainerprogram.php?id=<?php echo $program_id; ?>" class="see-more">See more..</a>
            </div>

            <?php
        }
    } else {
        echo "<p>No personalized training programs available at the moment.</p>";
    }
    ?>
    
  </div>
</section>





<section class="programs">
  <h2 class="program-title" style="color: orangered;">NUTRITION COUNSELINGS</h2>
  <div class="program-container">

    <?php
    // Fetch nutrition counseling programs from tbl_programs where category is 'Nutrition Counselling'
    $sql = "SELECT p.title, p.image_name, p.id
            FROM tbl_programs p
            JOIN tbl_programCategories c ON p.category_id = c.id
            WHERE c.title = 'Nutrition Counselling' AND p.active = 'Yes'";

    $res = $conn->query($sql);

    if ($res->num_rows > 0) {
        while ($row = $res->fetch_assoc()) {
            $program_title = $row['title'];
            $image_name = $row['image_name'];
            $program_id = $row['id']; // Keep program ID for dynamic link
            $category_title = 'Nutrition Counselling'; // Define the category title

            // Default image if no image is provided
            $image_path = ($image_name != "") ? "images/programs/" . $image_name : "images/default-program.jpg";
            ?>

            <div class="program-card">
              <img src="<?php echo $image_path; ?>" alt="<?php echo htmlspecialchars($program_title); ?>" class="program-image">
              <h3><?php echo htmlspecialchars($program_title); ?></h3>
              
              <?php
              // Check if the customer is logged in
              if (isset($_SESSION['customer_id'])) {
                  // Allow booking and pass the category and program as URL parameters
                  echo '<a href="programBoking.php?category=' . urlencode($category_title) . '&program=' . urlencode($program_title) . '" class="book-btn">Book</a>';
              } else {
                  // If not logged in, redirect to login page
                  echo '<a href="customer-login.php" class="book-btn">Login to Book</a>';
              }
              ?>
              
              <a href="groupclass-details.php?id=<?php echo $program_id; ?>" class="see-more">See more..</a>
            </div>

            <?php
        }
    } else {
        echo "<p>No nutrition counseling programs available at the moment.</p>";
    }
    ?>
    
  </div>
</section>



<?php include('customer-main/footer.php'); ?>