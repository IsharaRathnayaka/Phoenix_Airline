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
import javax.servlet.http.HttpSession;

@WebServlet(name = "StaffLogin", urlPatterns = {"/StaffLogin"})
public class StaffLogin extends HttpServlet {

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
           
          
            int id=Integer.parseInt(request.getParameter("staffid"));
            String pass=request.getParameter("staffpass");
            boolean status=false;
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/phoenix_airline","root","");
            PreparedStatement ps=con.prepareStatement("SELECT sid,spass,sname FROM staff WHERE sid=? AND spass=?");
            
            ps.setInt(1, id);
            ps.setString(2, pass);
            
            ResultSet rs=ps.executeQuery();
             while(rs.next()) {
			status=true;
		}
             if(status==true){
                
                 RequestDispatcher rd=request.getRequestDispatcher("staff.html");
                 rd.forward(request, response);
                 HttpSession session=request.getSession();
                 session.setAttribute("pass",pass);
             }else{
                 RequestDispatcher rd=request.getRequestDispatcher("StaffLogin.html");
                 rd.forward(request, response);
             }
		RequestDispatcher rd=request.getRequestDispatcher("EditProfileStaff.jsp");
                 rd.forward(request, response);
                 RequestDispatcher rd1=request.getRequestDispatcher("Scheck.jsp");
                 rd1.forward(request, response);
             
          
        } catch (ClassNotFoundException|SQLException ex) {
            Logger.getLogger(UserLogin.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
