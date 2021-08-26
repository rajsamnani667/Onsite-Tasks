<!DOCTYPE html>
<?php
if(isset($_POST['submit'])){
    $user = $_POST['username'];
    $pass = $_POST['username']
    if ($pass==/^[A-Za-z0-9_!@%&*] && $user==/^[0-9]){
        echo ("Password is correct")
    }
    else{
        echo ("error! plz enter correct password")
    }
}

?>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Site</title>
</head>
<body>
<form action="" method="post">
        <table align="center">            <tr>
                <td>Username:</td>
                <td><input type="text" name="username" placeholder="enter your username"></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type="password" name="password" placeholder="enter your password"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" name="submit" value="submit"></td>
            </tr>
        </table>
        </form>
            
</body>
</html>