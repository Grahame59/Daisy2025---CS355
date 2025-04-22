<!-- Script to insert product data to the DB (Will be for Employees, Supervisors, etc...) -->
<html>
    <head>
        <title>Zen Daisy Product Insert Results</title>
    </head>
    <body>
        <h1>Zen Daisy Product Insert Results</h1>

        <?php
        // Extract POST data
        $product_name     = $_POST['productName'] ?? '';
        $description      = $_POST['Descript'] ?? '';
        $category         = $_POST['Category'] ?? '';
        $cost_price       = $_POST['CostPrice'] ?? '';
        $retail_price     = $_POST['RetailPrice'] ?? '';
        $supplier_id      = $_POST['SupplierID'] ?? '';
        $total_inventory  = $_POST['totalInventory'] ?? '';
        $image_file       = $_FILES['image_path']['name'] ?? null;
        $temp_file        = $_FILES['image_path']['tmp_name'] ?? null;
        $image_path       = null; // default is null unless image is uploaded

        // Validate required fields
        if (!$product_name || !$description || !$category || !$cost_price || !$retail_price || !$total_inventory) 
        {
            echo "Please fill in all required fields.";
            exit;
        }

        // Optional file upload logic
        if (!empty($image_file)) 
        {
            $target_dir = 'DaisyProject/ProductPictures/';
            $target_file = $target_dir . basename($image_file);

            if (move_uploaded_file($temp_file, $target_file)) {
                $image_path = $target_file;
            } else 
            {
                echo "Image upload failed.";
                exit;
            }
        }

        // Connect to DB (Use the Db connect script)
        require_once 'dbconnect.php';

        // Prepare and execute INSERT query
        $query = "INSERT INTO Products 
            (ProductName, Descript, Category, CostPrice, RetailPrice, SupplierID, TotalInventory, image_path)
            VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

        $stmt = $db->prepare($query);

        if (!$stmt) 
        {
            echo "SQL error: " . $db->error;
            exit;
        }

        $stmt->bind_param(
            "sssssiss", 
            $product_name,
            $description,
            $category,
            $cost_price,
            $retail_price,
            $supplier_id,
            $total_inventory,
            $image_path
        );

        if ($stmt->execute()) 
        {
            echo "<p style = 'color: green;'>Product inserted successfully.</p>";
        } else 
        {
            echo "<p style = 'color: red;'>Insert failed: " . $stmt->error . "</p>";
        }

        $stmt->close();
        $db->close();
        ?>
    </body>
</html>
