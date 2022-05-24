package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.DelateUpdate;

@WebServlet(name = "updateTicket", urlPatterns = {"/updateTicket"})
public class updateTicket extends HttpServlet {

   
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
        
        PrintWriter out = response.getWriter();
        response.setContentType("text/html;charset=UTF-8");
        String ticketID = request.getParameter("ticketID");
        String pname = request.getParameter("pname");
        String cclass = request.getParameter("cclass");
        String stype = request.getParameter("stype");
        String seatNo = request.getParameter("seatNo");
        String email = request.getParameter("email");
        String pnum = request.getParameter("pnum");
        DelateUpdate st = new DelateUpdate();
        if(st.updateTicket(ticketID,pname,cclass,stype,seatNo,email,pnum))
        {
            out.println("Success!!!!");
            RequestDispatcher rd = request.getRequestDispatcher("grade1ticket.jsp");
            rd.include(request,response);
        }
        else
        {
            out.println("Update Failed!!!!");
            RequestDispatcher rd = request.getRequestDispatcher("grade1ticket.jsp");
            rd.include(request,response);
        }
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
