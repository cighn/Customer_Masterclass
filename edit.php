<?php include 'db.php';

$id = $_GET['id'];

$stmt = $conn->prepare("SELECT * FROM customer_raw WHERE id = :id");
$stmt->execute([':id' => $id]);
$row = $stmt->fetch(PDO::FETCH_ASSOC);

if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $id = $_POST['id'];
        $LastName = $_POST['LastName'];
        $FirstName = $_POST['FirstName'];
        $MiddleName = $_POST['MiddleName'];
        $DateOfBirth = $_POST['DateOfBirth'];
        $AddressLine01 = $_POST['AddressLine01'];
        $AddressLine02 = $_POST['AddressLine02'];
        $Barangay = $_POST['Barangay'];
        $Province = $_POST['Province'];
        $city = $_POST['City'];
        $Region = $_POST['Region'];
        $Email = $_POST['Email'];

    $stmt = $conn->prepare("UPDATE customer_raw SET WHERE id=:id");
    $stmt->execute([
        ':Title' => $Title,
        ':LastName' => $LastName,
        ':FirstName' => $FirstName,
        ':MiddleName' => $MiddleName,
        ':DateOfBirth' => $DateOfBirth,
        ':AddressLine01' => $AddressLine01,
        ':AddressLine02' => $AddressLine02,
        ':Barangay' => $Barangay,
        ':Province' => $Province,
        ':City' => $city,
        ':Region' => $Region,
        ':Email' => $Email
        ]);

    header("Location: index.php");
}
?>

<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<style> .form-control { margin-bottom: 10px; } </style>
</head>

<body class="container mt-4" style="background-color:darkgray ; max-width: 800px;margin-bottom: 10px;">

<h2 style="font-weight:bold;text-align:center; max-width: 800px;margin-bottom: 10px;">Edit Customer Information</h2>

<form method="POST" style="margin-bottom: 10px;">
    <input name="title" class="form-control" placeholder="Title">
    <input name="firstname" class="form-control" placeholder="First Name" required>
    <input name="middlename" class="form-control" placeholder="Middle Name">
    <input name="lastname" class="form-control" placeholder="Last Name" required>
    <input name="suffix" class="form-control" placeholder="Suffix (e.g. Jr.)">
    <input name="dob" type="date" class="form-control" placeholder="yyyy/mm/dd">
    <input name="address1" class="form-control" placeholder="Address Line 1" required>
    <input name="address2" class="form-control" placeholder="Address Line 2">
    <input name="barangay" class="form-control" placeholder="Barangay">
    <input name="city" class="form-control" placeholder="City" required>
    <input name="province" class="form-control" placeholder="Province">
    <input name="region" class="form-control" placeholder="Region">
    <input name="contact" class="form-control" placeholder="Contact">
    <input name="email" type="email" class="form-control" placeholder="Email">
    <button class="btn btn-warning">Update</button>
</form>

</body>
</html>