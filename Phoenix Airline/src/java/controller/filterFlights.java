package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "filterFlights", urlPatterns = {"/filterFlights"})
public class filterFlights extends HttpServlet {

   
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
        PrintWriter out = response.getWriter();
        response.setContentType("text/html;charset=UTF-8");

        String departingFrom = request.getParameter("departingForm");
        String destination =request.getParameter("destination");
        String departingDate = request.getParameter("departingDate");
        String passenger = request.getParameter("passenger");
        String cabinClass = request.getParameter("cabinClass");
        
      
        if(departingFrom.equals("")||destination.equals("")||departingDate.equals("")||passenger.equals("")||cabinClass.equals(""))
        {
            out.println("<html><script>");
            out.println("alert('please Check Again');");
            out.println("location='index.html'");
            out.println("</script></html>");
        }

        else
        {
            out.println("<html><script>");
            out.println("alert('Data has been uploaded!');");
            out.println("location='bookingFlight.html'");
            out.println("</script></html>");  
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
