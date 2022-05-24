<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome User</title>
        <link href="CSS/Form.css" rel="stylesheet" type="text/css">
        <link href="CSS/Navigation.css" rel= "stylesheet" type="text/css">
        <link href="CSS/head_styles.css" rel="stylesheet" type="text/css">
        <link href="CSS/Button.css" rel="stylesheet" type="text/css">
         <link href="CSS/dashboard.css" rel="stylesheet" type="text/css">
        <style>
            body{
             background-image: url('CSS/BG_pictures/BG4.jpg');
             background-size: cover;
            }
        </style> 
    </head>
    
    <body>
         <ul>
            <li><a class="active" href="Home.html">Home</a></li>
            <li> <a href="index.html">Flight</a></li>
        </ul>
        
        <center>
        <p>Welcome to Phoenix</p>
        <div class = "dash">
        <h2 class = "AHead">- User Dashboard -</h2>
        <table class = "dashTable">  
            <tr>
                <th class="thHead">Flight&nbsp;&nbsp;</th>
                <th><button class="button" onclick="window.open('bookingFlight.html');">Book</button></th>
            </tr>
            <tr>
                <th class="thHead">Ticket Details&nbsp;&nbsp;</th>
                <th><button class="button" onclick="window.open('TicketView.jsp');">Check Ticket</button></th>
            </tr>
            <tr>
                <th class="thHead">Profile&nbsp;&nbsp;</th>
                <th><button class="button" onclick="window.open('updateUser.jsp');">Edit</button></th>
            </tr>
            <tr>
                <th class="thHead">User Profile&nbsp;&nbsp;</th>
                <th><button class="button" onclick="window.open('ViewUser.jsp');">Check</button></th>
            </tr>
            <tr>
                <th class="thHead">Flight&nbsp;&nbsp;</th>
                <th><button class="button" onclick="window.open('FlightEdit.jsp');">Edit</button></th>
            </tr>
             <tr>
                <th class="thHead">Ticket &nbsp;&nbsp;</th>
                <th><button class="button" onclick="window.open('ticketEdit.jsp');">Edit</button></th>
            </tr>
            <tr>
                <th class="thHead">Flight &nbsp;&nbsp;</th>
                <th><button class="button" onclick="window.open('flightDetails.jsp');">Check</button></th>
            </tr>
            <tr>
                <th class="thHead">Ticket &nbsp;&nbsp;</th>
                <th><button class="button" onclick="window.open('updateTicket.jsp');">Edit</button></th>
            </tr>
   
        </table>  
        </div>    
    </center>
    </body>
</html>
