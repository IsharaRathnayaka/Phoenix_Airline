package model;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DelateUpdate {
 DbCon con = new DbCon();
     int state = 0;
    public boolean updateFlight(String flightID,String departingFrom, String departingTo, String departingDate, String departureTime, String arrivalTime, String price) {
        try
        {
          PreparedStatement ps = con.Connection().prepareStatement("UPDATE flightdetails SET departing_from=?, departing_to=?, departing_date=? , departureTime=? ,arrivalTime=?,price=? WHERE flightID=?");   
           ps.setString(1,departingFrom);
           ps.setString(2,departingTo);
           ps.setString(3,departingDate);
           ps.setString(4,departureTime);
            ps.setString(5,arrivalTime);
             ps.setString(6, price);
             ps.setString(7,flightID);
           state = ps.executeUpdate();
        }
        catch(ClassNotFoundException | SQLException e)
               {
                 System.out.println(e);
               }
        return state == 1;
    
    }

    public boolean deleteFlight(String flightID) {
        try
      {
          PreparedStatement ps = con.Connection().prepareStatement("DELETE FROM flightdetails WHERE flightID=?");
          ps.setString(1, flightID);
          state = ps.executeUpdate();
      }
       catch(ClassNotFoundException | SQLException e)
               {
                 System.out.println(e);  
               }
        return state == 1;
    }

    public boolean updateTicket(String ticketID, String pname, String cclass, String stype, String seatNo, String email, String pnum) {
     try
        {
          PreparedStatement ps = con.Connection().prepareStatement("UPDATE ticketdetails SET passengerName=?, cabinClass=?, seatType=? ,  seatNum=? ,email=?,phone=? WHERE ticketID=?");   
           ps.setString(1,pname);
           ps.setString(2,cclass);
           ps.setString(3,stype);
           ps.setString(4, seatNo);
            ps.setString(5,email);
             ps.setString(6, pnum);
             ps.setString(7,ticketID);
           state = ps.executeUpdate();
        }
        catch(ClassNotFoundException | SQLException e)
               {
                 System.out.println(e);  
               }
        return state == 1;
    
    }

    public boolean deleteTicket(String ticketID) {
        try
      {
          PreparedStatement ps = con.Connection().prepareStatement("DELETE FROM ticketdetails WHERE ticketID=?");
          ps.setString(1, ticketID);
          state = ps.executeUpdate();
      }
       catch(ClassNotFoundException | SQLException e)
               {
                 System.out.println(e);   
               }
        return state == 1;
    }
    
}
