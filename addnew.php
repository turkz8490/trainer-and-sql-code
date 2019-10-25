<?php 
include_once ('config.php');
if(isset($_POST['add'])){
    $firstname = $_POST['firstname'];
    $lastname = $_POST['lastname'];
    $gender = $_POST['gender'];
    $birthday = $_POST['birthday'];
    $department = $_POST['department'];
    $rank = $_POST['rank'];
    if(empty($firstname) || empty($lastname) || empty($gender) || empty($birthday) || empty($department) || empty($rank)){
        echo "one of the fields is empty";
        if(empty($empty)){
            echo "First Name is Empty";
        }
        echo "<a href=\"add.php\">Back </a>";
    }
    else {
    $sql = "insert into philhealth.tblemployee ";
    $sql .= "(Efname, Elname, Egender, Ebirthdate, Edept, rank) ";
    $sql .= "values (:fname, :lname, :gender, :bday, :dept, :rank)";
    $query = $conn->prepare($sql);
    $query -> bindparam(':fname', $firstname);
    $query -> bindparam(':lname', $lastname);
    $query -> bindparam(':gender', $gender);
    $query -> bindparam(':bday', $birthday);
    $query -> bindparam(':dept', $department);
    $query -> bindparam(':rank', $rank);
    $query -> execute();

    echo "Successfully Added" . "<br/>";
    echo "<a href = \"index.php\">Back</a>";

    }
}
else{
    echo "ERROR: Restricted Access!";
}
?>