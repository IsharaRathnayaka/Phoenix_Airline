package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.DelateUpdate;

@WebServlet(name = "updateFlight", urlPatterns = {"/updateFlight"})
public class updateFlight extends HttpServlet {

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
        String flightID = request.getParameter("flightID");
        String departingFrom = request.getParameter("departingFrom");
        String departingTo = request.getParameter("departingTo");
        String departingDate = request.getParameter("departingDate");
        String departureTime = request.getParameter("departureTime");
        String arrivalTime = request.getParameter("arrivalTime");
        String price = request.getParameter("price");
        
        DelateUpdate st = new DelateUpdate();
        if(st.updateFlight(flightID,departingFrom,departingTo,departingDate,departureTime,arrivalTime,price))
        {
            out.println("<html><script>");
            out.println("alert('Done!');");
            out.println("location='flightDetails.jsp'");
            out.println("</script></html>"); 
        }
        else
        {
            out.println("<html><script>");
            out.println("alert('Done!');");
            out.println("location='updateFlight.jsp'");
            out.println("</script></html>");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
