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

/**
 *
 * @author Shubham Patil
 */
public class admin_login extends HttpServlet {

     Connection cn= null;
    Statement st=null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       Database db=new Database();
        String result =db.Connectdb();
        
          PrintWriter out = resp.getWriter();
          
        String username= req.getParameter("username");
        String password= req.getParameter("password");
         String event= req.getParameter("submit");
        
        out.println(username);
        out.println(password);
        
        if(event.equals("LogIn"))
        {
            if(username.equals("")||password.equals(""))
            {
                 resp.setContentType("text/html");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('some fields are empty !');");
                out.println("location='admin_login.jsp';");
                out.println("</script>");
            }
            else
            {
                try
                {
                    if(username.equals("Admin") && password.equals("123"))
                    {
                        resp.sendRedirect("admin_Total_journey.jsp");
                    }
                    else
                     {
                        resp.setContentType("text/html");
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('Incorrent UserId and Password !');");
                        out.println("location='admin_login.jsp';");
                        out.println("</script>");
                    }
                   
                }
                catch(Exception ex)
                {
                    resp.setContentType("text/html");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('"+ex.toString()+"');");
                out.println("location='admin_login.jsp';");
                out.println("</script>");
                }
            }
         }
      }
        
        
   }

