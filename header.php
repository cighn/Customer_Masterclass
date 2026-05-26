<!DOCTYPE html>
<html>
<style>
    .navbar-orange {
        background-color: #cc7812;
        border-radius: 30px;
        padding: 10px 20px;
    }

    .nav-custom-link {
        color: white !important;
        font-weight: 500;
        margin-right: 10px;
        transition: 0.3s;
        border-radius: 20px;
    }

    .nav-custom-link:hover {
        background-color: rgb(255, 39, 39);
    }
</style>

<body>
    <nav class="navbar navbar-expand-lg navbar-orange shadow mb-4 mt-3">
        <div class="container-fluid">
            <a class="navbar-brand fw-bold text-white" href="index.php">INFORMATION MANAGEMENT</a>

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">
                <div class="navbar-nav ms-auto">
                    <a class="nav-link nav-custom-link" href="index.php">CUSTOMERS MASTERLIST</a>
                    <a class="nav-link nav-custom-link" href="product.php">PRODUCTS</a>
                    <a class="nav-link nav-custom-link" href="order.php">ORDERS</a>
                    <a class="nav-link nav-custom-link" href="order_item.php">ITEM ORDERS</a>
                </div>
            </div>
        </div>
    </nav>
</body>

</html>