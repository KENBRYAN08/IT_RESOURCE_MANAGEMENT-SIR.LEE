
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "it_resource_management";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

//Id provided

if(!isset($_GET['id'])) {
    echo "No ID provided. Here is what is being passed: ";
    var_dump($_GET); // This will print all GET parameters
    exit();
}

if(!isset($_GET['id'])) {
    echo "No ID provided.";
    exit();
}

$id = $_GET['id'];

//fetch resource data based on id
$sql = "SELECT * FROM resources WHERE id=$id";
$result = $conn->query($sql);

if ($result->num_rows == 0) {
    echo "Resource not found.";
    exit();
}

$row = $result->fetch_assoc();

if (isset($_POST['update_resource'])) {
    $resource_name = $_POST['resource_name'];
    $type = $_POST['type'];
    $specification = $_POST['specification'];
    $status = $_POST['status'];
    $allocated_to = $_POST['allocated_to'];
    $date_allocated = $_POST['date_allocated'];
 
    $sql = "UPDATE resources SET resource_name='$resource_name', type='$type', specification='$specification', status='$status', allocated_to='$allocated_to', date_allocated='$date_allocated' WHERE id=$id";

    if ($conn->query($sql) === TRUE) {
        header('Location: admin.php');
        exit();//Prevent further execution after redirect
    } else {
        echo "Error updating resource: " . $conn->error;
    }
 }

?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Resource</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

<style>

h3{
    text-align:center;
    margin-bottom:30px;
    margin-top:30px;
}

form {
    background: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    max-width: 400px;
    margin: auto;
}

label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
}

input[type="text"],
input[type="date"],
input[type="submit"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type="submit"] {
    background-color: #000;
    color: white;
    border: none;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #007bff;
}

p {
    text-align: center;
}

a {
    color: #000;
    text-decoration: none;
}

a:hover {
    text-decoration: underline;
}



.top-navbar {
    background-color: #D3D3D3; 
    color: #000; 
    padding: 1px 2px; 
    position: relative; 
    display: flex; 
    justify-content: space-between; 
    align-items: center; 
    z-index: 1000;
    height: 50px
}

.navbar-container {
    display: flex; 
    align-items: center; 
    width: 100%; 
}

.navbar-links {
    display: flex; 
    margin-left: auto; 
    justify-content: flex-end; 
    margin-right: 30px; 
}

.navbar-links a {
    color:#000; 
    text-decoration: none; 
    margin-left: 20px; 
    transition: color 0.3s; 
}

.navbar-links a:hover {
    color: #007bff;
}


</style>




</head>
<body>

<div class="top-navbar">
    <div class="navbar-container">
        <h1>IT Resource Management</h1>
        <div class="navbar-links">
            <a href="index.php">Back to Resource List</a>
            <a href="logout.php">Logout</a>
        </div>
    </div>
</div>








    <h3>Edit Resource</h3>

    <form action ="edit_resource.php?id=<?php echo $id; ?>"
    method="post">


        <label for="resource_name">Resource Name:</label>

        <input type="text" name="resource_name" id="resource_name" value="<?php echo $row['resource_name']; ?>" required><br>

        <label for="type">Type: </label>

        <input type="text" name="type" id="type" value="<?php echo $row['type']; ?>" required><br>

        <label for="specification">Specification: </label>

        <input type="text" name="specification" id="specification" value="<?php echo $row['specification']; ?>" required><br>

        <label for="status">Status: </label>

        <input type="text" name="status" id="status" value="<?php echo $row['status']; ?>" required><br>

        <label for="allocated_to">Allocated to: </label>

        <input type="text" name="allocated_to" id="allocated_to" value="<?php echo $row['allocated_to']; ?>"><br>

        <label for="date_allocated">Date Allocated: </label>

        <input type="date" name="date_allocated" id="date_allocated" value="<?php echo $row['date_allocated']; ?>"><br>

        <input type="submit" name="update_resource" value="Update Resource">

    </form>



</body>
</html>

<?php

$conn->close();

?>