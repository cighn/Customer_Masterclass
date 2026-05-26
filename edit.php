<?php include 'db.php';

$id = $_GET['id'];

$stmt = $conn->prepare("SELECT * FROM customer_masterlist WHERE CustomerID = :id");
$stmt->execute([':id' => $id]);
$row = $stmt->fetch(PDO::FETCH_ASSOC);

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $Title = $_POST['title'];
    $FirstName = $_POST['firstname'];
    $MiddleName = $_POST['middlename'];
    $LastName = $_POST['lastname'];
    $SuffixName = $_POST['suffix'];
    $DateOfBirth = $_POST['dob'];
    $AddressLine01 = $_POST['address1'];
    $AddressLine02 = $_POST['address2'];
    $Barangay = $_POST['barangay'];
    $City = $_POST['city'];
    $Province = $_POST['province'];
    $Region = $_POST['region'];
    $Contact = $_POST['contact'];
    $Email = $_POST['email'];
    $Status = $_POST['status'];

    $sql = "UPDATE customer_masterlist SET 
            Title = :Title, 
            FirstName = :FirstName, 
            MiddleName = :MiddleName, 
            LastName = :LastName, 
            SuffixName = :SuffixName, 
            DateOfBirth = :DateOfBirth, 
            AddressLine01 = :AddressLine01, 
            AddressLine02 = :AddressLine02, 
            Barangay = :Barangay, 
            City = :City, 
            Province = :Province, 
            Region = :Region, 
            Contact = :Contact, 
            Email = :Email, 
            cStatus = :Status 
            WHERE CustomerID = :id";

    $stmt = $conn->prepare($sql);
    $stmt->execute([
        ':Title' => $Title,
        ':LastName' => $LastName,
        ':FirstName' => $FirstName,
        ':MiddleName' => $MiddleName,
        ':SuffixName' => $SuffixName,
        ':DateOfBirth' => $DateOfBirth,
        ':AddressLine01' => $AddressLine01,
        ':AddressLine02' => $AddressLine02,
        ':Barangay' => $Barangay,
        ':Province' => $Province,
        ':City' => $City,
        ':Region' => $Region,
        ':Contact' => $Contact,
        ':Email' => $Email,
        ':Status' => $Status,
        ':id' => $id
    ]);

    header("Location: index.php");
    exit();
}
?>
