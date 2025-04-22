<?php
    session_start();
    include '../Backend/login.php'; 

    if (isset($_SESSION['user_id'])) 
    {
        header("Location: Home.php");
        exit;
    }

    $error = "";
    if (isset($_GET['error'])) 
    {
        $error = $_GET['error'];
    }
?>

<!DOCTYPE html>
    <html lang = "en">

    <head>
        <meta charset = "UTF-8">
        <meta name = "viewport" content = "width = device-width, initial-scale = 1.0">
        <title> Zen Daisy - Home</title>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script> <!-- Bootstrap Link -->
        <link rel = "stylesheet" href = "../styling/style.css"> <!-- custom Css link -->
    </head>

    <body>
        <!-- Navigation Bar -->
        <nav class = "navbar navbar-expand-lg" > 
            <div class = "container-fluid">
                <a class = "navbar-brand" href = "login.php"></a>
                <button class = "navbar-toggler" type = "button" data-bs-toggle = "collapse" data-bs-target="#navbarNav">
                    <span class = "navbar-toggler-icon"></span>
                </button>

                <div class = "collapse navbar-collapse" id = "navbarNav">
                    <ul class = "navbar-nav d-flex w-100">
                        <li class = "nav-item"><a class = "nav-link fw-bold" href = "HomePage.php">Home</a></li>
                        <li class = "nav-item"><a class = "nav-link fw-bold" href = "">Daisy Info</a></li>
                        <li class = "nav-item"><a class = "nav-link fw-bold" href = "LoginPage.php">Login</a></li>
                        <li class = "nav-item ms-auto"><a class = "nav-link fw-bold" href = "RegistrationPage.php">Register Now</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Login Form -->
        <div class = "container my-5">
            <h2 class = "text-center mb-4">Login</h2>

            <?php if ($error): ?>
                <div class = "alert alert-danger text-center"><?php echo $error; ?></div>
            <?php endif; ?>

            <form method = "POST" class = "mx-auto" style = "max-width: 500px;">
                <div class = "mb-4">
                    <label class = "form-label">Username</label>
                    <input type = "username" name = "username" class = "form-control" placeholder = "JohnSmith123" required>
                </div>

                <div class = "mb-4">
                    <label class = "form-label">Password</label>
                    <input type = "password" name = "password" class = "form-control" placeholder = "Password" required>
                </div>

                <button type = "submit" class = "btn btn-primary w-100">Login</button>
            </form>
        </div>

        <!-- Footer -->
        <footer class = "text-white text-center py-3 footer-red">
            <p>&copy; 2025 Zen Daisy. All Rights Reserved.</p>
        </footer>

    </body>
</html>