<?php 
session_start();
if(!isset($_SESSION['user'])){
    header("location:login.php");   
}
require ("config.php"); 
$result = $conn->query("SELECT * FROM philhealth.tblemployee order by id desc");

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <title>Document</title>
</head>
<body>
   <h1>Welcome to Philsite</h1>
   <h3>Welcome <?php echo $_SESSION['nickname'] ?></h3>
   <a href="add.php">Add New</a> | <a href="adduser.php">Add User</a> | <a href="logout.php">Log-out</a>
   <table class="table table-dark table-bordered">
       <tr>
           <th  >First Name</th>
           <th>Last Name</th>
           <th>Gender</th>
           <th>Birthdate</th>
           <th>Department</th>
           <th>Rank</th>
           <th>Edit</th>
           <th>Delete</th>
       </tr>
       <?php 
       while($row = $result->fetch(PDO::FETCH_ASSOC)){
           echo "<tr>";
           echo "<td>" . $row['Efname'] . "</td>";
           echo "<td>" . $row['Elname'] . "</td>";
           echo "<td>" . $row['Egender'] . "</td>";
           echo "<td>" . $row['Ebirthdate'] . "</td>";
           echo "<td>" . $row['Edept'] . "</td>";
           echo "<td>" . $row['rank'] . "</td>";
           echo "<td> <a href=\"edit.php?key=$row[ID]&fname=$row[Efname]\">Edit</a></td>";
           echo "<td> <a href=\"delete.php?key=$row[ID]\">DELETE</a></td>";
           echo "</tr>";
       }
       ?>

   </table>
</body>
</html>