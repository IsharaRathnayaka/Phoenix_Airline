package Home;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "HomePage", urlPatterns = {"/HomePage"})
public class HomePage extends HttpServlet {


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


        String pos=(request.getParameter("type").toLowerCase());

        if(pos.equals("user")){
            response.sendRedirect("UserLogin.jsp");
        }else if(pos.equals("staff")){
            response.sendRedirect("StaffLogin.html");
        }else if(pos.equals("admin")){
            response.sendRedirect("AdminLogin.html");
        }

    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
