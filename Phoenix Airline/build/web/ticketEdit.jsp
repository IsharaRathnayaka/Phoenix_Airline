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
        <title>Ticket Edit</title>
        <link href="CSS/BG.css" rel="stylesheet" type="text/css">
        <link href="CSS/Navigation.css" rel= "stylesheet" type="text/css">
        <link href="CSS/head_styles.css" rel="stylesheet" type="text/css">
        <link href="CSS/Button.css" rel="stylesheet" type="text/css">
        <link href="CSS/tableOut.css" rel="stylesheet" type="text/css">
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
            <li><a href="TicketView.jsp">Ticket View</a></li>
        </ul>
         
      <center>
           <p class="Head">Edit Flight Details</p> 
         <table id="flight">
          <tr>
            <th>Ticket ID</th>
            <th>Passenger Name</th>
            <th>Cabin Class</th>
            <th>Seat Type</th>
            <th>Seat Number</th>
            <th>Email</th>
            <th>Phone number</th>
            <th style="text-align: center;" >Update</th>
            <th style="text-align: center;">Delete</th>
            </tr>
            
            <tr> 
     <%   try
  {
DbCon db = new DbCon();
st  = db.Connection().createStatement();

String sql ="SELECT * FROM ticketdetails";
rs = st.executeQuery(sql);
while(rs.next()){

    %>

       <td><%=rs.getString("ticketID")%></td>
       <td><%=rs.getString("passengerName")%></td>
       <td><%=rs.getString("cabinClass")%></td>
        <td><%=rs.getString("seatType")%></td>
        <td><%=rs.getString("seatNum")%></td>
        <td><%=rs.getString("email")%></td>
        <td><%=rs.getString("phone")%></td>
        
        <td>
            <form action="updateTicket.jsp">
                <input type="hidden" name="ticketID" value="<%=rs.getString("ticketID")%>">
                <input class="button" type="submit" value="UPDATE" >
            </form>
        </td>
        <td>
            <form action="deleteTicketServlet" method="POST">
                <input type="hidden" name="ticketID" value="<%=rs.getString("ticketID")%>">
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
