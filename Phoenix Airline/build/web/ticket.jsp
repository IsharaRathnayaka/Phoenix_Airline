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
        <title>Ticket details</title>
        <link href="CSS/tableOut.css" rel="stylesheet" type="text/css" >
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
            <li><a href="TicketView.jsp">Check Again</a></li>
        </ul>
        
         <p class="Head">Your Ticket Details</p>
        
      <div class="container">
          <table class="cen" id="flight" >
          <tr>
            <th>Ticket ID </th>
            <th>Passenger Name</th>
            <th>Cabin Class</th>
            <th>Seat Type</th>
            <th>Seat Number</th>
            <th>Email</th>
            <th>Phone number</th>
            </tr>
            
            <tr> 
     <%   try
  {
DbCon db = new DbCon();
st  = db.Connection().createStatement();
int ID =Integer.parseInt(request.getParameter("ticketID"));
String sql ="SELECT * FROM ticketdetails WHERE  ticketID ="+ID+"";
rs = st.executeQuery(sql);
while(rs.next()){

    %>

       <td><%=rs.getString("ticketID")%></td>
       <td><%=rs.getString("passengerName")%></td>
       <td><%=rs.getString("cabinnClass")%></td>
        <td><%=rs.getString("seatType")%></td>
        <td><%=rs.getString("seatNum")%></td>
        <td><%=rs.getString("email")%></td>
        <td><%=rs.getString("phone")%></td>
            </tr>
            <% }

}
catch(Exception e)
{
e.printStackTrace();
}

%>

</table>
         </div>

    </body>
</html>
