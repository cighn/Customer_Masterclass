<?php 
require_once 'db.php'; 

if (isset($_POST['add_product'])) {
    $stmt = $conn->prepare("INSERT INTO products (product_name, price, stock_quantity) VALUES (?, ?, ?)");
    $stmt->execute([
        $_POST['p_name'], 
        $_POST['p_price'],
        $_POST['p_stock']
    ]);
    header("Location: product.php");
    exit();
}

if (isset($_GET['delete_id'])) {
    $stmt = $conn->prepare("DELETE FROM products WHERE product_id = ?");
    $stmt->execute([$_GET['delete_id']]);
    header("Location: product.php");
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Product List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body { background: url(bglang.jpg); padding: 20px; }
        .card-custom { border-radius: 20px; border: none; box-shadow: 0 4px 15px rgba(0,0,0,0.2); }
        .btn-orange { background-color: #FF8C00; color: white; border-radius: 50px; font-weight: bold; }
        .btn-orange:hover { background-color: #e67e00; color: white; }
    </style>
</head>
<body>

    <?php include 'header.php'; ?>

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <div class="card card-custom p-4 mb-4 bg-white">
                    <h4 class="fw-bold mb-3">Add Product</h4>
                    <form method="POST">
                        <div class="mb-3">
                            <label class="form-label small text-muted">Product Name</label>
                            <input type="text" name="p_name" class="form-control" required>
                        </div>
                        <div class="mb-3">
                            <label class="form-label small text-muted">Price (₱)</label>
                            <input type="number" step="0.01" name="p_price" class="form-control" required>
                        </div>
                        <div class="mb-3">
                            <label class="form-label small text-muted">Stock Quantity</label>
                            <input type="number" name="p_stock" class="form-control" value="0" required>
                        </div>
                        <button name="add_product" class="btn btn-orange w-100 mt-2">Save Product</button>
                    </form>
                </div>
            </div>

            <div class="col-md-8">
                <div class="card card-custom p-0 overflow-hidden">
                    <table class="table table-hover mb-0 bg-white">
                        <thead class="table-dark">
                            <tr>
                                <th class="ps-4">ID</th>
                                <th>Product Name</th>
                                <th>Price</th>
                                <th>Stocks</th>
                                <th class="text-center">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $stmt = $conn->query("SELECT * FROM products ORDER BY product_id DESC");
                            while ($p = $stmt->fetch(PDO::FETCH_ASSOC)) {
                                ?>
                                <tr>
                                    <td class="ps-4"><?php echo $p['product_id']; ?></td>
                                    <td class="fw-bold"><?php echo $p['product_name']; ?></td>
                                    <td>₱<?php echo number_format($p['price'], 2); ?></td>
                                    <td><?php echo $p['stock_quantity']; ?> pcs</td>
                                    <td class="text-center">
                                        <a href="product.php?delete_id=<?php echo $p['product_id']; ?>" 
                                           class="btn btn-outline-danger btn-sm rounded-pill px-3"
                                           onclick="return confirm('Sigurado ka ba?')">Delete</a>
                                    </td>
                                </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

</body>
</html>