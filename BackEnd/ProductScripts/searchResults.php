<!-- Script to search products & their data to the DB (Will be for Employees, Supervisors, etc...) -->

<html>
    <head>
        <title>Zen Daisy Search Results</title>
    </head>
    <body>
        <h1>Zen Daisy Search Results</h1>

        <?php
        // Get POST input
        $searchtype = $_POST['searchtype'] ?? '';
        $searchterm = trim($_POST['searchterm'] ?? '');

        // Validate input
        if (!$searchtype || !$searchterm) 
        {
            echo "<p style='color: red;'>Please select a search type and enter a search term.</p>";
            exit;
        }

        // Whitelist valid column names to prevent injection
        $allowed_types = ['ProductID', 'ProductName', 'Category', 'SupplierID'];
        if (!in_array($searchtype, $allowed_types)) 
        {
            echo "<p style = 'color: red;'>Invalid search type.</p>";
            exit;
        }

        // Connect to DB
        require_once 'dbconnect.php';

        // Build query dynamically but bind search term safely
        $query = "SELECT * FROM Products WHERE $searchtype LIKE ?";
        $stmt = $db->prepare($query);

        if (!$stmt) 
        {
            echo "<p style = 'color: red;'>SQL prepare failed: " . $db->error . "</p>";
            exit;
        }

        // Bind and execute
        $likeTerm = "%$searchterm%";
        $stmt->bind_param("s", $likeTerm);
        $stmt->execute();
        $result = $stmt->get_result();

        $num_results = $result->num_rows;
        echo "<p>Number of products found: $num_results</p>";

        if ($num_results > 0) {
            while ($row = $result->fetch_assoc()) 
            {
                echo "<div style = 'margin-bottom: 20px;'>";
                echo "<strong>Product Name: </strong>" . htmlspecialchars($row['ProductName']) . "<br>";
                echo "<strong>Description: </strong>" . htmlspecialchars($row['Descript']) . "<br>";
                echo "<strong>Category: </strong>" . htmlspecialchars($row['Category']) . "<br>";
                echo "<strong>Cost Price: $</strong>" . $row['CostPrice'] . "<br>";
                echo "<strong>Retail Price: $</strong>" . $row['RetailPrice'] . "<br>";
                echo "<strong>Supplier ID: </strong>" . $row['SupplierID'] . "<br>";
                echo "<strong>Total Inventory: </strong>" . $row['TotalInventory'] . "<br>";

                if (!empty($row['image_path'])) 
                {
                    echo "<img src = '" . $row['image_path'] . "' width = '100' height = '100'><br>";
                }

                echo "<hr></div>";
            }
        } else 
        {
            echo "<p>No results matched your search.</p>";
        }

        $stmt->close();
        $db->close();
        ?>
    </body>
</html>
