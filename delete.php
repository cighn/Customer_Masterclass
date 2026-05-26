<?php include 'db.php';
$id = $_GET['id'];

$stmt = $conn->prepare("DELETE FROM customer_masterlist WHERE Customerid = :id");
$stmt->execute([':id' => $id]);

header("Location: index.php");
?>