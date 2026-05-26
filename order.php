<?php include 'db.php'; 
if(isset($_POST['create_order'])){
    $cust_id = $_POST['customer_id'];
    $stmt = $conn->prepare("INSERT INTO orders (customer_id) VALUES (?)");
    $stmt->execute([$cust_id]);
    header("Location: order.php");
}
?>
<!DOCTYPE html>
<html>
<head>
    <title>ORDERS</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container-fluid p-4" style="background-color:darkgray">
    <?php include 'header.php'; ?>

    <div class="card p-3 mb-4 shadow-sm" style="max-width: 500px;">
        <h4>Create New Order</h4>
        <form method="POST">
            <select name="customer_id" class="form-select mb-2" required>
                <option value="">Select Customer...</option>
                <?php
                // UPDATED: Kinukuha ang listahan ng customers mula sa customer_masterlist
                $customers = $conn->query("SELECT ID, FirstName, LastName FROM customer_masterlist")->fetchAll();
                foreach($customers as $c) {
                    echo "<option value='{$c['ID']}'>{$c['FirstName']} {$c['LastName']}</option>";
                }
                ?>
            </select>
            <button type="submit" name="create_order" class="btn btn-success">Create Order Instance</button>
        </form>
    </div>

    <h2>ORDER LIST</h2>
    <table class="table table-hover table-bordered table-sm bg-white shadow-sm">
        <thead class="table-dark">
            <tr>
                <th>ORDER ID</th>
                <th>CUSTOMER NAME</th>
                <th>DATE</th>
                <th>ACTION</th>
            </tr>
        </thead>
        <tbody>
            <?php
            // UPDATED: Naka-JOIN na ngayon sa customer_masterlist
            $stmt = $conn->query("SELECT o.order_id, o.order_date, c.FirstName, c.LastName 
                                  FROM orders o 
                                  JOIN customer_masterlist c ON o.customer_id = c.ID 
                                  ORDER BY o.order_id DESC");
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                echo "<tr>
                    <td>#{$row['order_id']}</td>
                    <td>{$row['FirstName']} {$row['LastName']}</td>
                    <td>{$row['order_date']}</td>
                    <td><a href='order_item.php' class='btn btn-info btn-sm text-white'>Add Items</a></td>
                </tr>";
            }
            ?>
        </tbody>
    </table>
</body>
</html>