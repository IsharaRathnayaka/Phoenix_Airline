<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Ticket Data</title>
        
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
            <li><a href="index.html">Flight</a></li>
        </ul>
       
<center>
    <p class="Head">Your Ticket ID :<%out.println(request.getParameter("ticketID"));%></p>
        <form action="updateTicket" method="POST">
            
            <table  cellspacing="3" cellpadding="3">
                <tr>
                   <td class="select">Passenger Name</td>
                <td><input type="text" class="inputs" name="pname"></td>
            </tr>
            <tr>
                <td class="select">Cabin Class</td>
                <td><select name="cclass">
                    <option>First Class</option>
                    <option>Economy Class</option>
                    <option>Business Class</option>
                </select></td>
            </tr>
            <tr>
                <td class="select">Seat</td>
                <td><select name="stype">
                    <option>Window</option>
                    <option>Center</option>
                    <option>Aisle</option>
                </select></td>
            </tr>
            <tr>
                <td class="select">Seat number</td>
                <td><input type="text" name="seatNo" class="inputs"></td>
            </tr>
            
            <tr>
                <td class="select">Email</td>
                <td><input type="email" name="email" class="inputs"></td>
            </tr>
            <tr>
                <td class="select">Phone number</td>
                <td><input type="text" name="pnum" class="inputs"></td>
            </tr>
                <tr>
                    <td><input class="button" type="submit" value="UPDATE"> <input type="hidden" name="ticketID" value="<%=request.getParameter("ticketID")%>"></td>
                    <td><input class="button" type="reset" value="CLEAR"></td>
                </tr>
            </table>
        </form>
</center>
    </body>
</html>
