package model;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class addTicket {
     DbCon con = new DbCon();
     int state = 0; 
    public boolean addTicketInfo(String pname, String cclass, String stype, String seatNo, String email, int phonenum, String method, String cno) {
         try
       {
           PreparedStatement ps = con.Connection().prepareStatement("INSERT INTO ticketdetails(passengerName,cabinClass,seatType,seatNum,email,phone)VALUES(?,?,?,?,?,?)");
           ps.setString(1,pname);
           ps.setString(2,cclass);
           ps.setString(3,stype);
           ps.setString(4,seatNo);
           ps.setString(5,email);
           ps.setInt(6,phonenum);
           state = ps.executeUpdate();
       }
       catch(ClassNotFoundException | SQLException e)
               {
                 System.out.println(e);  
               }
        return state == 1;
    }
    
}
