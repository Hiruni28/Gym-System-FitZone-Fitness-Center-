<?php 
include('partials/main.php'); 

// Check if the program ID is provided in the URL
if (isset($_GET['id'])) {
    $program_id = $_GET['id'];

    // Fetch the program details from the database
    $sql = "SELECT image_name FROM tbl_programs WHERE id=?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param('i', $program_id);
    $stmt->execute();
    $res = $stmt->get_result();

    if ($res->num_rows == 1) {
        $row = $res->fetch_assoc();
        $image_name = $row['image_name'];

        $sql = "DELETE FROM tbl_programs WHERE id=?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param('i', $program_id);

        if ($stmt->execute()) {
            if ($image_name != "" && file_exists("../images/programs/" . $image_name)) {
                unlink("../images/programs/" . $image_name);
            }

            header('Location: manage-classProgram.php?status=success&action=delete_program');
            exit();
        } else {
            echo "<div class='error'>Failed to delete class. Please try again.</div>";
        }
    } else {
        header('Location: manage-classProgram.php?status=error&action=not_found');
        exit();
    }
} else {
    header('Location: manage-classProgram.php?status=error&action=invalid_id');
    exit();
}

?>

<?php include('partials/footer.php'); ?>
