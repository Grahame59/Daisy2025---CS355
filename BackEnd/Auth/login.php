<?php
    session_start();
    include '../dbconnect.php';

    $error = "";

    if ($_SERVER["REQUEST_METHOD"] == "POST") 
    {
        $username = $_POST['username'];
        $password = $_POST['password'];

        $sql = "SELECT * FROM profiles WHERE username = ?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("s", $username);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($row = $result->fetch_assoc()) 
        {
            if (password_verify($password, $row['password'])) 
            {
                // Set session variables
                $_SESSION['user_id'] = $row['id']; // assuming `id` is your PK
                $_SESSION['username'] = $row['username'];
                $_SESSION['account_type'] = $row['account_type']; // for tracking roles

                // Redirect to logged-in dashboard
                header("Location: Home.php"); // PHP homepage
                exit();
            } 
            else 
            {
                $error = "Invalid password.";
            }
        } 
        else 
        {
            $error = "No account found with this username. Please register.";
        }

        $stmt->close();
    }
?>