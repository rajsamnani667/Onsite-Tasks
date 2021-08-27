<!DOCTYPE html>
<?php
if(isset($_POST['submit'])){
    $user = $_POST['username'];
    $pass = $_POST['username']
    if ($pass in ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','0','P','Q','R','S','T','U','V','W','X','Y','Z'
                            'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'
                            '0','1','2','3','4','5','6','7','8','9'] && $user in ['0','1','2','3','4','5','6','7','8','9'] ){
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
    <link rel="stylesheet" href="style.css" type="text/css" media="all">
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
       <div class="contain">
           <input type='text' id='capt' readonly='readonly'>
           <div id='refresh'> <img src='refresh.png' width="50px" onclick="cap()"></div>
        
           <input type='text' id="textinput">
           <button onclick="validcap()">Check</button>
        </div>
        <script type="text/javascript">
             function cap(){

                 var alpha=['A','B','C','D','E','F','G','H','I','J','K','L','M','N','0','P','Q','R','S','T','U','V','W','X','Y','Z'
                            'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'];
                 var a=alpha[Math.floor(Math.random()*62)];
                 var b=alpha[Math.floor(Math.random()*62)];
                 var c=alpha[Math.floor(Math.random()*62)];
                 var d=alpha[Math.floor(Math.random()*62)];
                 var e=alpha[Math.floor(Math.random()*62)];
                 var f=alpha[Math.floor(Math.random()*62)];

                 var sum=a + b + c + d + e + f;


                 document.getElementById('capt').value=sum;

                }
            function validcap(){
                    var string1 = document.getElementById('capt').value;
                    var string2 = document.getElementById('textinput').value:
                    if (string1==string2){
                        alert("Login Sucessfully")
                        return true;
                    }
                    else {
                        alert("Please enter valid caption!!")
                        return false;
                     }
                }
        </script>
        


</body>
</html>