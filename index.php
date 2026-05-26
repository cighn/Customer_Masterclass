<?php include 'db.php'; ?>
<!DOCTYPE html>
<html>
    <head>
        <title>INFORMATION MANAGEMENT DATABASE</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <style>
            .custom-table { font-size: 20px; white-space: nowrap; table-layout: auto; }
            .custom-table th, .custom-table td { padding: 4px 6px; }
            .action-col { min-width: 110px; }
            .btn btn-primary mb-3 shadow-sm {color: orangered;}
        </style>
    </head>
    <body class="container-fluid p-4" style="background: url(bglang.jpg)">
        
        <?php include 'header.php'; ?>

        <h2>CUSTOMER MASTERLIST</h2>
        <a href="add.php" class="btn btn-primary mb-3 shadow-sm"> Add Customer Information </a>

        <div class="table-responsive bg-white shadow-sm">
            <table class="table table-hover table-bordered table-sm custom-table mb-0">
                <thead class="table-dark">
                    <tr>
                        <th>CUSTOMER ID</th>
                        <th>CUSTOMER NAME</th>
                        <th>EMAIL ADDRESS</th>
                        <th>HOME ADDRESS</th>
                        <th>STATUS</th>
                        <th>DATE PROCESSED</th>
                        <th>EDIT OR DELETE</th>
                    </tr>
                </thead>
                <tbody>
                <?php
                    $stmt = $conn->prepare("SELECT * FROM customer_masterlist ORDER BY CustomerID DESC");
                    $stmt->execute();
                    $customer = $stmt->fetchAll(PDO::FETCH_ASSOC);

                    foreach ($customer as $row) {
                        echo "<tr>
                            <td>{$row['CustomerID']}</td>
                            <td>{$row['Customer']}</td>
                            <td>{$row['Email']}</td>
                            <td>{$row['Address']}</td>
                            <td>{$row['cStatus']}</td>
                            <td>{$row['DateProcessed']}</td>
                            <td>
                                <a href='edit.php?id={$row['CustomerID']}' class='btn btn-warning btn-sm'>Edit</a>
                                <a href='delete.php?id={$row['CustomerID']}' class='btn btn-danger btn-sm'>Delete</a>
                            </td>
                        </tr>";
                    }
                ?>
                </tbody>
            </table>
        </div>
    </body>
</html>