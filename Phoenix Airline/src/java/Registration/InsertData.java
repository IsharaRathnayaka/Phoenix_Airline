
package Registration;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

class InsertData {

/////////////////////////////////////////////create connection mysql database "phoenix_airline"///////////////////////////////////////
    Statement st;
    private void connectToDb() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/phoenix_airline","root","");
            st=con.createStatement();
        } catch (ClassNotFoundException|SQLException ex) {
            Logger.getLogger(InsertData.class.getName()).log(Level.SEVERE, null, ex);
        }
    }


//////////////////////////////////////upload staff info to database//////////////////////////////////

    void staffAddInfo(String ukey, String name, String email, String tele, String pass, String copass, String address) {
        try {
            connectToDb();
            String sql2="INSERT INTO staff(sname,skey,semail,stele,spass,scopass,saddress) VALUES('"+name+"','"+ukey+"','"+email+"','"+tele+"','"+pass+"','"+copass+"','"+address+"');";
            st.executeUpdate(sql2);
        } catch (SQLException ex) {
            Logger.getLogger(InsertData.class.getName()).log(Level.SEVERE, null, ex);
        }
    }


//////////////////////////////////////upload admin info to database////////////////////////////////////
    void adminAddInfo(String ukey, String name, String email, String tele, String pass, String copass, String address) {
        try {
            connectToDb();
            String sql3="INSERT INTO admin(aname,akey,aemail,atele,apass,acopass,aaddress) VALUES('"+name+"','"+ukey+"','"+email+"','"+tele+"','"+pass+"','"+copass+"','"+address+"');";
            st.executeUpdate(sql3);
        } catch (SQLException ex) {
            Logger.getLogger(InsertData.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

//////////////////////////////////////////upload user info to database/////////////////////////////////

   void userAddInfo(String ukey,String name, String email, String tele, String pass, String copass, String address) {
        try {
            connectToDb();
            String sql1="INSERT INTO user(uname,ukey,uemail,utele,upass,ucopass,uaddress) VALUES('"+name+"','"+ukey+"','"+email+"','"+tele+"','"+pass+"','"+copass+"','"+address+"');";
            st.executeUpdate(sql1);
        } catch (SQLException ex) {
            Logger.getLogger(InsertData.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
