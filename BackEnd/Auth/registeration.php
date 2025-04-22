<?php
include "../dbconnect.php";

$error = "";
$success = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") 
{
    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT); // Secure hashing

    // 1st check if email already exists (User is registered)
    $check = $conn->prepare("SELECT id FROM profiles WHERE email = ?");
    $check->bind_param("s", $email);
    $check->execute();
    $check->store_result();

    if ($check->num_rows > 0) 
    {
        echo "This email is already registered. <a href = 'login.php'>Login instead</a>";
        $check->close();
    } else 
    {
        $check->close();

        // Insert a new user to the DB       
        $sql = "INSERT INTO profiles (username, email, password) VALUES (?, ?, ?)";
        $stmt = $conn->prepare($sql); 
        $stmt->bind_param("sss", $username, $email, $password);

        if ($stmt->execute()) 
        {
            $success = "Registration successful. <a hrefv = 'login.php'>Login Here</a>";
        } else {
            $error = "Error: " . $stmt->error;
        }

        $stmt->close();
    }
}
?>