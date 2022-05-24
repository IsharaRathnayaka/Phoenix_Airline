package CheckProfilePackage;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Scheck", urlPatterns = {"/Scheck"})
public class Scheck extends HttpServlet {

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
        String sid=request.getParameter("sid");
        String semail=request.getParameter("semail");
        
        if(sid.equals("")||semail.equals("")){
                    out.println("<html><script>");
                    out.println("alert('A field is empty...All the fields must be filled');");
                    out.println("location='CheckProfile.html'");
                    out.println("</script></html>");
        }else{
            RequestDispatcher rd=request.getRequestDispatcher("Scheck.jsp");
            rd.forward(request, response);
        }
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
