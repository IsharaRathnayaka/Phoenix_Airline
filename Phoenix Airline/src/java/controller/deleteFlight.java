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

@WebServlet(name = "deleteFlight", urlPatterns = {"/deleteFlight"})
public class deleteFlight extends HttpServlet {

 
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
        String  flightID= request.getParameter("flightID");
         DelateUpdate st = new DelateUpdate();
         if(st.deleteFlight(flightID))
         {
             out.println("Successfully Deleted!!");
             RequestDispatcher rd = request.getRequestDispatcher("grade1staff.jsp");
            rd.include(request,response);
         }
         else
         {
             out.println("Failed!!");
             RequestDispatcher rd = request.getRequestDispatcher("grade1staff.jsp");
            rd.include(request,response);
         }
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
