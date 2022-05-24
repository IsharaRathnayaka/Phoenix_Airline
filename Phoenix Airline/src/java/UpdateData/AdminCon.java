package UpdateData;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

class AdminCon {
    Statement st;
    Connection con;
    boolean adminUpadateInfo(int id, String name, String email, String tele, String ukey, String pass, String copass, String address) {
        int state = 0;
         connectToDb();
        try
        {
          PreparedStatement ps =con.prepareStatement("UPDATE admin SET aname=?, akey=?, aemail=? , atele=? ,apass=?,acopass=?,aaddress=? WHERE aid=?");   
           ps.setInt(8, id); 
          ps.setString(1,name);
           ps.setString(3,email);
           ps.setString(4,tele);
           ps.setString(2,ukey);
            ps.setString(5,pass);
             ps.setString(6, copass);
             ps.setString(7,address);
            
           state = ps.executeUpdate();
        }
        catch(SQLException e)
               {
                    System.out.println(e);
               }
        return state == 1;
    
    }

    private void connectToDb() {
         try {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/phoenix_airline","root","");
            st=con.createStatement();
        } catch (ClassNotFoundException|SQLException ex) {
            Logger.getLogger(UserCon.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
