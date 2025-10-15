<?php include('customer-main/main.php');?>

    <section class="hero">

        <div class="hero-content">
          <div class="hero-text">
          <h1 style="color: rgb(128, 235, 235);font-size: 70px;">BODY ACHIEVES</h1>
            
            <h2 style="color: rgb(230, 69, 20);font-size: 50px;">WHAT MIND BELIEVES..</h2>
            <h4 style="color: rgb(201, 226, 226);font-size: 40px;">Get Fit, Don't Exit!!</h4>
            <br> 
          <p>
           Contact Us: 077-5124766
          </p>

            <button class="btn join"><a href="http://localhost:8080/fitzone/customer-signup.php" style="color: white;">Join now</a></button>
            </div>
            <div class="side-image">
                <img src="images/slide-2.png" alt="Side image here">
            </div>
            </div>
    </section>
    <section class="about-us" id="about">
    <div class="about-us-box">
        <div class="about-content">
            <img src="images/about1.jpg" alt="South Caffe Interior">
            <div class="text-content">
                <h2 style="color: orangered;">ABOUT US</h2>
                <p>FitZone Fitness Center was founded with the vision of helping individuals transform their health, one step at a time. We believe in creating a welcoming and empowering community where everyone, from beginners to seasoned athletes, can work on their fitness goals. With state-of-the-art equipment, passionate trainers, and a supportive atmosphere, FitZone is more than just a gym—it's a place where you can become the best version of yourself, both physically and mentally.</p>
            </div>
        </div>
        <div class="about-content">
            <img src="images/about2.jpg" alt="Table Capacities">
            <div class="text-content">
                <h2 style="color: orangered;">OUR EQUIPMENTS</h2>
                <p>At FitZone, we pride ourselves on offering a wide range of modern equipment to meet every fitness need. Our facility is fully stocked with cutting-edge cardio machines, strength training equipment, and free weights, ensuring you have the right tools to achieve your goals. Whether you are looking to burn calories, build muscle, or improve endurance, we have everything you need for a complete workout experience that will leave you feeling strong, healthy, and energized..</p>
            </div>
        </div>
 

<div class="team-members">
            <h2 style="color: orangered;">MEET OUR TRAINERS</h2>
            <div class="trainers-row">
                <div class="trainer-box">
                    <img src="images/art/trainer1.jpg" alt="Trainer 1" class="trainer-img">
                    <h3>Dulanji Hewage</h3>
                    <p>Mobile: 072-4534423</p>
                    <p>Email: info@fitzone.com</p>
                </div>

                <div class="trainer-box">
                    <img src="images/art/trainer2.jpg" alt="Trainer 2" class="trainer-img">
                    <h3>Supun Sampath</h3>
                    <p>Mobile:  077-8874322</p>
                    <p>Email: info@fitzone.com</p>
                </div>

                <div class="trainer-box">
                    <img src="images/art/trainer3.jpeg" alt="Trainer 3" class="trainer-img">
                    <h3>Nisayuru Sankalpa</h3>
                    <p>Mobile: 072-23458989</p>
                    <p>Email: info@fitzone.com</p>
                </div>
            </div>
        </div>


    </div>
</section>




<section class="services" id="services">
    <h2 style="color: orangered;">OUR SERVICES</h2>
    <div class="services-container">

        <?php
        // Fetch the categories from the database where active = 'Yes'
        $sql = "SELECT * FROM tbl_programCategories WHERE active='Yes'";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            // Loop through the results and display each active category
            while ($row = $result->fetch_assoc()) {
                $id = $row['id']; // Assuming you have a unique 'id' field in your category table
                $title = $row['title'];
                $image_name = $row['image_name'];

                // Set the default image if no image is found
                $image_path = $image_name != "" ? "images/category/" . htmlspecialchars($image_name) : "images/default-service.jpg";

                ?>
                <a href="programs.php?category_id=<?php echo $id; ?>" class="service-box">
                    <img src="<?php echo $image_path; ?>" alt="<?php echo htmlspecialchars($title); ?>">
                    <h3><?php echo htmlspecialchars($title); ?></h3>
                </a>
                <?php
            }
        } else {
            // If no active categories are found
            echo "<p>No active services available at the moment.</p>";
        }
        ?>

        <!-- <div class="view-services">
            <button class="btn">View All Services</button>
        </div> -->
    </div>
