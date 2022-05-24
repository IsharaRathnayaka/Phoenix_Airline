package Login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "AdminLoginServvlet", urlPatterns = {"/AdminLoginServvlet"})
public class AdminLogin extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("</body>");
            out.println("</html>");
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            
            PrintWriter out=response.getWriter();
            int id=Integer.parseInt(request.getParameter("adminid"));
            String pass=request.getParameter("adminpass");
            boolean status=false;
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/phoenix_airline","root","");
            PreparedStatement ps=con.prepareStatement("SELECT aid,apass,aname FROM admin WHERE aid=? AND apass=?");
            
            ps.setInt(1, id);
            ps.setString(2, pass);
            
            ResultSet rs=ps.executeQuery();
             while(rs.next()) {
			status=true;
		}
            if(status==true){
                
                 RequestDispatcher rd=request.getRequestDispatcher("AdminPage.html");
                 rd.forward(request, response);
             }
            else{
                out.println("<html><script>");
                out.println("alert('Please check again your password and id');");
                out.println("location='AdminLogin.html'");
                out.println("</script></html>");         
             }
             
          
        } catch (ClassNotFoundException|SQLException ex) {
            Logger.getLogger(StaffLogin.class.getName()).log(Level.SEVERE, null, ex);
        }
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
