<?php
// Check if the form was submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {

  // Get the form data
  $name = $_POST["name"];
  $college = $_POST["college"];
  $branch = $_POST["branch"];
  $email = $_POST["email"];
  $phone = $_POST["phone"];
  $interests = isset($_POST["interests"]) ? $_POST["interests"] : [];

  // Connect to the database
  $servername = "localhost";
  $username = "root";
  $password = "";
  $dbname = "siem";
  $conn = new mysqli($servername, $username, $password, $dbname);

  // Check connection
  if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }

  // Prepare and execute the SQL query to insert the user data into the database
  $stmt = $conn->prepare("INSERT INTO registration (name, college, branch, email, phone, interests) VALUES (?, ?, ?, ?, ?, ?)");
  $stmt->bind_param("ssssss", $name, $college, $branch, $email, $phone, implode(",", $interests));
  $stmt->execute();

  // Close the database connection
  $stmt->close();
  $conn->close();

  // Redirect the user to a thank-you page
  header("Location: thank-you.php");
  exit();
}
?>
