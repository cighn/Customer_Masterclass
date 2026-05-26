<?php include 'db.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $sql = "INSERT INTO customer_raw (Title, FirstName, MiddleName, LastName, SuffixName, DateOfBirth, AddressLine01, AddressLine02, Barangay, City, Province, Region, Contact, Email, Status) 
            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->execute([
        $_POST['title'], 
        $_POST['firstname'], 
        $_POST['middlename'], 
        $_POST['lastname'], 
        $_POST['suffix'], 
        $_POST['dob'], 
        $_POST['address1'], 
        $_POST['address2'], 
        $_POST['barangay'], 
        $_POST['city'], 
        $_POST['province'], 
        $_POST['region'], 
        $_POST['contact'], 
        $_POST['email'], 
        $_POST['status']
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
<body class="container mt-4" style="background-color:darkgray; max-width: 800px;">
    <h2 style="font-weight:bolder;">Add Customer Information</h2>
    
    <form method="POST">
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
        
        <select name="status" class="form-control">
            <option value="ACTIVE">ACTIVE</option>
            <option value="INACTIVE">INACTIVE</option>
            <option value="SUSPENDED">SUSPENDED</option>
        </select>
        <div class="mt-3">
            <button type="submit" class="btn btn-success">Save</button>
            <a href="index.php" class="btn btn-secondary">Back</a>
        </div>
    </form>
</body>
</html>