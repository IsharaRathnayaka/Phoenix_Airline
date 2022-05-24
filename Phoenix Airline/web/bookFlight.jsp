<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="model.DbCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Statement  st=null;
    ResultSet rs=null;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Flight</title>
        <link rel="stylesheet" type="text/css" href="bookFlight.css">
        <script type="text/javascript" src="nav.js"></script>
        <link rel="stylesheet" type="text/css" href="Navigation.css">
        <style>
            body{
    background-image: url('flights2.jpg');
    opacity: 0.9;
    background-size: cover;
    margin: 0px;
    padding: 0px;
    font-size: 20px;
        </style>
    </head>
    <body>
        <div class="nav" id="myTopnav">
		<a href="Home.html">Home</a>
                <a href="index.html">Flight</a>
                <a href="UserLogin.jsp">Login</a>
                <a href="javascript:void(0);" class="icon" onclick="myFunction()">
                    <i class="fa fa-bars"></i>
                </a>
	</div>
    <center>
    <h1 style="margin-left:15px;">Book your flight online</h1>
    <p style="margin-left:15px;"> You can book your flight tickets with Phoenix Airlines online from anywhere and from any device easily. We offer below payment options for your convenience.</p>
         <div class="container">
            
         <table id="flight">
          <tr>
            <th>Flight ID </th>
            <th>Departing From</th>
            <th>Destination</th>
            <th>Departing Date</th>
            <th>Departure Time</th>
            <th>Arrival Time</th>
            <th>Price($)</th>
            </tr><tr> 
              <%
  try
  {
DbCon db = new DbCon();
st  = db.Connection().createStatement();
String flightid= request.getParameter("flightID");

String sql ="SELECT * FROM flightdetails WHERE flightID='"+flightid+"'";
rs = st.executeQuery(sql);
while(rs.next()){

    %>
<tr>
       <td><%=rs.getString("flightID")%></td>
       <td><%=rs.getString("departing_from")%></td>
       <td><%=rs.getString("departing_to")%></td>
        <td><%=rs.getString("departing_date")%></td>
        <td><%=rs.getString("departureTime")%></td>
        <td><%=rs.getString("arrivalTime")%></td>
        <td><%=rs.getString("price")%></td>
        
        
</tr>  

         
 <b> <p style="margin-left:15px;">Your trip to <%=rs.getString("departing_to")%></p></b>
</table><br><br>
         </div>
<% }

}
catch(Exception e)
{
System.out.println(e);
}

%>
       
<p style="margin-left:15px;">Log in to book faster</p>
         <form action="flightPay" method="POST">
            <div class="container">
        <table  cellspacing="3" cellpadding="3">
            <tr>
                <td colspan="2"><b>Passenger details</b></td>
            </tr>
            <tr>
                <td>Passenger name</td>
                <td><input type="text" class="inputs" name="pname"></td>
            </tr>
            <tr>
                <td>Select your Cabin Class</td>
                <td><select class="select-field" name="cclass">
                    <option>First Class</option>
                    <option>Economy Class</option>
                    <option>Business Class</option>
                </select></td>
            </tr>
            <tr>
                <td>Choose your seat</td>
                <td><select class="select-field" name="stype">
                    <option>Window</option>
                    <option>Center</option>
                    <option>Aisle</option>
                </select></td>
            </tr>
            <tr>
                <td>Select your seat number</td>
                <td><input type="text" name="seatNo" class="inputs"></td>
            </tr>
            <tr><td colspan="2"></td></tr>
            <tr>
                <td colspan="2"><b>Contact details </b></td>
            </tr>
            <tr>
                <td>Email </td>
                <td><input type="email" name="email" class="inputs"></td>
            </tr>
            <tr>
                <td>Phone number </td>
                <td><input type="text" name="pnum" class="inputs"></td>
            </tr>
            <tr><td colspan="2"></td></tr>
            <tr>
                        <td colspan="2"><b>Payment details</b></td>
            </tr>
                       <tr>
                         <td>Payment Method </td>
                        <td><input type="radio" name="method" value="Credit/Debit card" />Credit/Debit card</br><br>
                            <input type="radio" name="method" value="Cash deposit or online payment" />Cash deposit or online payment</br><br>
                            <input type="radio" name="method" value="Digital Wallet payment " />Digital Wallet payment </br><br>
                        </td>
                        </tr>  
                    <tr>
                        <td> Card number   </td>
                        <td><input type="text" class="inputs" name="cno"></td>
                    </tr>
                     <tr>
                        <td>Card Verification Value</td>
                        <td><input type="password" class="inputs" name="cvv"></td>
                    </tr>
                    <tr>
                        <td><input type="reset" value="CANCEL" /></td>
                        <td><input type="submit" value="CONFIRM" /></td>
                    </tr>
                
            </table>
            </div>
        </form>
    </center>
    </body> 
</html>
