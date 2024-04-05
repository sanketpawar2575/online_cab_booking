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
public class driver_confirmation extends HttpServlet {

  Connection cn= null;
    Statement st=null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       Database db=new Database();
        String result =db.Connectdb();
        System.out.println(result);
        
        PrintWriter out = resp.getWriter();
        HttpSession session=req.getSession();
        
        
        String status=req.getParameter("status");
        String event=req.getParameter("submit");
        String booking_id=req.getParameter("booking_id");
        
        out.println(status);
        
        
         if(event.equals("change status"))
        {
            if(status.equals(""))
            {
                resp.setContentType("text/html");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('some fields are empty !');");
                out.println("location='driver_confirmation.jsp';");
                out.println("</script>");
            }
            else
            {
                try
                {
               
                String update = db.update("update user_cab_booking set status='"+status.toString()+"' where id='"+booking_id+"' ");
                out.println(update);
                
                resp.setContentType("text/html");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('"+update+"');");
                out.println("location='driver_confirmation.jsp';");
                out.println("</script>");
                }
                catch(Exception ex)
                {
                   out.println(ex.toString());
                }
               
            }
        }
    }
}


