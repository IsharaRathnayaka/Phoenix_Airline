<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Admin Profile Edit</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link href="CSS/Form.css" rel="stylesheet" type="text/css">
        <link href="CSS/Navigation.css" rel= "stylesheet" type="text/css">
        <link href="CSS/head_styles.css" rel="stylesheet" type="text/css">
        <link href="CSS/Button.css" rel="stylesheet" type="text/css">
        
        <Style>
            body{
                 background-image: url('CSS/BG_pictures/BG4.jpg');
            }
        </style>
    </head>
    <body>
        
        <ul>
            <li><a class="active" href="Home.html">Home</a></li>
            <li><a href="AdminPage.html">Admin</a></li>
            <li><a href="AdminLogin.html">Admin Login</a></li>
            
        </ul>
        
        <center>
        <p class="Head">Admin Profile Edit</p>
         <form action="EditAdmin" method="POST">
            <table cellspacing="9">
                    <tr>
                        <td class="select">ID:</td>
                        <td><input class="inputs" type="text" name="id" value="" /></td>
                    </tr>
                    <tr>
                        <td class="select">Name:</td>
                        <td><input class="inputs" type="text" name="name" value="" /></td>
                    </tr>
                    
                    <tr>
                        <td class="select">Password:</td>
                        <td><input class="inputs" type="password" name="password" value="" /></td>
                    </tr>
                    <tr>
                        <td class="select">Confirm Password:</td>
                        <td><input class="inputs" type="password" name="copassword" value="" /></td>
                    </tr>
                    
                    <tr>
                        <td class="select">Passport number:</td>
                        <td><input class="inputs" type="text" name="ukey" value="" /></td>
                    </tr>
                    
                    <tr>
                        <td class="select">Telephone:</td>
                        <td><input class="inputs" type="text" name="tele" value="" /></td>
                    </tr>
                        
                    <tr>
                        <td class="select">Address:</td>
                        <td><input class="inputs" type="text" name="address" value="" /></td>
                    </tr>
                    
                    <tr>
                        <td class="select">Email:</td>
                        <td><input class="inputs" type="email" name="email" value="" /></td>
                    </tr>
                    
                    <tr>
                        <td><input class="button" type="submit" value="UPDATE" /></td>
                        <td><input class="button" type="reset" value="CLEAR" /></td>
                    </tr>
            </table>

        </form>
    </center>
    </body>
</html>

