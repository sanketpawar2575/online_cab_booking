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
public class user_My_booking extends HttpServlet {

    Connection cn= null;
    Statement st=null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      
        Database db=new Database();
        String result =db.Connectdb();
        System.out.println(result);
        
        PrintWriter out = resp.getWriter();
         HttpSession session=req.getSession();
        
        String user_id = req.getParameter("user_id");
        String id = req.getParameter("id");
        String event = req.getParameter("submit");
        
        
        
        if(event.equals("track"))
        {
            session.setAttribute("id", id);
            session.setAttribute("user_id", user_id);
            
            resp.sendRedirect("user_track.jsp");
        }
        
        
        if(event.equals("cancel order"))
        {
                String delete=db.delete("delete from user_cab_booking where id='"+id+"'");
                out.println(delete);
                
                resp.setContentType("text/html");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('"+delete+"');");
                out.println("location='user_My_booking.jsp';");
                out.println("</script>");
        
        }
        
    }
}
