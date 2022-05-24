<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/Form.css" rel="stylesheet" type="text/css">
        <link href="CSS/Navigation.css" rel= "stylesheet" type="text/css">
        <link href="CSS/head_styles.css" rel="stylesheet" type="text/css">
        <link href="CSS/Button.css" rel="stylesheet" type="text/css">
        <style>
            body{
             background-image: url('CSS/BG_pictures/BG4.jpg');
             background-size: cover;
            }
        </style>
    </head>
    <body>
        
        <ul id="myTopnav">
            <li><a class="active" href="Home.html">Home</a></li>
            <li><a href="index.html">Flight</a></li>
            <li><a href="UserReg.html">Registration</a></li>
            <li><a href="Ucheck.jsp">Check Your Profile</a></li>
        </ul>
         <center>
             <p class="Head">User Login</p>
             <form action="UserLogin" method="POST">
                 <table cellpadding="9">
                         <tr>
                             <td class="select">User ID:</td>
                             <td><input class="inputs" type="text" name="id" value="" /></td>
                         </tr>
                         <tr>
                             <td class="select">Password:</td>
                             <td><input class="inputs" type="password" name="pass" value="" /></td>
                         </tr>
                         <tr align="center">
                             <td><input class="button" type="submit" value="LOGIN" /></td>
                             <td><input class="button" type="reset" value="CLEAR" /></td>
                         </tr>
                 </table>
             </form>
             </center>
    </body>
</html>
