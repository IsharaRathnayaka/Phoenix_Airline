package UpdateData;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "EditUser", urlPatterns = {"/EditUser"})
public class EditUser extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
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

         response.setContentType("text/html;charset=UTF-8");
           PrintWriter out = response.getWriter();
           int id=Integer.parseInt(request.getParameter("id"));
        String name=request.getParameter("name");
        String pass=request.getParameter("password");
        String copass=request.getParameter("copassword");
        String ukey=request.getParameter("ukey");
        String tele=request.getParameter("tele");
        String address=request.getParameter("address");
        String email=request.getParameter("email");
        
        UserCon st = new UserCon();
        if(st.userUpadateInfo(id,name,email,tele,ukey,pass,copass,address))
        {
                out.println("<html><script>");
                out.println("alert('Update successful!');");
                out.println("location='UserLogin.jsp'");
                out.println("</script></html>");  
        }
        else
        {
                out.println("<html><script>");
                out.println("alert('Update Failed!');");
                out.println("location='updateUser.jsp'");
                out.println("</script></html>"); 
        }
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
