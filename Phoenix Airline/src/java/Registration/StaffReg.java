package Registration;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "StaffRegServlet", urlPatterns = {"/StaffRegServlet"})
public class StaffReg extends HttpServlet {


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
        //processRequest(request, response);
         PrintWriter out=response.getWriter();
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String tele=request.getParameter("tele");
        String ukey=request.getParameter("ukey");
        String pass=request.getParameter("password");
        String copass=request.getParameter("copassword");
        String address=request.getParameter("address");
        if(name.equals("")||email.equals("")||tele.equals("")||ukey.equals("")||pass.equals("")||copass.equals("")||address.equals("")){
                
                out.println("<html><script>");
                out.println("alert('warning ! all fields must be filled');");
                out.println("location='StaffReg.html'");
                out.println("</script></html>");

        }
        else{
            if(copass.equals(pass)){

                InsertData SR=new InsertData();
                SR.staffAddInfo(ukey,name,email,tele,pass,copass,address);

                out.println("<script>");
                out.println("alert('Registration successful !');");
                out.println("location='Home.html'");
                out.println("</script>");

            }
                else{

                out.println("<html><script>");
                out.println("alert('The password confirmation is incorrect!');");
                out.println("location='StaffReg.html'");
                out.println("</script></html>");
                   
            }
        }
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
