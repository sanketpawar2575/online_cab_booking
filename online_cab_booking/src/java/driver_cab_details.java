/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Shubham Patil
 */
public class driver_cab_details extends HttpServlet {
 Connection cn= null;
    Statement st=null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       Database db=new Database();
        String result =db.Connectdb();
        System.out.println(result);
        
        PrintWriter out = resp.getWriter();
        HttpSession session=req.getSession();
        
          
        String cabno= req.getParameter("cabno");
        String cabtype= req.getParameter("cabtype");
        String noofseats= req.getParameter("noofseats");
         String event= req.getParameter("submit");
        
        
        out.println(cabno);
        out.println(cabtype);
        out.println(noofseats);
        
         if(event.equals("Submit"))
        {
            if(cabno.equals("")||cabtype.equals("")||noofseats.equals(""))
            {
                resp.setContentType("text/html");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('some fields are empty !');");
                out.println("location='driver_cab_details.jsp';");
                out.println("</script>");
            }
            else
            {
                try
                {
                String insert=db.Insert("insert into driver_cab_details(cab_no,cab_type,no_of_seats,driver_name) values('"+cabno.toString()+"','"+cabtype.toString()+"','"+noofseats.toString()+"','"+session.getAttribute("name")+"')");
                out.println(insert);
                
                resp.setContentType("text/html");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('"+insert+"');");
                out.println("location='driver_login.jsp';");
                out.println("</script>");
                }
                catch(Exception ex)
                {
                    resp.setContentType("text/html");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('"+ex.toString()+"');");
                out.println("location='driver_cab_details.jsp';");
                out.println("</script>");
                }
            }
        }
         
    }
}