</section>



<section class="gym-gallery" id="artgallery">
    <h4 class="label" style="color: orangered;">ART GALLERY</h4>
    <div class="container">
        <div class="gallery">
            <?php
            // Fetch images from the database
            $sql = "SELECT image_name FROM tbl_gallery";
            $stmt = $conn->prepare($sql);
            $stmt->execute();
            $result = $stmt->get_result();

            // Check if there are any images in the database
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    $image_name = $row['image_name'];
                    
                    // Set image path
                    $image_path = "images/gallery/" . $image_name;
            ?>
                    <!-- Display each image in a box -->
                    <div class="box">
                        <img src="<?php echo $image_path; ?>" alt="Gallery Image">
                    </div>
            <?php
                }
            } else {
                echo "<p>No images available in the gallery.</p>";
            }
            ?>
        </div>
    </div>
</section>




<section class="feedback">
    <div class="container">
        <h2 class="heading" style="color: orangered;">CUSTOMER FEEDBACKS</h2>
        <p class="paragraph">
            Hear What Our Customers Have To Say About Their Experiences With Us...
        </p>
    </div>

    <div class="voices">
        <?php
        // Fetch feedback from the feedback table (assuming table name is 'tbl_feedback')
        $sql = "SELECT customer_name, email, feedback FROM tbl_feedback ORDER BY created_at DESC";
        $res = $conn->query($sql);

        if ($res->num_rows > 0) {
            // Loop through each feedback entry and display it
            while ($row = $res->fetch_assoc()) {
                $customer_name = $row['customer_name'];
                $email = $row['email'];
                $feedback = $row['feedback'];
                ?>
                <div class="voice">
                    <div class="profile">
                        <div class="detail">
                            <li><?php echo htmlspecialchars($customer_name); ?></li>
                            <li><a href="mailto:<?php echo htmlspecialchars($email); ?>"><?php echo htmlspecialchars($email); ?></a></li>
                        </div>
                    </div>
                    <p><?php echo htmlspecialchars($feedback); ?></p>
                </div>
                <?php
            }
        } else {
            // Display message if no feedback is available
            echo "<p>No feedback available yet. Be the first to leave feedback!</p>";
        }
        ?>
    </div>

    <div class="feedback-button">
        <a href="addFeedback.php">Add Feedback</a>
    </div>
</section>





    <section class="contact-location" id="contact">
        <div class="location-box">
            <h2 style="color: orangered;">OUR LOCATION</h2>
            <p>No.22, FitZone Fiteness Center, Main Road, Kurunegala.</p>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3967.6786566503984!2d80.21297921149564!3d6.038757793921613!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae173bc63a6d715%3A0xf3cdaa69256d4844!2sICBT%20Galle%20Campus!5e0!3m2!1sen!2slk!4v1733295777018!5m2!1sen!2slk" height="590" style="border: 0" allowfullscreen="" loading="lazy"></iframe>
        </div>


        <div class="contact-box">
            <h2 style="color: orangered;">CONTACT US</h2>
            <form action="contact-us.php" method="POST">
                <label for="name">Name:</label>
                <input type="text" name="full_name" required>

                <label for="email">Email:</label>
                <input type="email" name="email" required>

                <label for="mobile">Mobile Number:</label>
                <input type="tel" name="mobile" required>

                <label for="message">Your Message:</label>
                <textarea name="message" rows="5" required></textarea>

                <input class="btn" type="submit" name="submit" value="Send Message">
            </form>

        </div>
    </section>


<?php include('customer-main/footer.php'); ?>