<%@page import="model.DbCon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Statement  st=null;
    ResultSet rs=null;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Flight Edit</title>
        <link href="CSS/BG.css" rel="stylesheet" type="text/css">
        <link href="CSS/Navigation.css" rel= "stylesheet" type="text/css">
        <link href="CSS/head_styles.css" rel="stylesheet" type="text/css">
        <link href="CSS/Button.css" rel="stylesheet" type="text/css">
        <link href="CSS/tableOut.css" rel="stylesheet" type="text/css">
        <style>
            body{
             background-image: url('CSS/BG_pictures/BG3.jpg');
             background-size: cover;
            }
        </style>
    </head>
    <body>
       
        <ul>
            <li><a class="active" href="Home.html">Home</a></li>
            <li><a href="TicketView.jsp">Ticket View</a></li>
        </ul>
        
       <p class="Head">Edit Flight Details</p>
       
       <center>
         <table id="flight">
          <tr>
            <th>Flight ID </th>
            <th>Departing from</th>
            <th>Departing to</th>
            <th>Departing date</th>
            <th>Departure time</th>
            <th>Arrival time</th>
            <th>Price</th>
            <th style="text-align: center;" >Update</th>
            <th style="text-align: center;">Delete</th>
            </tr>
            
            <tr> 
     <%   try
  {
DbCon db = new DbCon();
st  = db.Connection().createStatement();

String sql ="SELECT * FROM flightdetails";
rs = st.executeQuery(sql);
while(rs.next()){

    %>

       <td><%=rs.getString("flightID")%></td>
       <td><%=rs.getString("departing_from")%></td>
       <td><%=rs.getString("departing_to")%></td>
        <td><%=rs.getString("departing_date")%></td>
        <td><%=rs.getString("departureTime")%></td>
        <td><%=rs.getString("arrivalTime")%></td>
        <td><%=rs.getString("price")%></td>
        
        <td>
            <form action="updateFlight.jsp">
                <input type="hidden" name="flightID" value="<%=rs.getString("flightID")%>">
                <input class="button" type="submit" value="UPDATE" >
            </form>
        </td>
        <td>
            <form action="deleteFlightServlet" method="POST">
                <input type="hidden" name="flightID" value="<%=rs.getString("flightID")%>">
                <input class="button" type="submit" value="DELETE" >
            </form>
        </td> 
        </tr>  

<% }

}
catch(Exception e)
{
System.out.println(e);
}

%>

            </table>
       </center>
    </body>
</html>
