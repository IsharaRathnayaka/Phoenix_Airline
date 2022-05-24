<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Flight Data</title>
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
            <li><a href="flightDetails.jsp">Flight Details</a></li>
            <li><a href="index.html">Flight</a></li>
            
        </ul>
       <center>
        <p class="Head">Your Flight ID :<%out.println(request.getParameter("flightID"));%></p>
        <form action="updateFlight" method="POST">
            <table id="flight">
                <tr>
                    <td class="select">Departing from </td>
                    <td><input type="text" name="departingFrom"></td>
                </tr>
                <tr>
                    <td class="select">Departing to </td>
                    <td><input type="text" name="departingTo"></td>
                </tr>
                <tr>
                    <td class="select">Departing date </td>
                    <td><input type="text" name="departingDate"></td>              
                </tr>
                <tr>
                    <td class="select">Departure time</td>
                    <td><input type="text" name="departureTime"></td>              
                </tr>
                <tr>
                    <td class="select">Arrival time</td>
                    <td><input type="text" name="arrivalTime"></td>              
                </tr>
                <tr>
                    <td class="select">Price</td>
                    <td><input type="text" name="price"></td>              
                </tr>
                <tr>
                    <td><input class="button" type="submit" value="Update Flight"> 
                            <input type="hidden" name="flightID" value="<%=request.getParameter("flightID")%>"></td>
                    
                    <td><input class="button" type="reset" value="CLEAR"></td>
                </tr>
            </table>
        </form>
      </center>
    </body> 
</html>
