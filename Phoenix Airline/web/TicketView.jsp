
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ticket View</title>
        
        <link href="CSS/Form.css" rel="stylesheet" type="text/css">
        <link href="CSS/Navigation.css" rel= "stylesheet" type="text/css">
        <link href="CSS/head_styles.css" rel="stylesheet" type="text/css">
        <link href="CSS/Button.css" rel="stylesheet" type="text/css">
        <style>
            body{
             background-image: url('CSS/BG_pictures/BG3.jpg');
            }
        </style>
        
    </head>
    <body>
        
        <ul>
            <li><a class="active" href="Home.html">Home</a></li>
            <li><a href="index.html">Flight</a></li>
            <li><a href="UserPage.jsp">Your Profile</a></li>
            
        </ul>
        
        <center>
            <p class="Head">Ticket Information:</p>
        <form action="filterTicket" method="POST">
            <table cellspacing='12'>
                <tr style="font-size: 20px;" >
                        <td class = "select">Ticket No:</td>
                        <td><input class="inputs" type="text" name="ticketID" value=""/></td>
                    </tr>
                    <tr>
                        <td><input class="button" type="submit" value="SEARCH" /></td>
                        <td><input class="button" type="reset" value="CLEAR" /></td>
                    </tr>
            </table>

        </form>
        </center>
    </body>
</html>
