<?php 
include_once ('config.php');
if(isset($_POST['adduser'])){

    $username = $_POST['username'];
    $password = $_POST['password'];
    $role = $_POST['role'];
    $nickname = $_POST['nickname'];

    if(empty($username) || empty($password) || empty($nickname)){
        echo "Incomplete Fields";
    }
    else{
        $sql = "insert into philhealth.tblusers ";
        $sql .= "(username, password, role, nickname) ";
        $sql .= "values (:user, :pass, :role, :nickname)";
        $query = $conn ->prepare($sql);
        $query -> bindparam(':user', $username);
        $query -> bindparam(':pass', $password);
        $query -> bindparam(':role', $role);
        $query -> bindparam(':nickname', $nickname);
        $query ->execute();

        echo "Success <br>";
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <h1>Add User</h1>
    <form action="adduser.php" method="POST">
        <label for="">username</label><br>
        <input type="text" name="username"> <br>
        <label for="">Password</label><br>
        <input type="password" name="password"><br>
        <label for="">Nickname</label><br>
        <input type="text" name="nickname"><br>
        <label for="">Role</label><br>
        <input type="text" name="role"><br>
        <input type="submit" name="adduser" value="Register"><br>
    </form>
</body>
</html>