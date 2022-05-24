
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.addTicket;


@WebServlet(name = "flightPay", urlPatterns = {"/flightPay"})
public class flightPay extends HttpServlet {

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
        PrintWriter out=response.getWriter();
        //processRequest(request, response);
        response.setContentType("text/html;charset=UTF-8");
        String pname = request.getParameter("pname");
        String cclass = request.getParameter("cclass");
        String stype = request.getParameter("stype");
        String seatNo = request.getParameter("seatNo");
        String email = request.getParameter("email");
        int phonenum = Integer.parseInt(request.getParameter("pnum"));
        String method = request.getParameter("method");
        String cno = request.getParameter("cno");
        
        if(pname.equals("")||cclass.equals("")||stype.equals("")||seatNo.equals("")||email.equals("")||method.equals("")||cno.equals("")){

           response.sendRedirect("bookFlight.jsp");
        }
        else{
            addTicket at = new addTicket(); 
            at.addTicketInfo(pname,cclass,stype,seatNo,email,phonenum,method,cno);
            out.println("<html><script>");
            out.println("alert('Done !');");
            out.println("location='confirm.jsp'");
            out.println("</script></html>"); 
          
        }
        
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
