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
public class user_driver_fpassword extends HttpServlet {
    Connection cn= null;
    Statement st=null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         Database db=new Database();
        String result =db.Connectdb();
        System.out.println(result);
        
         PrintWriter out = resp.getWriter();
          
        String username= req.getParameter("username");
        String email= req.getParameter("email");
        String otp= req.getParameter("otp");
         String Rpassword= req.getParameter("Rpassword");
          String cpassword= req.getParameter("cpassword");
          String event= req.getParameter("submit");
        
        out.println(username);
         out.println(email);
          out.println(otp);
          out.println(Rpassword);
          out.println(cpassword);
          
             if(event.equals("Reset"))
        {
            if(username.equals("")||email.equals("")||otp.equals("")||Rpassword.equals("")||cpassword.equals(""))
            {
                resp.setContentType("text/html");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('some fields are empty !');");
                out.println("location='user_driver_fpassword.jsp';");
                out.println("</script>");
            }
            else
            {
                
                try
                {
                String insert=db.Insert("insert into user_driver_fpassword(username,email,otp,Rpassword,cpassword) values('"+username.toString()+"','"+email.toString()+"','"+otp.toString()+"','"+Rpassword.toString()+"','"+cpassword.toString()+"')");
                out.println(insert);
                
                resp.setContentType("text/html");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('"+insert+"');");
                out.println("location='user_driver_fpassword.jsp';");
                out.println("</script>");
                }
                catch(Exception ex)
                {
                   resp.setContentType("text/html");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('"+ex.toString()+"');");
                out.println("location='user_driver_fpassword.jsp';");
                out.println("</script>");
                }
            }
        }
          
          
          
    }

}