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

@WebServlet(name = "UserLogin", urlPatterns = {"/UserLogin"})
public class UserLogin extends HttpServlet {

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
            int id=Integer.parseInt(request.getParameter("id"));
            String pass=request.getParameter("pass");
            boolean status=false;
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/phoenix_airline","root","");
            PreparedStatement ps=con.prepareStatement("SELECT uid,upass,uname FROM user WHERE uid=? AND upass=?");
            
            ps.setInt(1, id);
            ps.setString(2, pass);
            
            ResultSet rs=ps.executeQuery();
             while(rs.next()) {
			status=true;
		}
             if(status==true){
                
                 RequestDispatcher rd=request.getRequestDispatcher("UserPage.jsp");
                 rd.forward(request, response);
                 HttpSession session=request.getSession();
                 session.setAttribute("pass",pass);
             }else{
                 RequestDispatcher rd=request.getRequestDispatcher("UserLogin.jsp");
                 rd.forward(request, response);
             }
		RequestDispatcher rd=request.getRequestDispatcher("EditProfileUser.jsp");
                 rd.forward(request, response);
                 RequestDispatcher rd1=request.getRequestDispatcher("Ucheck.jsp");
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
