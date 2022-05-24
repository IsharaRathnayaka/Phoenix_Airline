<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Profile Check</title>
        
        <link href="CSS/Form.css" rel="stylesheet" type="text/css">
        <link href="CSS/Navigation.css" rel= "stylesheet" type="text/css">
        <link href="CSS/head_styles.css" rel="stylesheet" type="text/css">
        <link href="CSS/Button.css" rel="stylesheet" type="text/css">
         <link href="CSS/tableOut.css" rel="stylesheet" type="text/css">
        
          <style>
            body{
             background-image: url('CSS/BG_pictures/BG3.jpg');
            }
        </style>
        
    </head>
    <body>
        <ul>
            <li><a class="active" href="Home.html">Home</a></li>
            <li><a href="UserLogin.jsp">Login</a></li>
        </ul>
    <center>
        <p class="Head">User Profile Check</p>

        <form action="Ucheck" method="POST" >
            <table cellspacing="9">
                    <tr>
                        <td class="select">User ID:</td>
                        <td><input class="inputs" type="text" name="uid" value="" /></td>
                    </tr>
                    <tr>
                        <td class="select">User email:</td>
                        <td><input class="inputs" type="email" name="uemail" value="" /></td>
                    </tr>
                    <tr>
                        <td><input class="button" type="submit" value="SUBMIT" /></td>
                        <td><input class="button" type="reset" value="CLEAR" /></td>
                    </tr>
            </table>
        </form>
    </center>
    <%
        
            String uid=request.getParameter("uid");
            String uemail=request.getParameter("uemail");
            long lastTime=session.getLastAccessedTime();
            String raddress=request.getRemoteAddr();
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/phoenix_airline","root","");
            Statement st=con.createStatement();
            String select="SELECT * FROM user WHERE uid="+uid+" AND uemail='"+uemail+"'";
            ResultSet rs=st.executeQuery(select);
            while(rs.next()){%>
            <center>
            <table id="flight1">
                <tr>
                    <th style="text-align: center;">Name</th>
                    <th style="text-align: center;">Details</th>
                </tr>
                <tr>
                    <td class="select">User ID:</td>
                    <td class="select"><%out.println(rs.getInt(1));%></td>
                </tr>
                <tr>
                    <td class="select">User name:</td>
                    <td class="select"><%out.println(rs.getString(2));%></td>
                </tr>
                <tr>
                    <td class="select">User NIC number:</td>
                    <td class="select"><%out.println(rs.getString(3));%></td>
                </tr>
                <tr>
                    <td class="select">User email:</td>
                    <td class="select"><%out.println(rs.getString(4));%></td>
                </tr>
                <tr>
                    <td class="select">User Contact Number:</td>
                    <td class="select"><%out.println(rs.getString(5));%></td>
                </tr>
                <tr>
                    <td class="select">User Address:</td>
                    <td class="select"><%out.println(rs.getString(8));%></td>
                </tr>
                <tr>
                    <td class="select">User Last Accessed Time:</td>
                    <td class="select"><%out.println(lastTime);%></td>
                </tr>
                <tr>
                    <td class="select">User IP Address:</td>
                    <td class="select"><%out.println(raddress);%></td>
                </tr>
            </table>
            </center>
            <%}
        %>
    </body>
</html>