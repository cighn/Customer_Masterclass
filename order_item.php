<?php include 'db.php'; 
if(isset($_POST['save_item'])){
    $stmt = $conn->prepare("INSERT INTO order_items (order_id, product_id, quantity, price_at_order) VALUES (?, ?, ?, ?)");
    $stmt->execute([$_POST['order_id'], $_POST['product_id'], $_POST['qty'], $_POST['price']]);
    header("Location: order_item.php");
}
?>
<!DOCTYPE html>
<html>
<head>
    <title>ORDER ITEMS</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container-fluid p-4" style="background-color:darkgray">
    <?php include 'header.php'; ?>
    <div class="card p-3 mb-4 shadow-sm">
        <h4>Add Item to Order</h4>
        <form method="POST" class="row g-3">
            <div class="col-md-3">
                <select name="order_id" class="form-select" required>
                    <option value="">Choose Order ID...</option>
                    <?php
                    $orders = $conn->query("SELECT order_id FROM orders")->fetchAll();
                    foreach($orders as $o) echo "<option value='{$o['order_id']}'>Order #{$o['order_id']}</option>";
                    ?>
                </select>
            </div>
            <div class="col-md-3">
                <select name="product_id" class="form-select" required>
                    <option value="">Choose Product...</option>
                    <?php
                    $products = $conn->query("SELECT * FROM products")->fetchAll();
                    foreach($products as $p) echo "<option value='{$p['product_id']}'>{$p['product_name']}</option>";
                    ?>
                </select>
            </div>
            <div class="col-md-2"><input type="number" name="qty" class="form-control" placeholder="Qty" value="1" required></div>
            <div class="col-md-2"><input type="number" step="0.01" name="price" class="form-control" placeholder="Price Locked" required></div>
            <div class="col-md-2"><button type="submit" name="save_item" class="btn btn-success w-100">Save Item</button></div>
        </form>
    </div>
    <h2>ORDER ITEMS LIST</h2>
    <table class="table table-hover table-bordered table-sm bg-white shadow-sm">
        <thead class="table-dark">
            <tr><th>Item ID</th><th>Order #</th><th>Product Name</th><th>Qty</th><th>Price Locked</th><th>Action</th></tr>
        </thead>
        <tbody>
            <?php
            $stmt = $conn->query("SELECT oi.*, p.product_name FROM order_items oi JOIN products p ON oi.product_id = p.product_id");
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                echo "<tr><td>{$row['order_item_id']}</td><td>#{$row['order_id']}</td><td>{$row['product_name']}</td>
                <td>{$row['quantity']}</td><td>₱" . number_format($row['price_at_order'], 2) . "</td>
                <td><button class='btn btn-warning btn-sm'>Edit</button> <button class='btn btn-danger btn-sm'>Delete</button></td></tr>";
            }
            ?>
        </tbody>
    </table>
</body>
</html>