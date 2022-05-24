
package CheckProfilePackage;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "CheckProfile", urlPatterns = {"/CheckProfile"})
public class CheckProfile extends HttpServlet {


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
        
        PrintWriter out=response.getWriter();
        String ctype=request.getParameter("ptype");
        if(ctype.equals("user")){
            response.sendRedirect("Ucheck.jsp");
        }else if(ctype.equals("staff")){
            response.sendRedirect("Scheck.jsp");
        }else{
                    out.println("<html><script>");
                    out.println("alert('Invalid data input');");
                    out.println("location='CheckProfile.html'");
                    out.println("</script></html>");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
