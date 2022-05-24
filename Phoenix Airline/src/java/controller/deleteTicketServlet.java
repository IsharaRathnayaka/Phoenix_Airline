package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.DelateUpdate;


@WebServlet(name = "deleteTicketServlet", urlPatterns = {"/deleteTicketServlet"})
public class deleteTicketServlet extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet deleteTicketServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet deleteTicketServlet at " + request.getContextPath() + "</h1>");
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
        String  ticketID= request.getParameter("ticketID");
         DelateUpdate st = new DelateUpdate();
         if(st.deleteTicket(ticketID))
         {
            out.println("<html><script>");
            out.println("alert('Deleted!');");
            out.println("location='ticket.jsp'");
            out.println("</script></html>"); 
         }
         else
         {
            out.println("<html><script>");
            out.println("alert('Failed!');");
            out.println("location='ticket.jsp'");
            out.println("</script></html>");  
         }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
