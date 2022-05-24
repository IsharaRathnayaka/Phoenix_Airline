package Ticket;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


class Ticket {
    Statement st;
    List viewTicket(String search) {
        connectToDb();
        String sql3="SELECT *FROM ticketID WHERE ticketno LIKE '%"+search+"%'";
        List ticketlist=new ArrayList();
        try {
            ResultSet rs=st.executeQuery(sql3);
            while(rs.next()){
                ticketlist.add(rs.getInt("ticketID"));
                ticketlist.add(rs.getInt("passengerName"));
                ticketlist.add(rs.getString("cabinClass"));
                ticketlist.add(rs.getString("seatType"));
                ticketlist.add(rs.getString("seatNum"));
                ticketlist.add(rs.getString("email"));
                ticketlist.add(rs.getString("phone"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(Ticket.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ticketlist;
    }

    private void connectToDb() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/phoenix_airline","root","");
            st=con.createStatement();
        } catch (ClassNotFoundException|SQLException ex) {
            Logger.getLogger(Ticket.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
