<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Statement  st=null;
    ResultSet rs=null;
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/phoenix_airline","root","");
%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Profiles</title>
        
        <link href="CSS/Form.css" rel="stylesheet" type="text/css">
        <link href="CSS/Navigation.css" rel= "stylesheet" type="text/css">
        <link href="CSS/head_styles.css" rel="stylesheet" type="text/css">
        <link href="CSS/Button.css" rel="stylesheet" type="text/css">
        <link href="CSS/tableOut.css" rel="stylesheet" type="text/css" >
        <link href="CSS/AProfile.css" rel="stylesheet" type="text/css" >
        
        <style>
            body{
                background-image: url('CSS/BG_pictures/BG2.jpg');
            }
        </style>
        
        
 
    </head>
    <body>
        
        <ul>
            <li><a class="active" href="Home.html">Home</a></li>
            <li><a href="AdminPage.html">Your Profile</a></li>
        </ul>
        
       
    <center>
        <p class="Head">Admin Profiles</p>
        
            <table  id="flight">
          <tr>
            <th>Admin ID </th>
            <th> Name</th>
            <th>NIC number</th>
            <th>Email</th>
            <th>Contact</th>
            <th>PassWord</th>
            <th>Address</th>
            </tr>
            <tr> 
     <%   try
  {

st=con.createStatement();

String sql ="SELECT * FROM admin";
rs = st.executeQuery(sql);
while(rs.next()){

    %>

       <td><%=rs.getInt("aid")%></td>
       <td><%=rs.getString("aname")%></td>
       <td><%=rs.getString("akey")%></td>
        <td><%=rs.getString("aemail")%></td>
        <td><%=rs.getString("atele")%></td>
        <td><%=rs.getString("apass")%></td>
        <td><%=rs.getString("aaddress")%></td>
        
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
</center>
    </body>
</html>
